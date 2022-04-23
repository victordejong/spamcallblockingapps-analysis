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
    private Date e;

    public RealSyncAdapter(Context context) {
        super(context);
        this.e = Prefs.ah.isNotNull() ? Prefs.ah.get() : new Date();
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final List<Syncer> a(SyncContext syncContext) {
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
        CLog.a(RealSyncAdapter.class, sb.substring(0, sb.length() - 1));
        return arrayList;
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    public final boolean a(Context context) {
        if (super.a(context)) {
            return true;
        }
        if (PhoneStateManager.get().isAnyCallActive()) {
            CLog.a(getClass(), "Has phone call, terminating sync...");
            return true;
        } else if (Singletons.get().getExceptionManager().isInternetIsDown()) {
            CLog.c(getClass(), "No real internet, terminating sync...");
            return true;
        } else if (!PowerUtils.a(context)) {
            CLog.a(RealSyncAdapter.class, "No power, terminating sync...");
            return true;
        } else if (PowerUtils.isScreenOn()) {
            CLog.a(RealSyncAdapter.class, "Screen is on, terminating sync...");
            return true;
        } else if (!HttpUtils.isWiFiConnected()) {
            CLog.a(RealSyncAdapter.class, "No WiFi, terminating sync...");
            return true;
        } else if (!RealSyncService.isSyncEnabled()) {
            CLog.a(RealSyncAdapter.class, "Sync disabled, terminating sync...");
            return true;
        } else {
            Calendar instance = Calendar.getInstance();
            instance.setTime(this.e);
            instance.add(12, 10);
            if (!(!new Date().after(instance.getTime()))) {
                return false;
            }
            CLog.a(RealSyncAdapter.class, "Within 10min after install, terminating sync...");
            return true;
        }
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final void c() {
    }

    @Override // com.callapp.contacts.sync.service.BaseSyncAdapter
    protected final void d() {
        Prefs.bv.set(new Date());
    }
}
