package com.google.android.libraries.places.internal;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzej.class */
public final class zzej {
    private static double zza(double d) {
        return d <= 0.03928d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
    }

    private static double zza(double d, double d2) {
        return Math.round(((Math.max(d, d2) + 0.05d) / (Math.min(d, d2) + 0.05d)) * 100.0d) / 100.0d;
    }

    private static double zza(int i) {
        double zza = zza(Color.red(i) / 255.0d);
        return (zza(Color.blue(i) / 255.0d) * 0.0722d) + (zza(Color.green(i) / 255.0d) * 0.7152d) + (zza * 0.2126d);
    }

    public static int zza(int i, int i2, int i3) {
        return zzb(i, i2, i3) ? i3 : i2;
    }

    public static void zza(ImageView imageView, int i) {
        Drawable drawable = imageView.getDrawable();
        int rgb = Color.rgb(Color.red(i), Color.green(i), Color.blue(i));
        Drawable mutate = drawable.mutate();
        mutate.setColorFilter(rgb, PorterDuff.Mode.SRC_ATOP);
        mutate.setAlpha(Color.alpha(i));
    }

    public static boolean zzb(int i, int i2, int i3) {
        double zza = zza(i);
        double zza2 = zza(zza(i2), zza);
        return zza2 <= 3.0d && zza2 <= zza(zza(i3), zza);
    }
}
