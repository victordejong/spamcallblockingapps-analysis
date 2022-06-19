package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qa0.class */
public final class qa0 extends ra0 implements n20<wn0> {

    /* renamed from: c */
    private final wn0 f28354c;

    /* renamed from: d */
    private final Context f28355d;

    /* renamed from: e */
    private final WindowManager f28356e;

    /* renamed from: f */
    private final C7011tv f28357f;

    /* renamed from: g */
    DisplayMetrics f28358g;

    /* renamed from: h */
    private float f28359h;

    /* renamed from: k */
    private int f28362k;

    /* renamed from: i */
    int f28360i = -1;

    /* renamed from: j */
    int f28361j = -1;

    /* renamed from: l */
    int f28363l = -1;

    /* renamed from: m */
    int f28364m = -1;

    /* renamed from: n */
    int f28365n = -1;

    /* renamed from: o */
    int f28366o = -1;

    public qa0(wn0 wn0Var, Context context, C7011tv c7011tv) {
        super(wn0Var, "");
        this.f28354c = wn0Var;
        this.f28355d = context;
        this.f28357f = c7011tv;
        this.f28356e = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.n20
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8404a(wn0 wn0Var, Map map) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        JSONObject jSONObject;
        this.f28358g = new DisplayMetrics();
        Display defaultDisplay = this.f28356e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f28358g);
        this.f28359h = this.f28358g.density;
        this.f28362k = defaultDisplay.getRotation();
        C7118wr.m9485a();
        DisplayMetrics displayMetrics = this.f28358g;
        this.f28360i = xh0.m9163o(displayMetrics, displayMetrics.widthPixels);
        C7118wr.m9485a();
        DisplayMetrics displayMetrics2 = this.f28358g;
        this.f28361j = xh0.m9163o(displayMetrics2, displayMetrics2.heightPixels);
        Activity mo7908g = this.f28354c.mo7908g();
        if (mo7908g == null || mo7908g.getWindow() == null) {
            this.f28363l = this.f28360i;
            this.f28364m = this.f28361j;
        } else {
            C5667s.m18160d();
            int[] m18055t = C5679c2.m18055t(mo7908g);
            C7118wr.m9485a();
            this.f28363l = xh0.m9163o(this.f28358g, m18055t[0]);
            C7118wr.m9485a();
            this.f28364m = xh0.m9163o(this.f28358g, m18055t[1]);
        }
        if (this.f28354c.mo7894o().m13128g()) {
            this.f28365n = this.f28360i;
            this.f28366o = this.f28361j;
        } else {
            this.f28354c.measure(0, 0);
        }
        m11616g(this.f28360i, this.f28361j, this.f28363l, this.f28364m, this.f28359h, this.f28362k);
        pa0 pa0Var = new pa0();
        C7011tv c7011tv = this.f28357f;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        pa0Var.m12330g(c7011tv.m10493c(intent));
        C7011tv c7011tv2 = this.f28357f;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        pa0Var.m12331f(c7011tv2.m10493c(intent2));
        pa0Var.m12329h(this.f28357f.m10494b());
        pa0Var.m12328i(this.f28357f.m10495a());
        pa0Var.m12327j(true);
        z = pa0Var.f27913a;
        z2 = pa0Var.f27914b;
        z3 = pa0Var.f27915c;
        z4 = pa0Var.f27916d;
        z5 = pa0Var.f27917e;
        wn0 wn0Var2 = this.f28354c;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e) {
            ei0.m15466d("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        wn0Var2.mo7920a("onDeviceFeaturesReceived", jSONObject);
        int[] iArr = new int[2];
        this.f28354c.getLocationOnScreen(iArr);
        m11999h(C7118wr.m9485a().m9177a(this.f28355d, iArr[0]), C7118wr.m9485a().m9177a(this.f28355d, iArr[1]));
        if (ei0.m15460j(2)) {
            ei0.m15465e("Dispatching Ready Event.");
        }
        m11620c(this.f28354c.zzt().f33854d);
    }

    /* renamed from: h */
    public final void m11999h(int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f28355d instanceof Activity) {
            C5667s.m18160d();
            i3 = C5679c2.m18053v((Activity) this.f28355d)[0];
        } else {
            i3 = 0;
        }
        if (this.f28354c.mo7894o() == null || !this.f28354c.mo7894o().m13128g()) {
            int width = this.f28354c.getWidth();
            int height = this.f28354c.getHeight();
            int i6 = width;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25531M)).booleanValue()) {
                int i7 = width;
                if (width == 0) {
                    i7 = this.f28354c.mo7894o() != null ? this.f28354c.mo7894o().f26705c : 0;
                }
                i6 = i7;
                if (height == 0) {
                    i4 = 0;
                    i5 = i7;
                    if (this.f28354c.mo7894o() != null) {
                        i4 = this.f28354c.mo7894o().f26704b;
                        i5 = i7;
                    }
                    this.f28365n = C7118wr.m9485a().m9177a(this.f28355d, i5);
                    this.f28366o = C7118wr.m9485a().m9177a(this.f28355d, i4);
                }
            }
            i5 = i6;
            i4 = height;
            this.f28365n = C7118wr.m9485a().m9177a(this.f28355d, i5);
            this.f28366o = C7118wr.m9485a().m9177a(this.f28355d, i4);
        }
        m11618e(i, i2 - i3, this.f28365n, this.f28366o);
        this.f28354c.mo7914c0().mo14089K0(i, i2);
    }
}
