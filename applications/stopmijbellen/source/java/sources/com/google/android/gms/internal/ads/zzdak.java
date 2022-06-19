package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzt;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdak.class */
public final class zzdak extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzdak(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzdak zza(Context context, View view, zzfdn zzfdnVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzfdo zzfdoVar;
        zzdak zzdakVar = new zzdak(context);
        if (!zzfdnVar.zzv.isEmpty() && (resources = zzdakVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f = zzfdnVar.zzv.get(0).zza;
            float f2 = displayMetrics.density;
            zzdakVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (zzfdoVar.zzb * f2)));
        }
        zzdakVar.zzb = view;
        zzdakVar.addView(view);
        zzt.zzx();
        zzcjz.zzb(zzdakVar, zzdakVar);
        zzt.zzx();
        zzcjz.zza(zzdakVar, zzdakVar);
        JSONObject jSONObject = zzfdnVar.zzaf;
        RelativeLayout relativeLayout = new RelativeLayout(zzdakVar.zza);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzdakVar.zzc(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzdakVar.zzc(optJSONObject2, relativeLayout, 12);
        }
        zzdakVar.addView(relativeLayout);
        return zzdakVar;
    }

    private final int zzb(double d) {
        zzbgo.zzb();
        return zzcis.zzs(this.zza, (int) d);
    }

    private final void zzc(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzb = zzb(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzb.setY(-iArr[1]);
    }
}
