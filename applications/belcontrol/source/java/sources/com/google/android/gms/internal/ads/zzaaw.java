package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaw.class */
public final class zzaaw {
    private final Context context;

    public zzaaw(Context context) {
        Preconditions.checkNotNull(context, "Context can not be null");
        this.context = context;
    }

    private final boolean zza(Intent intent) {
        Preconditions.checkNotNull(intent, "Intent can not be null");
        return !this.context.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean zzrx() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return zza(intent);
    }

    public final boolean zzry() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return zza(intent);
    }

    public final boolean zzrz() {
        return ((Boolean) zzbr.zza(this.context, new zzaaz())).booleanValue() && Wrappers.packageManager(this.context).checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    public final boolean zzsa() {
        return zza(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
