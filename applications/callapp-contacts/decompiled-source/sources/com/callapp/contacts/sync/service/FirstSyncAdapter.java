package com.callapp.contacts.sync.service;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.g;
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
    private int f;
    private boolean e = false;
    private String g = Activities.getString(2131887767);

    public FirstSyncAdapter(Context context) {
        super(context);
    }

    private void a(int i, int i2, boolean z) {
        NotificationManager notificationManager = NotificationManager.get();
        notificationManager.a(9);
        if (i > 0 || z) {
            g.e a2 = notificationManager.a(i, i2, z, String.format(this.g, Integer.valueOf(i2), Integer.valueOf(i)));
            RealSyncService service = getService();
            Notification b2 = a2.b();
            if (Build.VERSION.SDK_INT >= 29) {
                service.startForeground(8, b2, 1);
            } else {
                service.startForeground(8, b2);
            }
            notificationManager.a(8, a2);
        }
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final List<Syncer> a(SyncContext syncContext) {
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
        CLog.a(FirstSyncAdapter.class, sb.substring(0, sb.length() - 1));
        return arrayList;
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final void a(int i, int i2) {
        if (!this.e && i > this.f) {
            a(i2, i, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    public final void a(boolean z) {
        super.a(z);
        if (this.f15776b > this.f) {
            this.f = this.f15776b;
            Prefs.bp.set(Integer.valueOf(this.f15776b));
        }
        if (z) {
            try {
                Date date = Prefs.bq.get();
                Prefs.br.set(new Date());
                if (date != null) {
                    long time = (new Date().getTime() - date.getTime()) / 1000;
                    AnalyticsManager.get().a(Constants.SYNCERS, "UPDATED First sync time (seconds)", (String) null, (int) time, new String[0]);
                    Prefs.bs.set(Long.valueOf(time));
                    Prefs.bu.set(Integer.valueOf((int) (PowerUtils.b(getContext()) * 100.0f)));
                    Integer num = Prefs.bt.get();
                    Integer num2 = Prefs.bu.get();
                    if (!(num == null || num2 == null)) {
                        AnalyticsManager.get().a(Constants.SYNCERS, "Battery loss during sync", (String) null, num.intValue() - num2.intValue(), new String[0]);
                    }
                } else {
                    AnalyticsManager.get().a(Constants.SYNCERS, "UPDATED First sync time (seconds) - start time empty", (String) null);
                }
            } catch (RuntimeException e) {
                CLog.a(FirstSyncAdapter.class, e, "FirstSyncAdapter failed to send analytics");
            }
        }
        RealSyncService service = getService();
        if (z) {
            if (!Prefs.bn.get().booleanValue()) {
                e();
                Prefs.bn.set(Boolean.TRUE);
            }
        } else if (!HttpUtils.a()) {
            service.stopForeground(true);
            NotificationManager notificationManager = NotificationManager.get();
            String string = Activities.getString(2131887761);
            notificationManager.a(9);
            g.e a2 = notificationManager.a(NotificationManager.NotificationChannelEnum.SYNC_PROGRESS_NOTIFICATION_CHANNEL);
            g.e a3 = a2.b(string).a(Activities.a(2131887763, Prefs.bp.get(), Prefs.bo.get()));
            a3.a(2, false);
            a3.a(2131231569);
            Intent intent = new Intent(Singletons.get().getApplication(), ContactsListActivity.class);
            intent.putExtra("from_sync_progress", true);
            intent.putExtra("sync_progress_no_internet", true);
            NotificationManager.a((Object) ContactsListActivity.class, intent, a2, 0, false);
            notificationManager.a(8, a2);
        } else {
            Singletons.get().getExceptionManager().isInternetIsDown();
            service.stopForeground(true);
            NotificationManager.get().a(8);
        }
        BirthdayDailyWorker.f17022a.a();
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    public final boolean a(Context context) {
        boolean a2 = super.a(context);
        this.e = a2;
        if (!a2) {
            this.e = !HttpUtils.a();
        }
        if (!this.e && this.f15775a && !PowerUtils.a(context)) {
            float b2 = PowerUtils.b(context);
            if (b2 < 0.2f && b2 > BitmapDescriptorFactory.HUE_RED) {
                CLog.a(FirstSyncAdapter.class, "Battery low, terminating sync...");
                this.e = true;
            }
        }
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    public final void b() {
        super.b();
        this.f = Prefs.bp.get().intValue();
        if (Prefs.bq.get() == null) {
            Prefs.bq.set(new Date());
            Prefs.bt.set(Integer.valueOf((int) (PowerUtils.b(getContext()) * 100.0f)));
        }
        a(0, 0, true);
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final void c() {
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.REGISTRATION, "Sync started " + getClass(), (String) null, 0L);
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final void d() {
    }
}
