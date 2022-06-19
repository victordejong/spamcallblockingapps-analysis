package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.p272k.C6198c;
/* renamed from: com.google.android.gms.common.internal.w0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/w0.class */
public final class C6186w0 {

    /* renamed from: a */
    private static final Object f19612a = new Object();

    /* renamed from: b */
    private static boolean f19613b;

    /* renamed from: c */
    private static String f19614c;

    /* renamed from: d */
    private static int f19615d;

    /* renamed from: a */
    public static int m16911a(Context context) {
        m16910b(context);
        return f19615d;
    }

    /* renamed from: b */
    private static void m16910b(Context context) {
        Bundle bundle;
        synchronized (f19612a) {
            if (f19613b) {
                return;
            }
            f19613b = true;
            try {
                bundle = C6198c.m16885a(context).m16891c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            f19614c = bundle.getString("com.google.app.id");
            f19615d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
