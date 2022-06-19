package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.SharedPreferencesUtils;
@TargetApi(17)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzv.class */
public class zzv extends zzae {
    public zzv() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final int zza(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "airplane_mode_on", 0);
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final int zzb(ContentResolver contentResolver) {
        return Settings.Global.getInt(contentResolver, "wifi_on", 0);
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final Drawable zzc(Context context, Bitmap bitmap, boolean z, float f) {
        if (!z || f <= 0.0f || f > 25.0f) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
        try {
            Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), false);
            Bitmap createBitmap = Bitmap.createBitmap(createScaledBitmap);
            RenderScript create = RenderScript.create(context);
            ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
            Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
            Allocation createFromBitmap2 = Allocation.createFromBitmap(create, createBitmap);
            create2.setRadius(f);
            create2.setInput(createFromBitmap);
            create2.forEach(createFromBitmap2);
            createFromBitmap2.copyTo(createBitmap);
            return new BitmapDrawable(context.getResources(), createBitmap);
        } catch (RuntimeException e) {
            return new BitmapDrawable(context.getResources(), bitmap);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final String zzd(Context context) {
        zzci zza = zzci.zza();
        if (TextUtils.isEmpty(zza.zza)) {
            zza.zza = ClientLibraryUtils.isPackageSide() ? (String) zzcf.zza(context, new zzcg(zza, context)) : (String) zzcf.zza(context, new zzch(zza, GooglePlayServicesUtilLight.getRemoteContext(context), context));
        }
        return zza.zza;
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final void zze(Context context) {
        zzci zza = zzci.zza();
        zze.zza("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(zza.zza)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            Context context2 = remoteContext;
            if (!ClientLibraryUtils.isPackageSide()) {
                if (remoteContext == null) {
                    context2 = null;
                }
                zza.zza = defaultUserAgent;
            }
            SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
            if (context2 == null) {
                putString.apply();
            } else {
                SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, putString, "admob_user_agent");
            }
            zza.zza = defaultUserAgent;
        }
        zze.zza("User agent is updated.");
    }

    @Override // com.google.android.gms.ads.internal.util.zzae
    public final boolean zzf(Context context, WebSettings webSettings) {
        super.zzf(context, webSettings);
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        return true;
    }
}
