package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.p352d.C11946c;
/* renamed from: com.google.android.gms.common.internal.aw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aw.class */
public final class C11997aw {

    /* renamed from: a */
    private static final Object f39498a = new Object();

    /* renamed from: b */
    private static boolean f39499b;

    /* renamed from: c */
    private static String f39500c;

    /* renamed from: d */
    private static int f39501d;

    /* renamed from: a */
    public static int m19216a(Context context) {
        Bundle bundle;
        synchronized (f39498a) {
            if (!f39499b) {
                f39499b = true;
                try {
                    bundle = C11946c.m19258a(context).m19262a(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f39500c = bundle.getString("com.google.app.id");
                    f39501d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
        return f39501d;
    }
}
