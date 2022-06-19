package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxi.class */
public final class cxi {

    /* renamed from: a */
    private static final int f46726a;

    /* renamed from: b */
    private static final ClipData f46727b;

    static {
        f46726a = Build.VERSION.SDK_INT > 22 ? 67108864 : 0;
        f46727b = ClipData.newIntent("", new Intent());
    }

    /* renamed from: a */
    public static PendingIntent m17079a(Context context, Intent intent, int i) {
        cyg.m17057a((i & 95) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        cyg.m17057a(intent.getComponent() != null, "Must set component on Intent.");
        if (m17080a(0, 1)) {
            cyg.m17057a(!m17080a(i, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                z = m17080a(i, 67108864);
            }
            cyg.m17057a(z, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !m17080a(i, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!m17080a(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!m17080a(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!m17080a(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!m17080a(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(f46727b);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i);
    }

    /* renamed from: a */
    private static boolean m17080a(int i, int i2) {
        return (i & i2) == i2;
    }
}
