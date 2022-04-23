package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.p080g.C1562c;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.common.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public final class C1589q {

    /* renamed from: a */
    private static final Object f5870a = new Object();
    @GuardedBy("sLock")

    /* renamed from: b */
    private static boolean f5871b;

    /* renamed from: c */
    private static int f5872c;

    /* renamed from: a */
    public static int m8330a(Context context) {
        m8329b(context);
        return f5872c;
    }

    /* renamed from: b */
    private static void m8329b(Context context) {
        Bundle bundle;
        synchronized (f5870a) {
            if (!f5871b) {
                f5871b = true;
                try {
                    bundle = C1562c.m8427a(context).m8433c(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    bundle.getString("com.google.app.id");
                    f5872c = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
    }
}
