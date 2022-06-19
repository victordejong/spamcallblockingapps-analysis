package com.google.android.gms.internal.ads;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvn.class */
public final class zzdvn {
    private static final ClipData zzhvj = ClipData.newIntent("", new Intent());

    @Nullable
    public static PendingIntent getService(Context context, int i, Intent intent, int i2) {
        zzdwl.checkArgument((i2 & 95) == 0, "Cannot set any dangerous parts of intent to be mutable.");
        zzdwl.checkArgument(intent.getComponent() != null, "Must set component on Intent.");
        if (zzs(0, 1)) {
            zzdwl.checkArgument(!zzs(i2, 67108864), "Cannot set mutability flags if PendingIntent.FLAG_IMMUTABLE is set.");
        } else {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 23) {
                z = zzs(i2, 67108864);
            }
            zzdwl.checkArgument(z, "Must set PendingIntent.FLAG_IMMUTABLE for SDK >= 23 if no parts of intent are mutable.");
        }
        Intent intent2 = new Intent(intent);
        if (Build.VERSION.SDK_INT < 23 || !zzs(i2, 67108864)) {
            if (intent2.getPackage() == null) {
                intent2.setPackage(intent2.getComponent().getPackageName());
            }
            if (!zzs(0, 3) && intent2.getAction() == null) {
                intent2.setAction("");
            }
            if (!zzs(0, 9) && intent2.getCategories() == null) {
                intent2.addCategory("");
            }
            if (!zzs(0, 5) && intent2.getData() == null) {
                intent2.setDataAndType(Uri.EMPTY, "*/*");
            }
            if (!zzs(0, 17) && intent2.getClipData() == null) {
                intent2.setClipData(zzhvj);
            }
        }
        return PendingIntent.getService(context, 0, intent2, i2);
    }

    private static boolean zzs(int i, int i2) {
        return (i & i2) == i2;
    }
}
