package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.io.ByteArrayOutputStream;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdxm.class */
public final class zzdxm {
    private final Context zza;
    private final ApplicationInfo zzb;
    private String zze = "";
    private final int zzc = ((Integer) zzbet.zzc().zzc(zzbjl.zzgC)).intValue();
    private final int zzd = ((Integer) zzbet.zzc().zzc(zzbjl.zzgD)).intValue();

    public zzdxm(Context context) {
        this.zza = context;
        this.zzb = context.getApplicationInfo();
    }

    public final JSONObject zza() throws JSONException {
        Drawable drawable;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AnalyticsConstants.NAME, Wrappers.m38764a(this.zza).m38767b(this.zzb.packageName));
        } catch (PackageManager.NameNotFoundException e) {
        }
        jSONObject.put("packageName", this.zzb.packageName);
        zzt.zzc();
        jSONObject.put("adMobAppId", zzs.zzv(this.zza));
        if (this.zze.isEmpty()) {
            try {
                PackageManagerWrapper m38764a = Wrappers.m38764a(this.zza);
                ApplicationInfo applicationInfo = m38764a.f6151a.getPackageManager().getApplicationInfo(this.zzb.packageName, 0);
                m38764a.f6151a.getPackageManager().getApplicationLabel(applicationInfo);
                drawable = m38764a.f6151a.getPackageManager().getApplicationIcon(applicationInfo);
            } catch (PackageManager.NameNotFoundException e2) {
                drawable = null;
            }
            if (drawable == null) {
                str = "";
            } else {
                drawable.setBounds(0, 0, this.zzc, this.zzd);
                Bitmap createBitmap = Bitmap.createBitmap(this.zzc, this.zzd, Bitmap.Config.ARGB_8888);
                drawable.draw(new Canvas(createBitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                str = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            }
            this.zze = str;
        }
        if (!this.zze.isEmpty()) {
            jSONObject.put(RemoteMessageConst.Notification.ICON, this.zze);
            jSONObject.put("iconWidthPx", this.zzc);
            jSONObject.put("iconHeightPx", this.zzd);
        }
        return jSONObject;
    }
}
