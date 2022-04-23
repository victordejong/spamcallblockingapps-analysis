package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.d.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/aw.class */
public final class aw {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f22849a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f22850b;

    /* renamed from: c  reason: collision with root package name */
    private static String f22851c;

    /* renamed from: d  reason: collision with root package name */
    private static int f22852d;

    public static int a(Context context) {
        Bundle bundle;
        synchronized (f22849a) {
            if (!f22850b) {
                f22850b = true;
                try {
                    bundle = c.a(context).a(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f22851c = bundle.getString("com.google.app.id");
                    f22852d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
        return f22852d;
    }
}
