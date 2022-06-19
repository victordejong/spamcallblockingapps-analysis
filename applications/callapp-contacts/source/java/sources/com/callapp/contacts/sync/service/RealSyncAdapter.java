package com.callapp.contacts.sync.service;

import android.content.Context;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.sync.Synchronizers;
import com.callapp.contacts.sync.model.SyncContext;
import com.callapp.contacts.sync.syncer.Syncer;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.util.http.HttpUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/RealSyncAdapter.class */
public class RealSyncAdapter extends BaseSyncAdapter {

    /* renamed from: e */
    private Date f27606e;

    public RealSyncAdapter(Context context) {
        super(context);
        this.f27606e = Prefs.f26257ah.isNotNull() ? Prefs.f26257ah.get() : new Date();
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    protected final List<Syncer> mo27759a(SyncContext syncContext) {
        StringBuilder sb = new StringBuilder("Syncers:");
        Synchronizers[] values = Synchronizers.values();
        ArrayList arrayList = new ArrayList();
        for (Synchronizers synchronizers : values) {
            Syncer syncer = synchronizers.syncer;
            syncer.init(syncContext);
            sb.append(StringUtils.SPACE);
            sb.append(syncer.getName());
            if (!syncer.shouldSync() || synchronizers.syncConfig == Synchronizers.SyncConfig.onlyFirst) {
                sb.append(" (skipped)");
            } else {
                arrayList.add(syncer);
            }
            sb.append(",");
        }
        CLog.m27611a(RealSyncAdapter.class, sb.substring(0, sb.length() - 1));
        return arrayList;
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: a */
    public final boolean mo27760a(Context context) {
        if (super.mo27760a(context)) {
            return true;
        }
        if (PhoneStateManager.get().isAnyCallActive()) {
            CLog.m27611a(getClass(), "Has phone call, terminating sync...");
            return true;
        } else if (Singletons.get().getExceptionManager().isInternetIsDown()) {
            CLog.m27588c(getClass(), "No real internet, terminating sync...");
            return true;
        } else if (!PowerUtils.m27430a(context)) {
            CLog.m27611a(RealSyncAdapter.class, "No power, terminating sync...");
            return true;
        } else if (PowerUtils.isScreenOn()) {
            CLog.m27611a(RealSyncAdapter.class, "Screen is on, terminating sync...");
            return true;
        } else if (!HttpUtils.isWiFiConnected()) {
            CLog.m27611a(RealSyncAdapter.class, "No WiFi, terminating sync...");
            return true;
        } else if (!RealSyncService.isSyncEnabled()) {
            CLog.m27611a(RealSyncAdapter.class, "Sync disabled, terminating sync...");
            return true;
        } else {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(this.f27606e);
            calendar.add(12, 10);
            if (!(!new Date().after(calendar.getTime()))) {
                return false;
            }
            CLog.m27611a(RealSyncAdapter.class, "Within 10min after install, terminating sync...");
            return true;
        }
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: c */
    protected final void mo27758c() {
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    /* renamed from: d */
    protected final void mo27757d() {
        Prefs.f26324bv.set(new Date());
    }
}
