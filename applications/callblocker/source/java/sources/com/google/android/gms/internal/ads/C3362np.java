package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.C2341q;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.np */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/np.class */
public final class C3362np extends C3366nt implements AbstractC3131fa<act> {

    /* renamed from: a */
    private final act f17024a;

    /* renamed from: b */
    private final Context f17025b;

    /* renamed from: c */
    private final WindowManager f17026c;

    /* renamed from: d */
    private final ecp f17027d;

    /* renamed from: e */
    private DisplayMetrics f17028e;

    /* renamed from: f */
    private float f17029f;

    /* renamed from: i */
    private int f17032i;

    /* renamed from: g */
    private int f17030g = -1;

    /* renamed from: h */
    private int f17031h = -1;

    /* renamed from: j */
    private int f17033j = -1;

    /* renamed from: k */
    private int f17034k = -1;

    /* renamed from: l */
    private int f17035l = -1;

    /* renamed from: m */
    private int f17036m = -1;

    public C3362np(act actVar, Context context, ecp ecpVar) {
        super(actVar);
        this.f17024a = actVar;
        this.f17025b = context;
        this.f17027d = ecpVar;
        this.f17026c = (WindowManager) context.getSystemService("window");
    }

    /* renamed from: a */
    public final void m7415a(int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        if (this.f17025b instanceof Activity) {
            i5 = C2341q.m14744c().m6968c((Activity) this.f17025b)[0];
        }
        if (this.f17024a.mo13428t() == null || !this.f17024a.mo13428t().m13549e()) {
            int width = this.f17024a.getWidth();
            int height = this.f17024a.getHeight();
            int i6 = width;
            if (((Boolean) dyx.m8158e().m7876a(edi.f16322H)).booleanValue()) {
                i4 = width;
                if (width == 0) {
                    i4 = width;
                    if (this.f17024a.mo13428t() != null) {
                        i4 = this.f17024a.mo13428t().f7984b;
                    }
                }
                i6 = i4;
                if (height == 0) {
                    i6 = i4;
                    if (this.f17024a.mo13428t() != null) {
                        i3 = this.f17024a.mo13428t().f7983a;
                        this.f17035l = dyx.m8162a().m6788b(this.f17025b, i4);
                        this.f17036m = dyx.m8162a().m6788b(this.f17025b, i3);
                    }
                }
            }
            i3 = height;
            i4 = i6;
            this.f17035l = dyx.m8162a().m6788b(this.f17025b, i4);
            this.f17036m = dyx.m8162a().m6788b(this.f17025b, i3);
        }
        m7397b(i, i2 - i5, this.f17035l, this.f17036m);
        this.f17024a.mo13426v().mo13535a(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(act actVar, Map map) {
        this.f17028e = new DisplayMetrics();
        Display defaultDisplay = this.f17026c.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f17028e);
        this.f17029f = this.f17028e.density;
        this.f17032i = defaultDisplay.getRotation();
        dyx.m8162a();
        this.f17030g = C3634xr.m6787b(this.f17028e, this.f17028e.widthPixels);
        dyx.m8162a();
        this.f17031h = C3634xr.m6787b(this.f17028e, this.f17028e.heightPixels);
        Activity mo13444f = this.f17024a.mo13444f();
        if (mo13444f == null || mo13444f.getWindow() == null) {
            this.f17033j = this.f17030g;
            this.f17034k = this.f17031h;
        } else {
            C2341q.m14744c();
            int[] m7009a = C3567ve.m7009a(mo13444f);
            dyx.m8162a();
            this.f17033j = C3634xr.m6787b(this.f17028e, m7009a[0]);
            dyx.m8162a();
            this.f17034k = C3634xr.m6787b(this.f17028e, m7009a[1]);
        }
        if (this.f17024a.mo13428t().m13549e()) {
            this.f17035l = this.f17030g;
            this.f17036m = this.f17031h;
        } else {
            this.f17024a.measure(0, 0);
        }
        m7399a(this.f17030g, this.f17031h, this.f17033j, this.f17034k, this.f17029f, this.f17032i);
        this.f17024a.mo7734b("onDeviceFeaturesReceived", new C3361no(new C3363nq().m7410b(this.f17027d.m7904a()).m7412a(this.f17027d.m7902b()).m7408c(this.f17027d.m7900d()).m7406d(this.f17027d.m7901c()).m7404e(true)).m7416a());
        int[] iArr = new int[2];
        this.f17024a.getLocationOnScreen(iArr);
        m7415a(dyx.m8162a().m6788b(this.f17025b, iArr[0]), dyx.m8162a().m6788b(this.f17025b, iArr[1]));
        if (C3556uu.m6753a(2)) {
            C3556uu.m6747d("Dispatching Ready Event.");
        }
        m7396b(this.f17024a.mo13438j().f17636a);
    }
}
