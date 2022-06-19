package com.callapp.contacts.sync.service;

import android.content.Context;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/SyncAdapterProxy.class */
public class SyncAdapterProxy {

    /* renamed from: a */
    private BaseSyncAdapter f27611a;

    /* renamed from: b */
    private Context f27612b;

    public SyncAdapterProxy(Context context) {
        this.f27612b = context;
        if (m27748b()) {
            this.f27611a = new FirstSyncAdapter(context);
        } else {
            this.f27611a = new RealSyncAdapter(context);
        }
    }

    /* renamed from: b */
    private static boolean m27748b() {
        Date date = Prefs.f26257ah.get();
        if (date != null && !Prefs.f26316bn.get().booleanValue()) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(10, 24);
            boolean after = Calendar.getInstance().after(calendar);
            if (after) {
                Prefs.f26316bn.set(Boolean.TRUE);
            }
            return !after;
        }
        return false;
    }

    /* renamed from: a */
    public final void m27749a() {
        synchronized (this) {
            if (!m27748b() && (this.f27611a instanceof FirstSyncAdapter)) {
                this.f27611a = new RealSyncAdapter(this.f27612b);
            }
            Class<?> cls = getClass();
            CLog.m27611a(cls, "performSync: " + this.f27611a.getClass().getSimpleName());
            this.f27611a.m27772a();
        }
    }
}
