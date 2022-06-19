package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzbos.class */
public final class zzbos extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {

    /* renamed from: a */
    private final Context f50211a;

    /* renamed from: b */
    private View f50212b;

    private zzbos(Context context) {
        super(context);
        this.f50211a = context;
    }

    /* renamed from: a */
    private final int m13723a(double d) {
        ekb.m14835a();
        return C13077yq.m13950a(this.f50211a, (int) d);
    }

    /* renamed from: a */
    public static zzbos m13722a(Context context, View view, cov covVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzbos zzbosVar = new zzbos(context);
        if (!covVar.f46273t.isEmpty() && (resources = zzbosVar.f50211a.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            coy coyVar = covVar.f46273t.get(0);
            zzbosVar.setLayoutParams(new FrameLayout.LayoutParams((int) (coyVar.f46286a * displayMetrics.density), (int) (coyVar.f46287b * displayMetrics.density)));
        }
        zzbosVar.f50212b = view;
        zzbosVar.addView(view);
        zzr.zzls();
        C13111zx.m13889a((View) zzbosVar, (ViewTreeObserver.OnScrollChangedListener) zzbosVar);
        zzr.zzls();
        C13111zx.m13890a((View) zzbosVar, (ViewTreeObserver.OnGlobalLayoutListener) zzbosVar);
        JSONObject jSONObject = covVar.f46250ac;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbosVar.f50211a);
            JSONObject optJSONObject = jSONObject.optJSONObject("header");
            if (optJSONObject != null) {
                zzbosVar.m13721a(optJSONObject, relativeLayout, 10);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
            if (optJSONObject2 != null) {
                zzbosVar.m13721a(optJSONObject2, relativeLayout, 12);
            }
            zzbosVar.addView(relativeLayout);
        }
        return zzbosVar;
    }

    /* renamed from: a */
    private final void m13721a(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f50211a);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int m13723a = m13723a(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, m13723a, 0, m13723a);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, m13723a(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f50212b.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f50212b.setY(-iArr[1]);
    }
}
