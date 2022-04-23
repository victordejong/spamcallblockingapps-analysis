package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxi.class */
public final class cxi {

    /* renamed from: a  reason: collision with root package name */
    private static final int f26535a;

    /* renamed from: b  reason: collision with root package name */
    private static final ClipData f26536b;

    static {
        f26535a = Build.VERSION.SDK_INT > 22 ? 67108864 : 0;
        f26536b = ClipData.newIntent("", new Intent());
    }

    public static PendingIntent a(Context context, Intent intent, int i) {
        cyg.a((i & 95) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        cyg.a(intent.getComponent() != null, "Must set component on Intent.");
        if (a(0, 1)) {
            cyg.a(!a(i, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                z = a(i, 67108864);
            }
            cyg.a(z, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !a(i, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!a(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!a(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!a(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!a(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(f26536b);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i);
    }

    private static boolean a(int i, int i2) {
        return (i & i2) == i2;
    }
}
