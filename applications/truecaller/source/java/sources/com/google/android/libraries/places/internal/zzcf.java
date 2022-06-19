package com.google.android.libraries.places.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzcf.class */
public final class zzcf {
    private String zza;
    private String zzb;
    private Locale zzc = null;
    private Map<String, String> zzd = new HashMap();

    public zzcf(String str, String str2) {
        this.zza = str;
        zzft.zza(!TextUtils.isEmpty(str2), "API key cannot be empty.");
        this.zzb = str2;
    }

    public final zzcf zza(Locale locale) {
        this.zzc = locale;
        return this;
    }

    public final zzcf zza(Map<String, String> map) {
        this.zzd = new HashMap(map);
        return this;
    }

    public final String zza() {
        Uri.Builder buildUpon = Uri.parse("https://maps.googleapis.com/").buildUpon();
        buildUpon.appendEncodedPath("maps/api/place/");
        buildUpon.appendEncodedPath(this.zza);
        buildUpon.appendQueryParameter(AnalyticsConstants.KEY, this.zzb);
        Locale locale = this.zzc;
        if (locale != null) {
            String languageTag = locale.toLanguageTag();
            if (!TextUtils.isEmpty(languageTag)) {
                buildUpon.appendQueryParameter("language", languageTag);
            }
        }
        Map<String, String> map = this.zzd;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
            }
        }
        return buildUpon.build().toString();
    }
}
