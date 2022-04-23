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

    /* renamed from: a  reason: collision with root package name */
    private final Context f28616a;

    /* renamed from: b  reason: collision with root package name */
    private View f28617b;

    private zzbos(Context context) {
        super(context);
        this.f28616a = context;
    }

    private final int a(double d2) {
        ekb.a();
        return yq.a(this.f28616a, (int) d2);
    }

    public static zzbos a(Context context, View view, cov covVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzbos zzbosVar = new zzbos(context);
        if (!(covVar.t.isEmpty() || (resources = zzbosVar.f28616a.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null)) {
            coy coyVar = covVar.t.get(0);
            zzbosVar.setLayoutParams(new FrameLayout.LayoutParams((int) (coyVar.f26193a * displayMetrics.density), (int) (coyVar.f26194b * displayMetrics.density)));
        }
        zzbosVar.f28617b = view;
        zzbosVar.addView(view);
        zzr.zzls();
        zx.a((View) zzbosVar, (ViewTreeObserver.OnScrollChangedListener) zzbosVar);
        zzr.zzls();
        zx.a((View) zzbosVar, (ViewTreeObserver.OnGlobalLayoutListener) zzbosVar);
        JSONObject jSONObject = covVar.ac;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbosVar.f28616a);
            JSONObject optJSONObject = jSONObject.optJSONObject("header");
            if (optJSONObject != null) {
                zzbosVar.a(optJSONObject, relativeLayout, 10);
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
            if (optJSONObject2 != null) {
                zzbosVar.a(optJSONObject2, relativeLayout, 12);
            }
            zzbosVar.addView(relativeLayout);
        }
        return zzbosVar;
    }

    private final void a(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f28616a);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int a2 = a(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, a2, 0, a2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, a(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f28617b.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f28617b.setY(-iArr[1]);
    }
}
