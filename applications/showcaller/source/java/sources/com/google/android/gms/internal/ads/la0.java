package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.C6228f;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/la0.class */
public final class la0 extends ra0 {

    /* renamed from: c */
    static final Set<String> f25980c = C6228f.m16811g("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");

    /* renamed from: d */
    private String f25981d = "top-right";

    /* renamed from: e */
    private boolean f25982e = true;

    /* renamed from: f */
    private int f25983f = 0;

    /* renamed from: g */
    private int f25984g = 0;

    /* renamed from: h */
    private int f25985h = -1;

    /* renamed from: i */
    private int f25986i = 0;

    /* renamed from: j */
    private int f25987j = 0;

    /* renamed from: k */
    private int f25988k = -1;

    /* renamed from: l */
    private final Object f25989l = new Object();

    /* renamed from: m */
    private final wn0 f25990m;

    /* renamed from: n */
    private final Activity f25991n;

    /* renamed from: o */
    private mp0 f25992o;

    /* renamed from: p */
    private ImageView f25993p;

    /* renamed from: q */
    private LinearLayout f25994q;

    /* renamed from: r */
    private final sa0 f25995r;

    /* renamed from: s */
    private PopupWindow f25996s;

    /* renamed from: t */
    private RelativeLayout f25997t;

    /* renamed from: u */
    private ViewGroup f25998u;

    public la0(wn0 wn0Var, sa0 sa0Var) {
        super(wn0Var, "resize");
        this.f25990m = wn0Var;
        this.f25991n = wn0Var.mo7908g();
        this.f25995r = sa0Var;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0460 A[Catch: all -> 0x0882, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0170, B:61:0x0187, B:70:0x01ac, B:71:0x01b4, B:73:0x01bb, B:106:0x028d, B:107:0x02a7, B:108:0x02c1, B:110:0x02db, B:111:0x02e3, B:113:0x0307, B:114:0x0330, B:116:0x034a, B:117:0x0352, B:127:0x0392, B:128:0x03b1, B:130:0x03cf, B:133:0x03f0, B:139:0x041b, B:143:0x043c, B:145:0x044d, B:146:0x0455, B:151:0x0460, B:152:0x0467, B:154:0x0469, B:156:0x049c, B:158:0x04a4, B:160:0x04c2, B:161:0x0527, B:162:0x052c, B:163:0x052f, B:196:0x06bd, B:197:0x06ce, B:198:0x06df, B:199:0x06f0, B:200:0x0701, B:201:0x070b, B:202:0x071c, B:204:0x072b, B:206:0x075a, B:208:0x0795, B:210:0x079e, B:212:0x07b1, B:214:0x07ca, B:215:0x07f0, B:218:0x07f3, B:220:0x0802, B:221:0x080d, B:223:0x0819, B:225:0x0834, B:227:0x0858, B:229:0x085a, B:230:0x0862, B:232:0x0864, B:233:0x086c, B:235:0x086e, B:236:0x0876, B:238:0x0878, B:239:0x0880), top: B:246:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0469 A[Catch: all -> 0x0882, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0170, B:61:0x0187, B:70:0x01ac, B:71:0x01b4, B:73:0x01bb, B:106:0x028d, B:107:0x02a7, B:108:0x02c1, B:110:0x02db, B:111:0x02e3, B:113:0x0307, B:114:0x0330, B:116:0x034a, B:117:0x0352, B:127:0x0392, B:128:0x03b1, B:130:0x03cf, B:133:0x03f0, B:139:0x041b, B:143:0x043c, B:145:0x044d, B:146:0x0455, B:151:0x0460, B:152:0x0467, B:154:0x0469, B:156:0x049c, B:158:0x04a4, B:160:0x04c2, B:161:0x0527, B:162:0x052c, B:163:0x052f, B:196:0x06bd, B:197:0x06ce, B:198:0x06df, B:199:0x06f0, B:200:0x0701, B:201:0x070b, B:202:0x071c, B:204:0x072b, B:206:0x075a, B:208:0x0795, B:210:0x079e, B:212:0x07b1, B:214:0x07ca, B:215:0x07f0, B:218:0x07f3, B:220:0x0802, B:221:0x080d, B:223:0x0819, B:225:0x0834, B:227:0x0858, B:229:0x085a, B:230:0x0862, B:232:0x0864, B:233:0x086c, B:235:0x086e, B:236:0x0876, B:238:0x0878, B:239:0x0880), top: B:246:0x0007, inners: #1 }] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m13624h(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.la0.m13624h(java.util.Map):void");
    }

    /* renamed from: i */
    public final void m13623i(boolean z) {
        synchronized (this.f25989l) {
            PopupWindow popupWindow = this.f25996s;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.f25997t.removeView((View) this.f25990m);
                ViewGroup viewGroup = this.f25998u;
                if (viewGroup != null) {
                    viewGroup.removeView(this.f25993p);
                    this.f25998u.addView((View) this.f25990m);
                    this.f25990m.mo7950I0(this.f25992o);
                }
                if (z) {
                    m11617f("default");
                    sa0 sa0Var = this.f25995r;
                    if (sa0Var != null) {
                        sa0Var.mo8347b();
                    }
                }
                this.f25996s = null;
                this.f25997t = null;
                this.f25998u = null;
                this.f25994q = null;
            }
        }
    }

    /* renamed from: j */
    public final void m13622j(int i, int i2, boolean z) {
        synchronized (this.f25989l) {
            this.f25983f = i;
            this.f25984g = i2;
        }
    }

    /* renamed from: k */
    public final boolean m13621k() {
        boolean z;
        synchronized (this.f25989l) {
            z = this.f25996s != null;
        }
        return z;
    }

    /* renamed from: l */
    public final void m13620l(int i, int i2) {
        this.f25983f = i;
        this.f25984g = i2;
    }
}
