package com.explorestack.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.explorestack.iab.utils.h */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/h.class */
public final class C9593h implements Serializable {

    /* renamed from: a */
    public Integer f32583a;

    /* renamed from: b */
    public Integer f32584b;

    /* renamed from: c */
    public Boolean f32585c;

    /* renamed from: d */
    public Boolean f32586d;

    /* renamed from: e */
    public Integer f32587e;

    /* renamed from: f */
    public Integer f32588f;

    /* renamed from: g */
    public String f32589g;

    /* renamed from: h */
    public Float f32590h;

    /* renamed from: i */
    public Float f32591i;

    /* renamed from: j */
    public String f32592j;

    /* renamed from: k */
    public Float f32593k;

    /* renamed from: l */
    Float f32594l;

    /* renamed from: m */
    Float f32595m;

    /* renamed from: n */
    public Integer f32596n;

    /* renamed from: o */
    public Float f32597o;

    /* renamed from: p */
    private Integer f32598p;

    /* renamed from: q */
    private Integer f32599q;

    /* renamed from: r */
    private Integer f32600r;

    /* renamed from: s */
    private Integer f32601s;

    /* renamed from: t */
    private Integer f32602t;

    /* renamed from: u */
    private Integer f32603u;

    /* renamed from: v */
    private Integer f32604v;

    /* renamed from: w */
    private Integer f32605w;

    public C9593h() {
    }

    public C9593h(C9593h c9593h) {
        m24062b(c9593h);
    }

    /* renamed from: b */
    private void m24062b(C9593h c9593h) {
        if (c9593h == null) {
            return;
        }
        Integer num = c9593h.f32583a;
        if (num != null) {
            this.f32583a = num;
        }
        Integer num2 = c9593h.f32584b;
        if (num2 != null) {
            this.f32584b = num2;
        }
        Boolean bool = c9593h.f32585c;
        if (bool != null) {
            this.f32585c = bool;
        }
        Boolean bool2 = c9593h.f32586d;
        if (bool2 != null) {
            this.f32586d = bool2;
        }
        Integer num3 = c9593h.f32587e;
        if (num3 != null) {
            this.f32587e = num3;
        }
        Integer num4 = c9593h.f32588f;
        if (num4 != null) {
            this.f32588f = num4;
        }
        String str = c9593h.f32589g;
        if (str != null) {
            this.f32589g = str;
        }
        Float f = c9593h.f32590h;
        if (f != null) {
            this.f32590h = f;
        }
        Float f2 = c9593h.f32591i;
        if (f2 != null) {
            this.f32591i = f2;
        }
        Integer num5 = c9593h.f32598p;
        if (num5 != null) {
            this.f32598p = num5;
        }
        Integer num6 = c9593h.f32599q;
        if (num6 != null) {
            this.f32599q = num6;
        }
        Integer num7 = c9593h.f32600r;
        if (num7 != null) {
            this.f32600r = num7;
        }
        Integer num8 = c9593h.f32601s;
        if (num8 != null) {
            this.f32601s = num8;
        }
        Integer num9 = c9593h.f32602t;
        if (num9 != null) {
            this.f32602t = num9;
        }
        Integer num10 = c9593h.f32604v;
        if (num10 != null) {
            this.f32604v = num10;
        }
        Integer num11 = c9593h.f32603u;
        if (num11 != null) {
            this.f32603u = num11;
        }
        Integer num12 = c9593h.f32605w;
        if (num12 != null) {
            this.f32605w = num12;
        }
        String str2 = c9593h.f32592j;
        if (str2 != null) {
            this.f32592j = str2;
        }
        Float f3 = c9593h.f32593k;
        if (f3 != null) {
            this.f32593k = f3;
        }
        Float f4 = c9593h.f32594l;
        if (f4 != null) {
            this.f32594l = f4;
        }
        Float f5 = c9593h.f32595m;
        if (f5 != null) {
            this.f32595m = f5;
        }
        Integer num13 = c9593h.f32596n;
        if (num13 != null) {
            this.f32596n = num13;
        }
        Float f6 = c9593h.f32597o;
        if (f6 == null) {
            return;
        }
        this.f32597o = f6;
    }

