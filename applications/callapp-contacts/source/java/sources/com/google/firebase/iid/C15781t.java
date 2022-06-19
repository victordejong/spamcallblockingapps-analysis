package com.google.firebase.iid;

import android.content.Context;
import android.util.Log;
/* renamed from: com.google.firebase.iid.t */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/t.class */
public final class C15781t {

    /* renamed from: c */
    private static C15781t f56159c;

    /* renamed from: a */
    Boolean f56160a = null;

    /* renamed from: b */
    Boolean f56161b = null;

    private C15781t() {
    }

    /* renamed from: a */
    public static C15781t m8408a() {
        C15781t c15781t;
        synchronized (C15781t.class) {
            try {
                if (f56159c == null) {
                    f56159c = new C15781t();
                }
                c15781t = f56159c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c15781t;
    }

    /* renamed from: a */
    public final boolean m8407a(Context context) {
        if (this.f56160a == null) {
            this.f56160a = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f56160a.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f56160a.booleanValue();
    }
}
