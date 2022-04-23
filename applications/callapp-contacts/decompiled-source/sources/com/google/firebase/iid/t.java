package com.google.firebase.iid;

import android.content.Context;
import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/t.class */
public final class t {

    /* renamed from: c  reason: collision with root package name */
    private static t f32359c;

    /* renamed from: a  reason: collision with root package name */
    Boolean f32360a = null;

    /* renamed from: b  reason: collision with root package name */
    Boolean f32361b = null;

    private t() {
    }

    public static t a() {
        t tVar;
        synchronized (t.class) {
            try {
                if (f32359c == null) {
                    f32359c = new t();
                }
                tVar = f32359c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Context context) {
        if (this.f32360a == null) {
            this.f32360a = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f32360a.booleanValue()) {
            Log.isLoggable("FirebaseInstanceId", 3);
        }
        return this.f32360a.booleanValue();
    }
}
