package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C5667s;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcwv.class */
public final class zzcwv extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: d */
    private final Context f33921d;

    /* renamed from: e */
    private View f33922e;

    private zzcwv(Context context) {
        super(context);
        this.f33921d = context;
    }

    /* renamed from: a */
    public static zzcwv m7876a(Context context, View view, ej2 ej2Var) {
        Resources resources;
        DisplayMetrics displayMetrics;
        hj2 hj2Var;
        zzcwv zzcwvVar = new zzcwv(context);
        if (!ej2Var.f22249u.isEmpty() && (resources = zzcwvVar.f33921d.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f = ej2Var.f22249u.get(0).f23929a;
            float f2 = displayMetrics.density;
            zzcwvVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (hj2Var.f23930b * f2)));
        }
        zzcwvVar.f33922e = view;
        zzcwvVar.addView(view);
        C5667s.m18164A();
        dj0.m15788b(zzcwvVar, zzcwvVar);
        C5667s.m18164A();
        dj0.m15789a(zzcwvVar, zzcwvVar);
        JSONObject jSONObject = ej2Var.f22228e0;
        RelativeLayout relativeLayout = new RelativeLayout(zzcwvVar.f33921d);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzcwvVar.m7875b(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzcwvVar.m7875b(optJSONObject2, relativeLayout, 12);
        }
        zzcwvVar.addView(relativeLayout);
        return zzcwvVar;
    }

    /* renamed from: b */
    private final void m7875b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f33921d);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int m7874c = m7874c(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, m7874c, 0, m7874c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, m7874c(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    /* renamed from: c */
    private final int m7874c(double d) {
        C7118wr.m9485a();
        return xh0.m9161q(this.f33921d, (int) d);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f33922e.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f33922e.setY(-iArr[1]);
    }
}
