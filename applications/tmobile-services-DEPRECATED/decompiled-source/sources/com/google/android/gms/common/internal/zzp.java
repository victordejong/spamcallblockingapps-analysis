package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzp.class */
public final class zzp {

    /* renamed from: a */
    private static Object f7574a = new Object();
    @GuardedBy

    /* renamed from: b */
    private static boolean f7575b;

    /* renamed from: c */
    private static String f7576c;

    /* renamed from: d */
    private static int f7577d;

    /* renamed from: a */
    public static String m14401a(Context context) {
        m14399c(context);
        return f7576c;
    }

    /* renamed from: b */
    public static int m14400b(Context context) {
        m14399c(context);
        return f7577d;
    }

    /* renamed from: c */
    private static void m14399c(Context context) {
        Bundle bundle;
        synchronized (f7574a) {
            if (!f7575b) {
                f7575b = true;
                try {
                    bundle = Wrappers.m14278a(context).m14285c(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f7576c = bundle.getString("com.google.app.id");
                    f7577d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
    }
}
