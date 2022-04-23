package com.explorestack.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/h.class */
public final class h implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public Integer f19184a;

    /* renamed from: b  reason: collision with root package name */
    public Integer f19185b;

    /* renamed from: c  reason: collision with root package name */
    public Boolean f19186c;

    /* renamed from: d  reason: collision with root package name */
    public Boolean f19187d;
    public Integer e;
    public Integer f;
    public String g;
    public Float h;
    public Float i;
    public String j;
    public Float k;
    Float l;
    Float m;
    public Integer n;
    public Float o;
    private Integer p;
    private Integer q;
    private Integer r;
    private Integer s;
    private Integer t;
    private Integer u;
    private Integer v;
    private Integer w;

    public h() {
    }

    public h(h hVar) {
        b(hVar);
    }

    private void b(h hVar) {
        if (hVar != null) {
            Integer num = hVar.f19184a;
            if (num != null) {
                this.f19184a = num;
            }
            Integer num2 = hVar.f19185b;
            if (num2 != null) {
                this.f19185b = num2;
            }
            Boolean bool = hVar.f19186c;
            if (bool != null) {
                this.f19186c = bool;
            }
            Boolean bool2 = hVar.f19187d;
            if (bool2 != null) {
                this.f19187d = bool2;
            }
            Integer num3 = hVar.e;
            if (num3 != null) {
                this.e = num3;
            }
            Integer num4 = hVar.f;
            if (num4 != null) {
                this.f = num4;
            }
            String str = hVar.g;
            if (str != null) {
                this.g = str;
            }
            Float f = hVar.h;
            if (f != null) {
                this.h = f;
            }
            Float f2 = hVar.i;
            if (f2 != null) {
                this.i = f2;
            }
            Integer num5 = hVar.p;
            if (num5 != null) {
                this.p = num5;
            }
            Integer num6 = hVar.q;
            if (num6 != null) {
                this.q = num6;
            }
            Integer num7 = hVar.r;
            if (num7 != null) {
                this.r = num7;
            }
            Integer num8 = hVar.s;
            if (num8 != null) {
                this.s = num8;
            }
            Integer num9 = hVar.t;
            if (num9 != null) {
                this.t = num9;
            }
            Integer num10 = hVar.v;
            if (num10 != null) {
                this.v = num10;
            }
            Integer num11 = hVar.u;
            if (num11 != null) {
                this.u = num11;
            }
            Integer num12 = hVar.w;
            if (num12 != null) {
                this.w = num12;
            }
            String str2 = hVar.j;
            if (str2 != null) {
                this.j = str2;
            }
            Float f3 = hVar.k;
            if (f3 != null) {
                this.k = f3;
            }
            Float f4 = hVar.l;
            if (f4 != null) {
                this.l = f4;
            }
            Float f5 = hVar.m;
            if (f5 != null) {
                this.m = f5;
            }
            Integer num13 = hVar.n;
            if (num13 != null) {
                this.n = num13;
            }
            Float f6 = hVar.o;
            if (f6 != null) {
                this.o = f6;
            }
        }
    }

    public final h a(h hVar) {
        h hVar2 = new h();
        hVar2.b(this);
        hVar2.b(hVar);
        return hVar2;
    }

    public final Integer a() {
        Integer num = this.f19184a;
        return num != null ? num : Integer.valueOf(Assets.mainAssetsColor);
    }

    public final Integer a(Context context) {
        Integer num = this.p;
        if (num != null) {
            return Integer.valueOf(Utils.a(context, num.intValue()));
        }
        return 0;
    }

    public final void a(Context context, View view) {
        view.setPadding(a(context).intValue(), c(context).intValue(), b(context).intValue(), d(context).intValue());
    }

    public final void a(Context context, ViewGroup.MarginLayoutParams marginLayoutParams) {
        Integer num = this.t;
        Integer num2 = 0;
        marginLayoutParams.leftMargin = (num != null ? Integer.valueOf(Utils.a(context, num.intValue())) : num2).intValue();
        Integer num3 = this.u;
        marginLayoutParams.topMargin = (num3 != null ? Integer.valueOf(Utils.a(context, num3.intValue())) : num2).intValue();
        Integer num4 = this.v;
        marginLayoutParams.rightMargin = (num4 != null ? Integer.valueOf(Utils.a(context, num4.intValue())) : num2).intValue();
        Integer num5 = this.w;
        if (num5 != null) {
            num2 = Integer.valueOf(Utils.a(context, num5.intValue()));
        }
        marginLayoutParams.bottomMargin = num2.intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if (r0 != 17) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.widget.RelativeLayout.LayoutParams r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Integer r0 = r0.e()
            int r0 = r0.intValue()
            r5 = r0
            r0 = r5
            r1 = 1
            if (r0 == r1) goto L_0x0032
            r0 = r5
            r1 = 3
            if (r0 == r1) goto L_0x0029
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L_0x0020
            r0 = r5
            r1 = 17
            if (r0 == r1) goto L_0x0032
            goto L_0x0038
        L_0x0020:
            r0 = r4
            r1 = 11
            r0.addRule(r1)
            goto L_0x0038
        L_0x0029:
            r0 = r4
            r1 = 9
            r0.addRule(r1)
            goto L_0x0038
        L_0x0032:
            r0 = r4
            r1 = 14
            r0.addRule(r1)
        L_0x0038:
            r0 = r3
            java.lang.Integer r0 = r0.f()
            int r0 = r0.intValue()
            r5 = r0
            r0 = r5
            r1 = 16
            if (r0 == r1) goto L_0x0069
            r0 = r5
            r1 = 17
            if (r0 == r1) goto L_0x0069
            r0 = r5
            r1 = 48
            if (r0 == r1) goto L_0x0062
            r0 = r5
            r1 = 80
            if (r0 == r1) goto L_0x005b
            goto L_0x0061
        L_0x005b:
            r0 = r4
            r1 = 12
            r0.addRule(r1)
        L_0x0061:
            return
        L_0x0062:
            r0 = r4
            r1 = 10
            r0.addRule(r1)
            return
        L_0x0069:
            r0 = r4
            r1 = 15
            r0.addRule(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.h.a(android.widget.RelativeLayout$LayoutParams):void");
    }

    public final void a(Integer num, Integer num2, Integer num3, Integer num4) {
        this.p = num;
        this.r = num2;
        this.q = num3;
        this.s = num4;
    }

    public final void a(Number number) {
        this.l = Float.valueOf(number.floatValue());
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            a(null, null, null, null);
            return;
        }
        String[] split = str.split(StringUtils.SPACE);
        if (split.length == 1) {
            int intValue = Utils.b(split[0]).intValue();
            a(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = Utils.b(split[0]).intValue();
            int intValue3 = Utils.b(split[1]).intValue();
            a(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = Utils.b(split[0]).intValue();
            int intValue5 = Utils.b(split[1]).intValue();
            a(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(Utils.b(split[2]).intValue()));
        } else if (split.length == 4) {
            a(Integer.valueOf(Utils.b(split[3]).intValue()), Integer.valueOf(Utils.b(split[0]).intValue()), Integer.valueOf(Utils.b(split[1]).intValue()), Integer.valueOf(Utils.b(split[2]).intValue()));
        }
    }

    public final Integer b() {
        Integer num = this.f19185b;
        return num != null ? num : Integer.valueOf(Assets.backgroundColor);
    }

    public final Integer b(Context context) {
        Integer num = this.q;
        if (num != null) {
            return Integer.valueOf(Utils.a(context, num.intValue()));
        }
        return 0;
    }

    public final void b(Integer num, Integer num2, Integer num3, Integer num4) {
        this.t = num;
        this.u = num2;
        this.v = num3;
        this.w = num4;
    }

    public final void b(Number number) {
        this.m = Float.valueOf(number.floatValue());
    }

    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            b(null, null, null, null);
            return;
        }
        String[] split = str.split(StringUtils.SPACE);
        if (split.length == 1) {
            int intValue = Utils.b(split[0]).intValue();
            b(Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue), Integer.valueOf(intValue));
        } else if (split.length == 2) {
            int intValue2 = Utils.b(split[0]).intValue();
            int intValue3 = Utils.b(split[1]).intValue();
            b(Integer.valueOf(intValue3), Integer.valueOf(intValue2), Integer.valueOf(intValue3), Integer.valueOf(intValue2));
        } else if (split.length == 3) {
            int intValue4 = Utils.b(split[0]).intValue();
            int intValue5 = Utils.b(split[1]).intValue();
            b(Integer.valueOf(intValue5), Integer.valueOf(intValue4), Integer.valueOf(intValue5), Integer.valueOf(Utils.b(split[2]).intValue()));
        } else if (split.length == 4) {
            b(Integer.valueOf(Utils.b(split[3]).intValue()), Integer.valueOf(Utils.b(split[0]).intValue()), Integer.valueOf(Utils.b(split[1]).intValue()), Integer.valueOf(Utils.b(split[2]).intValue()));
        }
    }

    public final Boolean c() {
        Boolean bool = this.f19186c;
        return bool != null ? bool : Boolean.FALSE;
    }

    public final Integer c(Context context) {
        Integer num = this.r;
        if (num != null) {
            return Integer.valueOf(Utils.a(context, num.intValue()));
        }
        return 0;
    }

    public final Boolean d() {
        Boolean bool = this.f19187d;
        return bool != null ? bool : Boolean.TRUE;
    }

    public final Integer d(Context context) {
        Integer num = this.s;
        if (num != null) {
            return Integer.valueOf(Utils.a(context, num.intValue()));
        }
        return 0;
    }

    public final Float e(Context context) {
        Float f = this.k;
        return f != null ? Float.valueOf(Utils.a(context, f.floatValue())) : Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
    }

    public final Integer e() {
        Integer num = this.e;
        if (num != null) {
            return num;
        }
        return 3;
    }

    public final Integer f() {
        Integer num = this.f;
        if (num != null) {
            return num;
        }
        return 48;
    }

    public final Float g() {
        Float f = this.h;
        return f != null ? f : Float.valueOf(1.0f);
    }

    public final Integer h() {
        Integer num = this.n;
        if (num != null) {
            return num;
        }
        return 0;
    }

    public final boolean i() {
        return this.f19184a != null;
    }

    public final boolean j() {
        return this.f19185b != null;
    }
}
