package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzp;
import com.mopub.mobileads.resource.DrawableConstants;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqe.class */
public final class zzbqe extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    public final Context f25355a;

    /* renamed from: b */
    public View f25356b;

    public zzbqe(Context context) {
        super(context);
        this.f25355a = context;
    }

    /* renamed from: a */
    public static zzbqe m15179a(Context context, View view, zzdnv zzdnvVar) {
        zzbqe zzbqeVar = new zzbqe(context);
        zzbqeVar.f25356b = view;
        zzbqeVar.addView(view);
        zzp.m17946z();
        zzbco.m15823a((View) zzbqeVar, (ViewTreeObserver.OnScrollChangedListener) zzbqeVar);
        zzp.m17946z();
        zzbco.m15824a((View) zzbqeVar, (ViewTreeObserver.OnGlobalLayoutListener) zzbqeVar);
        JSONObject jSONObject = zzdnvVar.f27587d0;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbqeVar.f25355a);
            JSONObject optJSONObject = jSONObject.optJSONObject("header");
            if (optJSONObject != null) {
                zzbqeVar.m15178a(optJSONObject, relativeLayout, 10);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
            if (optJSONObject2 != null) {
                zzbqeVar.m15178a(optJSONObject2, relativeLayout, 12);
            }
            zzbqeVar.addView(relativeLayout);
        }
        return zzbqeVar;
    }

    /* renamed from: a */
    public final int m15180a(double d) {
        zzwm.m11170a();
        return zzbbg.m15897b(this.f25355a, (int) d);
    }

    /* renamed from: a */
    public final void m15178a(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f25355a);
        textView.setTextColor(-1);
        textView.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int a = m15180a(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, a, 0, a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, m15180a(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f25356b.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f25356b.setY(-iArr[1]);
    }
}
