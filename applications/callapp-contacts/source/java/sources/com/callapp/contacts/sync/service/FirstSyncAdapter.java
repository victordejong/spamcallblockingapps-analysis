package com.callapp.contacts.sync.service;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.C0745g;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.sync.Synchronizers;
import com.callapp.contacts.sync.model.SyncContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.workers.BirthdayDailyWorker;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/FirstSyncAdapter.class */
public class FirstSyncAdapter extends BaseSyncAdapter {

    /* renamed from: f */
    private int f27604f;

    /* renamed from: e */
    private boolean f27603e = false;

    /* renamed from: g */
    private String f27605g = Activities.getString(2131887767);

    public FirstSyncAdapter(Context context) {
        super(context);
    }

    /* renamed from: a */
    private void m27763a(int i, int i2, boolean z) {
        NotificationManager notificationManager = NotificationManager.get();
        notificationManager.m28578a(9);
        if (i > 0 || z) {
            C0745g.C0751e m28575a = notificationManager.m28575a(i, i2, z, String.format(this.f27605g, Integer.valueOf(i2), Integer.valueOf(i)));
            RealSyncService service = getService();
            Notification m44569b = m28575a.m44569b();
            if (Build.VERSION.SDK_INT >= 29) {
                service.startForeground(8, m44569b, 1);
            } else {
                service.startForeground(8, m44569b);
            }
            notificationManager.m28573a(8, m28575a);
        }
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    protected final List<Syncer> mo27759a(SyncContext syncContext) {
        StringBuilder sb = new StringBuilder("Syncers:");
        List<Synchronizers> syncers = Synchronizers.getSyncers();
        ArrayList arrayList = new ArrayList();
        for (Synchronizers synchronizers : syncers) {
            Syncer syncer = synchronizers.syncer;
            sb.append(StringUtils.SPACE);
            sb.append(syncer.getName());
            syncer.init(syncContext);
            if (!syncer.shouldSync() || synchronizers.syncConfig == Synchronizers.SyncConfig.onlyFull) {
                sb.append(" (skipped)");
            } else {
                arrayList.add(syncer);
            }
            sb.append(",");
        }
        CLog.m27611a(FirstSyncAdapter.class, sb.substring(0, sb.length() - 1));
        return arrayList;
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    protected final void mo27764a(int i, int i2) {
        if (!this.f27603e && i > this.f27604f) {
            m27763a(i2, i, false);
        }
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    public final void mo27762a(boolean z) {
        super.mo27762a(z);
        if (this.f27591b > this.f27604f) {
            this.f27604f = this.f27591b;
            Prefs.f26318bp.set(Integer.valueOf(this.f27591b));
        }
        if (z) {
            try {
                Date date = Prefs.f26319bq.get();
                Prefs.f26320br.set(new Date());
                if (date != null) {
                    long time = (new Date().getTime() - date.getTime()) / 1000;
                    AnalyticsManager.get().mo28444a(Constants.SYNCERS, "UPDATED First sync time (seconds)", (String) null, (int) time, new String[0]);
                    Prefs.f26321bs.set(Long.valueOf(time));
                    Prefs.f26323bu.set(Integer.valueOf((int) (PowerUtils.m27427b(getContext()) * 100.0f)));
                    Integer num = Prefs.f26322bt.get();
                    Integer num2 = Prefs.f26323bu.get();
                    if (num != null && num2 != null) {
                        AnalyticsManager.get().mo28444a(Constants.SYNCERS, "Battery loss during sync", (String) null, num.intValue() - num2.intValue(), new String[0]);
                    }
                } else {
                    AnalyticsManager.get().m28449a(Constants.SYNCERS, "UPDATED First sync time (seconds) - start time empty", (String) null);
                }
            } catch (RuntimeException e) {
                CLog.m27608a(FirstSyncAdapter.class, e, "FirstSyncAdapter failed to send analytics");
            }
        }
        RealSyncService service = getService();
        if (z) {
            if (!Prefs.f26316bn.get().booleanValue()) {
                m27765e();
                Prefs.f26316bn.set(Boolean.TRUE);
            }
        } else if (!HttpUtils.m26985a()) {
            service.stopForeground(true);
            NotificationManager notificationManager = NotificationManager.get();
            String string = Activities.getString(2131887761);
            notificationManager.m28578a(9);
            C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
            C0745g.C0751e m44571a = m28557a.m44567b(string).m44571a(Activities.m27697a(2131887763, Prefs.f26318bp.get(), Prefs.f26317bo.get()));
            m44571a.m44579a(2, false);
            m44571a.m44581a(2131231569);
            Intent intent = new Intent(Singletons.get().getApplication(), ContactsListActivity.class);
            intent.putExtra("from_sync_progress", true);
            intent.putExtra("sync_progress_no_internet", true);
            NotificationManager.m28552a((Object) ContactsListActivity.class, intent, m28557a, 0, false);
            notificationManager.m28573a(8, m28557a);
        } else {
            Singletons.get().getExceptionManager().isInternetIsDown();
            service.stopForeground(true);
            NotificationManager.get().m28578a(8);
        }
        BirthdayDailyWorker.f29568a.m26184a();
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    public final boolean mo27760a(Context context) {
        boolean mo27760a = super.mo27760a(context);
        this.f27603e = mo27760a;
        if (!mo27760a) {
            this.f27603e = !HttpUtils.m26985a();
        }
        if (!this.f27603e && this.f27590a && !PowerUtils.m27430a(context)) {
            float m27427b = PowerUtils.m27427b(context);
            if (m27427b < 0.2f && m27427b > BitmapDescriptorFactory.HUE_RED) {
                CLog.m27611a(FirstSyncAdapter.class, "Battery low, terminating sync...");
                this.f27603e = true;
            }
        }
        return this.f27603e;
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: b */
    public final void mo27761b() {
        super.mo27761b();
        this.f27604f = Prefs.f26318bp.get().intValue();
        if (Prefs.f26319bq.get() == null) {
            Prefs.f26319bq.set(new Date());
            Prefs.f26322bt.set(Integer.valueOf((int) (PowerUtils.m27427b(getContext()) * 100.0f)));
        }
        m27763a(0, 0, true);
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: c */
    protected final void mo27758c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28443a(Constants.REGISTRATION, "Sync started " + getClass(), (String) null, 0L);
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: d */
    protected final void mo27757d() {
    }
}
