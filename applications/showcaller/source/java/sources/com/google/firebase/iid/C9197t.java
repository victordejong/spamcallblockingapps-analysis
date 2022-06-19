package com.google.firebase.iid;

import android.content.Context;
import android.util.Log;
/* renamed from: com.google.firebase.iid.t */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/t.class */
public class C9197t {

    /* renamed from: a */
    private static C9197t f39560a;

    /* renamed from: b */
    private Boolean f39561b = null;

    /* renamed from: c */
    private Boolean f39562c = null;

    private C9197t() {
    }

    /* renamed from: a */
    public static C9197t m1586a() {
        C9197t c9197t;
        synchronized (C9197t.class) {
            try {
                if (f39560a == null) {
                    f39560a = new C9197t();
                }
                c9197t = f39560a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c9197t;
    }

    /* renamed from: b */
    public boolean m1585b(Context context) {
        if (this.f39562c == null) {
            this.f39562c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f39561b.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f39562c.booleanValue();
    }

    /* renamed from: c */
    public boolean m1584c(Context context) {
        if (this.f39561b == null) {
            this.f39561b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f39561b.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f39561b.booleanValue();
    }
}
