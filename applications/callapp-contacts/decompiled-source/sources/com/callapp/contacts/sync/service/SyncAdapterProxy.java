package com.callapp.contacts.sync.service;

import android.content.Context;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/SyncAdapterProxy.class */
public class SyncAdapterProxy {

    /* renamed from: a  reason: collision with root package name */
    private BaseSyncAdapter f15784a;

    /* renamed from: b  reason: collision with root package name */
    private Context f15785b;

    public SyncAdapterProxy(Context context) {
        this.f15785b = context;
        if (b()) {
            this.f15784a = new FirstSyncAdapter(context);
        } else {
            this.f15784a = new RealSyncAdapter(context);
        }
    }

    private static boolean b() {
        Date date = Prefs.ah.get();
        if (date == null || Prefs.bn.get().booleanValue()) {
            return false;
        }
        Calendar instance = Calendar.getInstance();
        instance.setTime(date);
        instance.add(10, 24);
        boolean after = Calendar.getInstance().after(instance);
        if (after) {
            Prefs.bn.set(Boolean.TRUE);
        }
        return !after;
    }

    public final void a() {
        synchronized (this) {
            if (!b() && (this.f15784a instanceof FirstSyncAdapter)) {
                this.f15784a = new RealSyncAdapter(this.f15785b);
            }
            Class<?> cls = getClass();
            CLog.a(cls, "performSync: " + this.f15784a.getClass().getSimpleName());
            this.f15784a.a();
        }
    }
}
