package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uv1.class */
public final class uv1 {

    /* renamed from: a */
    public static final int f8839a;

    /* renamed from: b */
    public static final ClipData f8840b;

    static {
        f8839a = Build.VERSION.SDK_INT > 22 ? 67108864 : 0;
        f8840b = ClipData.newIntent("", new Intent());
    }

    @Nullable
    /* renamed from: a */
    public static PendingIntent m5343a(Context context, int i, Intent intent, int i2, int i3) {
        nw1.m6384a((i2 & 95) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        nw1.m6384a(intent.getComponent() != null, "Must set component on Intent.");
        if (m5342b(0, 1)) {
            nw1.m6384a(!m5342b(i2, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                z = m5342b(i2, 67108864);
            }
            nw1.m6384a(z, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !m5342b(i2, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!m5342b(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!m5342b(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!m5342b(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!m5342b(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(f8840b);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i2);
    }

    /* renamed from: b */
    private static boolean m5342b(int i, int i2) {
        return (i & i2) == i2;
    }
}
