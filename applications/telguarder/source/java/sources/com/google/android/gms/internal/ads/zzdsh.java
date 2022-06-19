package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsh.class */
public final class zzdsh {
    private final Context context;
    private final String packageName;
    private final String zzbrp;

    public zzdsh(Context context, zzazn zzaznVar) {
        this.context = context;
        this.packageName = context.getPackageName();
        this.zzbrp = zzaznVar.zzbrp;
    }

    public final void zzq(Map<String, String> map) {
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzr.zzkr();
        map.put(POBConstants.KEY_DEVICE, zzj.zzyz());
        map.put(POBConstants.KEY_APP, this.packageName);
        zzr.zzkr();
        map.put("is_lite_sdk", zzj.zzau(this.context) ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        map.put("e", TextUtils.join(",", zzabp.zzsd()));
        map.put("sdkVersion", this.zzbrp);
    }
}