    /* renamed from: a */
    public final C9593h m24068a(C9593h c9593h) {
        C9593h c9593h2 = new C9593h();
        c9593h2.m24062b(this);
        c9593h2.m24062b(c9593h);
        return c9593h2;
    }

    /* renamed from: a */
    public final Integer m24073a() {
        Integer num = this.f32583a;
        return num != null ? num : Integer.valueOf(Assets.mainAssetsColor);
    }

    /* renamed from: a */
    public final Integer m24072a(Context context) {
        Integer num = this.f32598p;
        if (num != null) {
            return Integer.valueOf(Utils.m24117a(context, num.intValue()));
        }
        return 0;
    }

    /* renamed from: a */
    public final void m24071a(Context context, View view) {
        view.setPadding(m24072a(context).intValue(), m24057c(context).intValue(), m24063b(context).intValue(), m24055d(context).intValue());
    }

    /* renamed from: a */
    public final void m24070a(Context context, ViewGroup.MarginLayoutParams marginLayoutParams) {
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        Integer num5 = 0;
        marginLayoutParams.leftMargin = (this.f32602t != null ? Integer.valueOf(Utils.m24117a(context, num.intValue())) : null).intValue();
        marginLayoutParams.topMargin = (this.f32603u != null ? Integer.valueOf(Utils.m24117a(context, num2.intValue())) : null).intValue();
        marginLayoutParams.rightMargin = (this.f32604v != null ? Integer.valueOf(Utils.m24117a(context, num3.intValue())) : null).intValue();
        if (this.f32605w != null) {
            num5 = Integer.valueOf(Utils.m24117a(context, num4.intValue()));
        }
        marginLayoutParams.bottomMargin = num5.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (r0 != 17) goto L13;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24069a(android.widget.RelativeLayout.LayoutParams r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Integer r0 = r0.m24054e()
            int r0 = r0.intValue()
            r5 = r0
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L32
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L29
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L20
            r0 = r5
            r1 = 17
            if (r0 == r1) goto L32
            goto L38
        L20:
            r0 = r4
            r1 = 11
            r0.addRule(r1)
            goto L38
        L29:
            r0 = r4
            r1 = 9
            r0.addRule(r1)
            goto L38
        L32:
            r0 = r4
            r1 = 14
            r0.addRule(r1)
        L38:
            r0 = r3
            java.lang.Integer r0 = r0.m24052f()
            int r0 = r0.intValue()
            r5 = r0
            r0 = r5
            r1 = 16
            if (r0 == r1) goto L69
            r0 = r5
            r1 = 17
            if (r0 == r1) goto L69
            r0 = r5
            r1 = 48
            if (r0 == r1) goto L62
            r0 = r5
            r1 = 80
            if (r0 == r1) goto L5b
            goto L61
        L5b:
            r0 = r4
            r1 = 12
            r0.addRule(r1)
        L61:
            return
        L62:
            r0 = r4
            r1 = 10
            r0.addRule(r1)
            return
        L69:
            r0 = r4
            r1 = 15
            r0.addRule(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.C9593h.m24069a(android.widget.RelativeLayout$LayoutParams):void");
    }

    /* renamed from: a */
    public final void m24067a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f32598p = num;
        this.f32600r = num2;
        this.f32599q = num3;
        this.f32601s = num4;
    }

    /* renamed from: a */
    public final void m24066a(Number number) {
        this.f32594l = Float.valueOf(number.floatValue());
    }

    /* renamed from: a */
    public final void m24065a(String str) {
        if (TextUtils.isEmpty(str)) {
            m24067a(null, null, null, null);
            return;
        }
        String[] split = str.split(StringUtils.SPACE);
        if (split.length == 1) {
            int intValue = Utils.m24102b(split[0]).intValue();
            m24067a(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = Utils.m24102b(split[0]).intValue();
            int intValue3 = Utils.m24102b(split[1]).intValue();
            m24067a(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = Utils.m24102b(split[0]).intValue();
            int intValue5 = Utils.m24102b(split[1]).intValue();
            m24067a(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(Utils.m24102b(split[2]).intValue()));
        } else if (split.length != 4) {
        } else {
            m24067a(Integer.valueOf(Utils.m24102b(split[3]).intValue()), Integer.valueOf(Utils.m24102b(split[0]).intValue()), Integer.valueOf(Utils.m24102b(split[1]).intValue()), Integer.valueOf(Utils.m24102b(split[2]).intValue()));
        }
    }

    /* renamed from: b */
    public final Integer m24064b() {
        Integer num = this.f32584b;
        return num != null ? num : Integer.valueOf(Assets.backgroundColor);
    }

    /* renamed from: b */
    public final Integer m24063b(Context context) {
        Integer num = this.f32599q;
        if (num != null) {
            return Integer.valueOf(Utils.m24117a(context, num.intValue()));
        }
        return 0;
    }

    /* renamed from: b */
    public final void m24061b(Integer num, Integer num2, Integer num3, Integer num4) {
        this.f32602t = num;
        this.f32603u = num2;
        this.f32604v = num3;
        this.f32605w = num4;
    }

    /* renamed from: b */
    public final void m24060b(Number number) {
        this.f32595m = Float.valueOf(number.floatValue());
    }

    /* renamed from: b */
    public final void m24059b(String str) {
        if (TextUtils.isEmpty(str)) {
            m24061b(null, null, null, null);
            return;
        }
        String[] split = str.split(StringUtils.SPACE);
        if (split.length == 1) {
            int intValue = Utils.m24102b(split[0]).intValue();
            m24061b(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = Utils.m24102b(split[0]).intValue();
            int intValue3 = Utils.m24102b(split[1]).intValue();
            m24061b(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = Utils.m24102b(split[0]).intValue();
            int intValue5 = Utils.m24102b(split[1]).intValue();
            m24061b(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(Utils.m24102b(split[2]).intValue()));
        } else if (split.length != 4) {
        } else {
            m24061b(Integer.valueOf(Utils.m24102b(split[3]).intValue()), Integer.valueOf(Utils.m24102b(split[0]).intValue()), Integer.valueOf(Utils.m24102b(split[1]).intValue()), Integer.valueOf(Utils.m24102b(split[2]).intValue()));
        }
    }

    /* renamed from: c */
    public final Boolean m24058c() {
        Boolean bool = this.f32585c;
        return bool != null ? bool : Boolean.FALSE;
    }

    /* renamed from: c */
    public final Integer m24057c(Context context) {
        Integer num = this.f32600r;
        if (num != null) {
            return Integer.valueOf(Utils.m24117a(context, num.intValue()));
        }
        return 0;
    }

    /* renamed from: d */
    public final Boolean m24056d() {
        Boolean bool = this.f32586d;
        return bool != null ? bool : Boolean.TRUE;
    }

    /* renamed from: d */
    public final Integer m24055d(Context context) {
        Integer num = this.f32601s;
        if (num != null) {
            return Integer.valueOf(Utils.m24117a(context, num.intValue()));
        }
        return 0;
    }

    /* renamed from: e */
    public final Float m24053e(Context context) {
        Float f = this.f32593k;
        return f != null ? Float.valueOf(Utils.m24117a(context, f.floatValue())) : Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
    }

    /* renamed from: e */
    public final Integer m24054e() {
        Integer num = this.f32587e;
        if (num != null) {
            return num;
        }
        return 3;
    }

    /* renamed from: f */
    public final Integer m24052f() {
        Integer num = this.f32588f;
        if (num != null) {
            return num;
        }
        return 48;
    }

    /* renamed from: g */
    public final Float m24051g() {
        Float f = this.f32590h;
        return f != null ? f : Float.valueOf(1.0f);
    }

    /* renamed from: h */
    public final Integer m24050h() {
        Integer num = this.f32596n;
        if (num != null) {
            return num;
        }
        return 0;
    }

    /* renamed from: i */
    public final boolean m24049i() {
        return this.f32583a != null;
    }

    /* renamed from: j */
    public final boolean m24048j() {
        return this.f32584b != null;
    }
}
