package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbnj.class */
public final class zzbnj extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private final Context context;
    private View zzaat;

    private zzbnj(Context context) {
        super(context);
        this.context = context;
    }

    public static zzbnj zza(Context context, View view, zzdmw zzdmwVar) {
        zzbnj zzbnjVar = new zzbnj(context);
        zzbnjVar.zzaat = view;
        zzbnjVar.addView(view);
        zzr.zzlo();
        zzbai.zza((View) zzbnjVar, (ViewTreeObserver.OnScrollChangedListener) zzbnjVar);
        zzr.zzlo();
        zzbai.zza((View) zzbnjVar, (ViewTreeObserver.OnGlobalLayoutListener) zzbnjVar);
        JSONObject jSONObject = zzdmwVar.zzhjy;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbnjVar.context);
            JSONObject optJSONObject = jSONObject.optJSONObject("header");
            if (optJSONObject != null) {
                zzbnjVar.zza(optJSONObject, relativeLayout, 10);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
            if (optJSONObject2 != null) {
                zzbnjVar.zza(optJSONObject2, relativeLayout, 12);
            }
            zzbnjVar.addView(relativeLayout);
        }
        return zzbnjVar;
    }

    private final void zza(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.context);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzb = zzb(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, zzb, 0, zzb);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzb(jSONObject.optDouble(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    private final int zzb(double d) {
        zzwr.zzqn();
        return zzaza.zze(this.context, (int) d);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzaat.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.zzaat.setY(-iArr[1]);
    }
}
