package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C1407r;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqa.class */
public final class zzbqa extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    private final Context f9471b;

    /* renamed from: c */
    private View f9472c;

    private zzbqa(Context context) {
        super(context);
        this.f9471b = context;
    }

    /* renamed from: a */
    public static zzbqa m4495a(Context context, View view, al1 al1Var) {
        Resources resources;
        DisplayMetrics displayMetrics;
        bl1 bl1Var;
        zzbqa zzbqaVar = new zzbqa(context);
        if (!(al1Var.f6033t.isEmpty() || (resources = zzbqaVar.f9471b.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null)) {
            float f = al1Var.f6033t.get(0).f6157a;
            float f2 = displayMetrics.density;
            zzbqaVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (bl1Var.f6158b * f2)));
        }
        zzbqaVar.f9472c = view;
        zzbqaVar.addView(view);
        C1407r.m8924A();
        C1863np.m6407b(zzbqaVar, zzbqaVar);
        C1407r.m8924A();
        C1863np.m6408a(zzbqaVar, zzbqaVar);
        JSONObject jSONObject = al1Var.f6012c0;
        RelativeLayout relativeLayout = new RelativeLayout(zzbqaVar.f9471b);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzbqaVar.m4494b(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzbqaVar.m4494b(optJSONObject2, relativeLayout, 12);
        }
        zzbqaVar.addView(relativeLayout);
        return zzbqaVar;
    }

    /* renamed from: b */
    private final void m4494b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.f9471b);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int c = m4493c(jSONObject.optDouble("padding", 0.0d));
        textView.setPadding(0, c, 0, c);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, m4493c(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    /* renamed from: c */
    private final int m4493c(double d) {
        m03.m6636a();
        return C1786io.m7125s(this.f9471b, (int) d);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f9472c.setY(-iArr[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        this.f9472c.setY(-iArr[1]);
    }
}
