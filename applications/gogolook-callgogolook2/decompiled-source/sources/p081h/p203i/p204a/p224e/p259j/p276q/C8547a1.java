package p081h.p203i.p204a.p224e.p259j.p276q;

import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.p007ts.H262Reader;
import com.mopub.mobileads.MoPubView;
import java.io.IOException;
/* renamed from: h.i.a.e.j.q.a1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a1.class */
public final class C8547a1 extends AbstractC8714q7<C8547a1> {

    /* renamed from: P */
    public static volatile C8547a1[] f19561P;

    /* renamed from: c */
    public Integer f19577c = null;

    /* renamed from: d */
    public C8770x0[] f19578d = C8770x0.m17074e();

    /* renamed from: e */
    public C8579d1[] f19579e = C8579d1.m17711e();

    /* renamed from: f */
    public Long f19580f = null;

    /* renamed from: g */
    public Long f19581g = null;

    /* renamed from: h */
    public Long f19582h = null;

    /* renamed from: i */
    public Long f19583i = null;

    /* renamed from: j */
    public Long f19584j = null;

    /* renamed from: k */
    public String f19585k = null;

    /* renamed from: l */
    public String f19586l = null;

    /* renamed from: m */
    public String f19587m = null;

    /* renamed from: n */
    public String f19588n = null;

    /* renamed from: o */
    public Integer f19589o = null;

    /* renamed from: p */
    public String f19590p = null;

    /* renamed from: q */
    public String f19591q = null;

    /* renamed from: r */
    public String f19592r = null;

    /* renamed from: s */
    public Long f19593s = null;

    /* renamed from: t */
    public Long f19594t = null;

    /* renamed from: u */
    public String f19595u = null;

    /* renamed from: v */
    public Boolean f19596v = null;

    /* renamed from: w */
    public String f19597w = null;

    /* renamed from: x */
    public Long f19598x = null;

    /* renamed from: y */
    public Integer f19599y = null;

    /* renamed from: z */
    public String f19600z = null;

    /* renamed from: A */
    public String f19562A = null;

    /* renamed from: B */
    public Boolean f19563B = null;

    /* renamed from: C */
    public C8752v0[] f19564C = C8752v0.m17108e();

    /* renamed from: D */
    public String f19565D = null;

    /* renamed from: E */
    public Integer f19566E = null;

    /* renamed from: F */
    public Integer f19567F = null;

    /* renamed from: G */
    public Integer f19568G = null;

    /* renamed from: H */
    public String f19569H = null;

    /* renamed from: I */
    public Long f19570I = null;

    /* renamed from: J */
    public Long f19571J = null;

    /* renamed from: K */
    public String f19572K = null;

    /* renamed from: L */
    public String f19573L = null;

    /* renamed from: M */
    public Integer f19574M = null;

    /* renamed from: N */
    public String f19575N = null;

    /* renamed from: O */
    public C8627i0 f19576O = null;

    public C8547a1() {
        this.f19936b = null;
        this.f20095a = -1;
    }

    /* renamed from: e */
    public static C8547a1[] m17846e() {
        if (f19561P == null) {
            synchronized (C8750u7.f20012b) {
                if (f19561P == null) {
                    f19561P = new C8547a1[0];
                }
            }
        }
        return f19561P;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final int mo16954a() {
        int a = super.mo16954a();
        Integer num = this.f19577c;
        int i = a;
        if (num != null) {
            i = a + C8696o7.m17250c(1, num.intValue());
        }
        C8770x0[] x0VarArr = this.f19578d;
        int i2 = 0;
        int i3 = i;
        if (x0VarArr != null) {
            i3 = i;
            if (x0VarArr.length > 0) {
                int i4 = 0;
                while (true) {
                    C8770x0[] x0VarArr2 = this.f19578d;
                    if (i4 >= x0VarArr2.length) {
                        break;
                    }
                    C8770x0 x0Var = x0VarArr2[i4];
                    i = i;
                    if (x0Var != null) {
                        i += C8696o7.m17255b(2, x0Var);
                    }
                    i4++;
                }
                i3 = i;
            }
        }
        C8579d1[] d1VarArr = this.f19579e;
        int i5 = i3;
        if (d1VarArr != null) {
            i5 = i3;
            if (d1VarArr.length > 0) {
                i5 = i3;
                int i6 = 0;
                while (true) {
                    C8579d1[] d1VarArr2 = this.f19579e;
                    if (i6 >= d1VarArr2.length) {
                        break;
                    }
                    C8579d1 d1Var = d1VarArr2[i6];
                    i5 = i5;
                    if (d1Var != null) {
                        i5 += C8696o7.m17255b(3, d1Var);
                    }
                    i6++;
                }
            }
        }
        Long l = this.f19580f;
        int i7 = i5;
        if (l != null) {
            i7 = i5 + C8696o7.m17249c(4, l.longValue());
        }
        Long l2 = this.f19581g;
        int i8 = i7;
        if (l2 != null) {
            i8 = i7 + C8696o7.m17249c(5, l2.longValue());
        }
        Long l3 = this.f19582h;
        int i9 = i8;
        if (l3 != null) {
            i9 = i8 + C8696o7.m17249c(6, l3.longValue());
        }
        Long l4 = this.f19584j;
        int i10 = i9;
        if (l4 != null) {
            i10 = i9 + C8696o7.m17249c(7, l4.longValue());
        }
        String str = this.f19585k;
        int i11 = i10;
        if (str != null) {
            i11 = i10 + C8696o7.m17254b(8, str);
        }
        String str2 = this.f19586l;
        int i12 = i11;
        if (str2 != null) {
            i12 = i11 + C8696o7.m17254b(9, str2);
        }
        String str3 = this.f19587m;
        int i13 = i12;
        if (str3 != null) {
            i13 = i12 + C8696o7.m17254b(10, str3);
        }
        String str4 = this.f19588n;
        int i14 = i13;
        if (str4 != null) {
            i14 = i13 + C8696o7.m17254b(11, str4);
        }
        Integer num2 = this.f19589o;
        int i15 = i14;
        if (num2 != null) {
            i15 = i14 + C8696o7.m17250c(12, num2.intValue());
        }
        String str5 = this.f19590p;
        int i16 = i15;
        if (str5 != null) {
            i16 = i15 + C8696o7.m17254b(13, str5);
        }
        String str6 = this.f19591q;
        int i17 = i16;
        if (str6 != null) {
            i17 = i16 + C8696o7.m17254b(14, str6);
        }
        String str7 = this.f19592r;
        int i18 = i17;
        if (str7 != null) {
            i18 = i17 + C8696o7.m17254b(16, str7);
        }
        Long l5 = this.f19593s;
        int i19 = i18;
        if (l5 != null) {
            i19 = i18 + C8696o7.m17249c(17, l5.longValue());
        }
        Long l6 = this.f19594t;
        int i20 = i19;
        if (l6 != null) {
            i20 = i19 + C8696o7.m17249c(18, l6.longValue());
        }
        String str8 = this.f19595u;
        int i21 = i20;
        if (str8 != null) {
            i21 = i20 + C8696o7.m17254b(19, str8);
        }
        Boolean bool = this.f19596v;
        int i22 = i21;
        if (bool != null) {
            bool.booleanValue();
            i22 = i21 + C8696o7.m17251c(20) + 1;
        }
        String str9 = this.f19597w;
        int i23 = i22;
        if (str9 != null) {
            i23 = i22 + C8696o7.m17254b(21, str9);
        }
        Long l7 = this.f19598x;
        int i24 = i23;
        if (l7 != null) {
            i24 = i23 + C8696o7.m17249c(22, l7.longValue());
        }
        Integer num3 = this.f19599y;
        int i25 = i24;
        if (num3 != null) {
            i25 = i24 + C8696o7.m17250c(23, num3.intValue());
        }
        String str10 = this.f19600z;
        int i26 = i25;
        if (str10 != null) {
            i26 = i25 + C8696o7.m17254b(24, str10);
        }
        String str11 = this.f19562A;
        int i27 = i26;
        if (str11 != null) {
            i27 = i26 + C8696o7.m17254b(25, str11);
        }
        Long l8 = this.f19583i;
        int i28 = i27;
        if (l8 != null) {
            i28 = i27 + C8696o7.m17249c(26, l8.longValue());
        }
        Boolean bool2 = this.f19563B;
        int i29 = i28;
        if (bool2 != null) {
            bool2.booleanValue();
            i29 = i28 + C8696o7.m17251c(28) + 1;
        }
        C8752v0[] v0VarArr = this.f19564C;
        int i30 = i29;
        if (v0VarArr != null) {
            i30 = i29;
            if (v0VarArr.length > 0) {
                while (true) {
                    C8752v0[] v0VarArr2 = this.f19564C;
                    i30 = i29;
                    if (i2 >= v0VarArr2.length) {
                        break;
                    }
                    C8752v0 v0Var = v0VarArr2[i2];
                    i29 = i29;
                    if (v0Var != null) {
                        i29 += C8696o7.m17255b(29, v0Var);
                    }
                    i2++;
                }
            }
        }
        String str12 = this.f19565D;
        int i31 = i30;
        if (str12 != null) {
            i31 = i30 + C8696o7.m17254b(30, str12);
        }
        Integer num4 = this.f19566E;
        int i32 = i31;
        if (num4 != null) {
            i32 = i31 + C8696o7.m17250c(31, num4.intValue());
        }
        Integer num5 = this.f19567F;
        int i33 = i32;
        if (num5 != null) {
            i33 = i32 + C8696o7.m17250c(32, num5.intValue());
        }
        Integer num6 = this.f19568G;
        int i34 = i33;
        if (num6 != null) {
            i34 = i33 + C8696o7.m17250c(33, num6.intValue());
        }
        String str13 = this.f19569H;
        int i35 = i34;
        if (str13 != null) {
            i35 = i34 + C8696o7.m17254b(34, str13);
        }
        Long l9 = this.f19570I;
        int i36 = i35;
        if (l9 != null) {
            i36 = i35 + C8696o7.m17249c(35, l9.longValue());
        }
        Long l10 = this.f19571J;
        int i37 = i36;
        if (l10 != null) {
            i37 = i36 + C8696o7.m17249c(36, l10.longValue());
        }
        String str14 = this.f19572K;
        int i38 = i37;
        if (str14 != null) {
            i38 = i37 + C8696o7.m17254b(37, str14);
        }
        String str15 = this.f19573L;
        int i39 = i38;
        if (str15 != null) {
            i39 = i38 + C8696o7.m17254b(38, str15);
        }
        Integer num7 = this.f19574M;
        int i40 = i39;
        if (num7 != null) {
            i40 = i39 + C8696o7.m17250c(39, num7.intValue());
        }
        String str16 = this.f19575N;
        int i41 = i40;
        if (str16 != null) {
            i41 = i40 + C8696o7.m17254b(41, str16);
        }
        C8627i0 i0Var = this.f19576O;
        int i42 = i41;
        if (i0Var != null) {
            i42 = i41 + AbstractC8632i3.m17520c(44, i0Var);
        }
        return i42;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final /* synthetic */ AbstractC8768w7 mo16953a(C8686n7 n7Var) throws IOException {
        while (true) {
            int c = n7Var.m17300c();
            switch (c) {
                case 0:
                    return this;
                case 8:
                    this.f19577c = Integer.valueOf(n7Var.m17296e());
                    break;
                case 18:
                    int a = C8799z7.m16920a(n7Var, 18);
                    C8770x0[] x0VarArr = this.f19578d;
                    int length = x0VarArr == null ? 0 : x0VarArr.length;
                    C8770x0[] x0VarArr2 = new C8770x0[a + length];
                    int i = length;
                    if (length != 0) {
                        System.arraycopy(this.f19578d, 0, x0VarArr2, 0, length);
                        i = length;
                    }
                    while (i < x0VarArr2.length - 1) {
                        x0VarArr2[i] = new C8770x0();
                        n7Var.m17305a(x0VarArr2[i]);
                        n7Var.m17300c();
                        i++;
                    }
                    x0VarArr2[i] = new C8770x0();
                    n7Var.m17305a(x0VarArr2[i]);
                    this.f19578d = x0VarArr2;
                    break;
                case 26:
                    int a2 = C8799z7.m16920a(n7Var, 26);
                    C8579d1[] d1VarArr = this.f19579e;
                    int length2 = d1VarArr == null ? 0 : d1VarArr.length;
                    C8579d1[] d1VarArr2 = new C8579d1[a2 + length2];
                    int i2 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.f19579e, 0, d1VarArr2, 0, length2);
                        i2 = length2;
                    }
                    while (i2 < d1VarArr2.length - 1) {
                        d1VarArr2[i2] = new C8579d1();
                        n7Var.m17305a(d1VarArr2[i2]);
                        n7Var.m17300c();
                        i2++;
                    }
                    d1VarArr2[i2] = new C8579d1();
                    n7Var.m17305a(d1VarArr2[i2]);
                    this.f19579e = d1VarArr2;
                    break;
                case 32:
                    this.f19580f = Long.valueOf(n7Var.m17294f());
                    break;
                case 40:
                    this.f19581g = Long.valueOf(n7Var.m17294f());
                    break;
                case 48:
                    this.f19582h = Long.valueOf(n7Var.m17294f());
                    break;
                case 56:
                    this.f19584j = Long.valueOf(n7Var.m17294f());
                    break;
                case 66:
                    this.f19585k = n7Var.m17303b();
                    break;
                case 74:
                    this.f19586l = n7Var.m17303b();
                    break;
                case 82:
                    this.f19587m = n7Var.m17303b();
                    break;
                case 90:
                    this.f19588n = n7Var.m17303b();
                    break;
                case 96:
                    this.f19589o = Integer.valueOf(n7Var.m17296e());
                    break;
                case 106:
                    this.f19590p = n7Var.m17303b();
                    break;
                case 114:
                    this.f19591q = n7Var.m17303b();
                    break;
                case 130:
                    this.f19592r = n7Var.m17303b();
                    break;
                case 136:
                    this.f19593s = Long.valueOf(n7Var.m17294f());
                    break;
                case 144:
                    this.f19594t = Long.valueOf(n7Var.m17294f());
                    break;
                case 154:
                    this.f19595u = n7Var.m17303b();
                    break;
                case 160:
                    this.f19596v = Boolean.valueOf(n7Var.m17298d());
                    break;
                case 170:
                    this.f19597w = n7Var.m17303b();
                    break;
                case MatroskaExtractor.ID_PIXEL_WIDTH /* 176 */:
                    this.f19598x = Long.valueOf(n7Var.m17294f());
                    break;
                case H262Reader.START_GROUP /* 184 */:
                    this.f19599y = Integer.valueOf(n7Var.m17296e());
                    break;
                case 194:
                    this.f19600z = n7Var.m17303b();
                    break;
                case 202:
                    this.f19562A = n7Var.m17303b();
                    break;
                case 208:
                    this.f19583i = Long.valueOf(n7Var.m17294f());
                    break;
                case 224:
                    this.f19563B = Boolean.valueOf(n7Var.m17298d());
                    break;
                case 234:
                    int a3 = C8799z7.m16920a(n7Var, 234);
                    C8752v0[] v0VarArr = this.f19564C;
                    int length3 = v0VarArr == null ? 0 : v0VarArr.length;
                    C8752v0[] v0VarArr2 = new C8752v0[a3 + length3];
                    int i3 = length3;
                    if (length3 != 0) {
                        System.arraycopy(this.f19564C, 0, v0VarArr2, 0, length3);
                        i3 = length3;
                    }
                    while (i3 < v0VarArr2.length - 1) {
                        v0VarArr2[i3] = new C8752v0();
                        n7Var.m17305a(v0VarArr2[i3]);
                        n7Var.m17300c();
                        i3++;
                    }
                    v0VarArr2[i3] = new C8752v0();
                    n7Var.m17305a(v0VarArr2[i3]);
                    this.f19564C = v0VarArr2;
                    break;
                case 242:
                    this.f19565D = n7Var.m17303b();
                    break;
                case 248:
                    this.f19566E = Integer.valueOf(n7Var.m17296e());
                    break;
                case 256:
                    this.f19567F = Integer.valueOf(n7Var.m17296e());
                    break;
                case 264:
                    this.f19568G = Integer.valueOf(n7Var.m17296e());
                    break;
                case 274:
                    this.f19569H = n7Var.m17303b();
                    break;
                case MoPubView.AbstractC3840b.HEIGHT_280_INT /* 280 */:
                    this.f19570I = Long.valueOf(n7Var.m17294f());
                    break;
                case 288:
                    this.f19571J = Long.valueOf(n7Var.m17294f());
                    break;
                case 298:
                    this.f19572K = n7Var.m17303b();
                    break;
                case 306:
                    this.f19573L = n7Var.m17303b();
                    break;
                case 312:
                    this.f19574M = Integer.valueOf(n7Var.m17296e());
                    break;
                case 330:
                    this.f19575N = n7Var.m17303b();
                    break;
                case 354:
                    this.f19576O = (C8627i0) n7Var.m17306a(C8627i0.m17555h());
                    break;
                default:
                    if (super.m17236a(n7Var, c)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8714q7, p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8768w7
    /* renamed from: a */
    public final void mo16952a(C8696o7 o7Var) throws IOException {
        Integer num = this.f19577c;
        if (num != null) {
            o7Var.m17257b(1, num.intValue());
        }
        C8770x0[] x0VarArr = this.f19578d;
        int i = 0;
        if (x0VarArr != null && x0VarArr.length > 0) {
            int i2 = 0;
            while (true) {
                C8770x0[] x0VarArr2 = this.f19578d;
                if (i2 >= x0VarArr2.length) {
                    break;
                }
                C8770x0 x0Var = x0VarArr2[i2];
                if (x0Var != null) {
                    o7Var.m17269a(2, x0Var);
                }
                i2++;
            }
        }
        C8579d1[] d1VarArr = this.f19579e;
        if (d1VarArr != null && d1VarArr.length > 0) {
            int i3 = 0;
            while (true) {
                C8579d1[] d1VarArr2 = this.f19579e;
                if (i3 >= d1VarArr2.length) {
                    break;
                }
                C8579d1 d1Var = d1VarArr2[i3];
                if (d1Var != null) {
                    o7Var.m17269a(3, d1Var);
                }
                i3++;
            }
        }
        Long l = this.f19580f;
        if (l != null) {
            o7Var.m17256b(4, l.longValue());
        }
        Long l2 = this.f19581g;
        if (l2 != null) {
            o7Var.m17256b(5, l2.longValue());
        }
        Long l3 = this.f19582h;
        if (l3 != null) {
            o7Var.m17256b(6, l3.longValue());
        }
        Long l4 = this.f19584j;
        if (l4 != null) {
            o7Var.m17256b(7, l4.longValue());
        }
        String str = this.f19585k;
        if (str != null) {
            o7Var.m17268a(8, str);
        }
        String str2 = this.f19586l;
        if (str2 != null) {
            o7Var.m17268a(9, str2);
        }
        String str3 = this.f19587m;
        if (str3 != null) {
            o7Var.m17268a(10, str3);
        }
        String str4 = this.f19588n;
        if (str4 != null) {
            o7Var.m17268a(11, str4);
        }
        Integer num2 = this.f19589o;
        if (num2 != null) {
            o7Var.m17257b(12, num2.intValue());
        }
        String str5 = this.f19590p;
        if (str5 != null) {
            o7Var.m17268a(13, str5);
        }
        String str6 = this.f19591q;
        if (str6 != null) {
            o7Var.m17268a(14, str6);
        }
        String str7 = this.f19592r;
        if (str7 != null) {
            o7Var.m17268a(16, str7);
        }
        Long l5 = this.f19593s;
        if (l5 != null) {
            o7Var.m17256b(17, l5.longValue());
        }
        Long l6 = this.f19594t;
        if (l6 != null) {
            o7Var.m17256b(18, l6.longValue());
        }
        String str8 = this.f19595u;
        if (str8 != null) {
            o7Var.m17268a(19, str8);
        }
        Boolean bool = this.f19596v;
        if (bool != null) {
            o7Var.m17267a(20, bool.booleanValue());
        }
        String str9 = this.f19597w;
        if (str9 != null) {
            o7Var.m17268a(21, str9);
        }
        Long l7 = this.f19598x;
        if (l7 != null) {
            o7Var.m17256b(22, l7.longValue());
        }
        Integer num3 = this.f19599y;
        if (num3 != null) {
            o7Var.m17257b(23, num3.intValue());
        }
        String str10 = this.f19600z;
        if (str10 != null) {
            o7Var.m17268a(24, str10);
        }
        String str11 = this.f19562A;
        if (str11 != null) {
            o7Var.m17268a(25, str11);
        }
        Long l8 = this.f19583i;
        if (l8 != null) {
            o7Var.m17256b(26, l8.longValue());
        }
        Boolean bool2 = this.f19563B;
        if (bool2 != null) {
            o7Var.m17267a(28, bool2.booleanValue());
        }
        C8752v0[] v0VarArr = this.f19564C;
        if (v0VarArr != null && v0VarArr.length > 0) {
            while (true) {
                C8752v0[] v0VarArr2 = this.f19564C;
                if (i >= v0VarArr2.length) {
                    break;
                }
                C8752v0 v0Var = v0VarArr2[i];
                if (v0Var != null) {
                    o7Var.m17269a(29, v0Var);
                }
                i++;
            }
        }
        String str12 = this.f19565D;
        if (str12 != null) {
            o7Var.m17268a(30, str12);
        }
        Integer num4 = this.f19566E;
        if (num4 != null) {
            o7Var.m17257b(31, num4.intValue());
        }
        Integer num5 = this.f19567F;
        if (num5 != null) {
            o7Var.m17257b(32, num5.intValue());
        }
        Integer num6 = this.f19568G;
        if (num6 != null) {
            o7Var.m17257b(33, num6.intValue());
        }
        String str13 = this.f19569H;
        if (str13 != null) {
            o7Var.m17268a(34, str13);
        }
        Long l9 = this.f19570I;
        if (l9 != null) {
            o7Var.m17256b(35, l9.longValue());
        }
        Long l10 = this.f19571J;
        if (l10 != null) {
            o7Var.m17256b(36, l10.longValue());
        }
        String str14 = this.f19572K;
        if (str14 != null) {
            o7Var.m17268a(37, str14);
        }
        String str15 = this.f19573L;
        if (str15 != null) {
            o7Var.m17268a(38, str15);
        }
        Integer num7 = this.f19574M;
        if (num7 != null) {
            o7Var.m17257b(39, num7.intValue());
        }
        String str16 = this.f19575N;
        if (str16 != null) {
            o7Var.m17268a(41, str16);
        }
        C8627i0 i0Var = this.f19576O;
        if (i0Var != null) {
            o7Var.m17270a(44, i0Var);
        }
        super.mo16952a(o7Var);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C8547a1)) {
            return false;
        }
        C8547a1 a1Var = (C8547a1) obj;
        Integer num = this.f19577c;
        if (num == null) {
            if (a1Var.f19577c != null) {
                return false;
            }
        } else if (!num.equals(a1Var.f19577c)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19578d, a1Var.f19578d) || !C8750u7.m17109a(this.f19579e, a1Var.f19579e)) {
            return false;
        }
        Long l = this.f19580f;
        if (l == null) {
            if (a1Var.f19580f != null) {
                return false;
            }
        } else if (!l.equals(a1Var.f19580f)) {
            return false;
        }
        Long l2 = this.f19581g;
        if (l2 == null) {
            if (a1Var.f19581g != null) {
                return false;
            }
        } else if (!l2.equals(a1Var.f19581g)) {
            return false;
        }
        Long l3 = this.f19582h;
        if (l3 == null) {
            if (a1Var.f19582h != null) {
                return false;
            }
        } else if (!l3.equals(a1Var.f19582h)) {
            return false;
        }
        Long l4 = this.f19583i;
        if (l4 == null) {
            if (a1Var.f19583i != null) {
                return false;
            }
        } else if (!l4.equals(a1Var.f19583i)) {
            return false;
        }
        Long l5 = this.f19584j;
        if (l5 == null) {
            if (a1Var.f19584j != null) {
                return false;
            }
        } else if (!l5.equals(a1Var.f19584j)) {
            return false;
        }
        String str = this.f19585k;
        if (str == null) {
            if (a1Var.f19585k != null) {
                return false;
            }
        } else if (!str.equals(a1Var.f19585k)) {
            return false;
        }
        String str2 = this.f19586l;
        if (str2 == null) {
            if (a1Var.f19586l != null) {
                return false;
            }
        } else if (!str2.equals(a1Var.f19586l)) {
            return false;
        }
        String str3 = this.f19587m;
        if (str3 == null) {
            if (a1Var.f19587m != null) {
                return false;
            }
        } else if (!str3.equals(a1Var.f19587m)) {
            return false;
        }
        String str4 = this.f19588n;
        if (str4 == null) {
            if (a1Var.f19588n != null) {
                return false;
            }
        } else if (!str4.equals(a1Var.f19588n)) {
            return false;
        }
        Integer num2 = this.f19589o;
        if (num2 == null) {
            if (a1Var.f19589o != null) {
                return false;
            }
        } else if (!num2.equals(a1Var.f19589o)) {
            return false;
        }
        String str5 = this.f19590p;
        if (str5 == null) {
            if (a1Var.f19590p != null) {
                return false;
            }
        } else if (!str5.equals(a1Var.f19590p)) {
            return false;
        }
        String str6 = this.f19591q;
        if (str6 == null) {
            if (a1Var.f19591q != null) {
                return false;
            }
        } else if (!str6.equals(a1Var.f19591q)) {
            return false;
        }
        String str7 = this.f19592r;
        if (str7 == null) {
            if (a1Var.f19592r != null) {
                return false;
            }
        } else if (!str7.equals(a1Var.f19592r)) {
            return false;
        }
        Long l6 = this.f19593s;
        if (l6 == null) {
            if (a1Var.f19593s != null) {
                return false;
            }
        } else if (!l6.equals(a1Var.f19593s)) {
            return false;
        }
        Long l7 = this.f19594t;
        if (l7 == null) {
            if (a1Var.f19594t != null) {
                return false;
            }
        } else if (!l7.equals(a1Var.f19594t)) {
            return false;
        }
        String str8 = this.f19595u;
        if (str8 == null) {
            if (a1Var.f19595u != null) {
                return false;
            }
        } else if (!str8.equals(a1Var.f19595u)) {
            return false;
        }
        Boolean bool = this.f19596v;
        if (bool == null) {
            if (a1Var.f19596v != null) {
                return false;
            }
        } else if (!bool.equals(a1Var.f19596v)) {
            return false;
        }
        String str9 = this.f19597w;
        if (str9 == null) {
            if (a1Var.f19597w != null) {
                return false;
            }
        } else if (!str9.equals(a1Var.f19597w)) {
            return false;
        }
        Long l8 = this.f19598x;
        if (l8 == null) {
            if (a1Var.f19598x != null) {
                return false;
            }
        } else if (!l8.equals(a1Var.f19598x)) {
            return false;
        }
        Integer num3 = this.f19599y;
        if (num3 == null) {
            if (a1Var.f19599y != null) {
                return false;
            }
        } else if (!num3.equals(a1Var.f19599y)) {
            return false;
        }
        String str10 = this.f19600z;
        if (str10 == null) {
            if (a1Var.f19600z != null) {
                return false;
            }
        } else if (!str10.equals(a1Var.f19600z)) {
            return false;
        }
        String str11 = this.f19562A;
        if (str11 == null) {
            if (a1Var.f19562A != null) {
                return false;
            }
        } else if (!str11.equals(a1Var.f19562A)) {
            return false;
        }
        Boolean bool2 = this.f19563B;
        if (bool2 == null) {
            if (a1Var.f19563B != null) {
                return false;
            }
        } else if (!bool2.equals(a1Var.f19563B)) {
            return false;
        }
        if (!C8750u7.m17109a(this.f19564C, a1Var.f19564C)) {
            return false;
        }
        String str12 = this.f19565D;
        if (str12 == null) {
            if (a1Var.f19565D != null) {
                return false;
            }
        } else if (!str12.equals(a1Var.f19565D)) {
            return false;
        }
        Integer num4 = this.f19566E;
        if (num4 == null) {
            if (a1Var.f19566E != null) {
                return false;
            }
        } else if (!num4.equals(a1Var.f19566E)) {
            return false;
        }
        Integer num5 = this.f19567F;
        if (num5 == null) {
            if (a1Var.f19567F != null) {
                return false;
            }
        } else if (!num5.equals(a1Var.f19567F)) {
            return false;
        }
        Integer num6 = this.f19568G;
        if (num6 == null) {
            if (a1Var.f19568G != null) {
                return false;
            }
        } else if (!num6.equals(a1Var.f19568G)) {
            return false;
        }
        String str13 = this.f19569H;
        if (str13 == null) {
            if (a1Var.f19569H != null) {
                return false;
            }
        } else if (!str13.equals(a1Var.f19569H)) {
            return false;
        }
        Long l9 = this.f19570I;
        if (l9 == null) {
            if (a1Var.f19570I != null) {
                return false;
            }
        } else if (!l9.equals(a1Var.f19570I)) {
            return false;
        }
        Long l10 = this.f19571J;
        if (l10 == null) {
            if (a1Var.f19571J != null) {
                return false;
            }
        } else if (!l10.equals(a1Var.f19571J)) {
            return false;
        }
        String str14 = this.f19572K;
        if (str14 == null) {
            if (a1Var.f19572K != null) {
                return false;
            }
        } else if (!str14.equals(a1Var.f19572K)) {
            return false;
        }
        String str15 = this.f19573L;
        if (str15 == null) {
            if (a1Var.f19573L != null) {
                return false;
            }
        } else if (!str15.equals(a1Var.f19573L)) {
            return false;
        }
        Integer num7 = this.f19574M;
        if (num7 == null) {
            if (a1Var.f19574M != null) {
                return false;
            }
        } else if (!num7.equals(a1Var.f19574M)) {
            return false;
        }
        String str16 = this.f19575N;
        if (str16 == null) {
            if (a1Var.f19575N != null) {
                return false;
            }
        } else if (!str16.equals(a1Var.f19575N)) {
            return false;
        }
        C8627i0 i0Var = this.f19576O;
        if (i0Var == null) {
            if (a1Var.f19576O != null) {
                return false;
            }
        } else if (!i0Var.equals(a1Var.f19576O)) {
            return false;
        }
        C8732s7 s7Var = this.f19936b;
        if (s7Var != null && !s7Var.m17185d()) {
            return this.f19936b.equals(a1Var.f19936b);
        }
        C8732s7 s7Var2 = a1Var.f19936b;
        return s7Var2 == null || s7Var2.m17185d();
    }

    public final int hashCode() {
        int hashCode = C8547a1.class.getName().hashCode();
        Integer num = this.f19577c;
        int hashCode2 = num == null ? 0 : num.hashCode();
        int a = C8750u7.m17110a(this.f19578d);
        int a2 = C8750u7.m17110a(this.f19579e);
        Long l = this.f19580f;
        int hashCode3 = l == null ? 0 : l.hashCode();
        Long l2 = this.f19581g;
        int hashCode4 = l2 == null ? 0 : l2.hashCode();
        Long l3 = this.f19582h;
        int hashCode5 = l3 == null ? 0 : l3.hashCode();
        Long l4 = this.f19583i;
        int hashCode6 = l4 == null ? 0 : l4.hashCode();
        Long l5 = this.f19584j;
        int hashCode7 = l5 == null ? 0 : l5.hashCode();
        String str = this.f19585k;
        int hashCode8 = str == null ? 0 : str.hashCode();
        String str2 = this.f19586l;
        int hashCode9 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f19587m;
        int hashCode10 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f19588n;
        int hashCode11 = str4 == null ? 0 : str4.hashCode();
        Integer num2 = this.f19589o;
        int hashCode12 = num2 == null ? 0 : num2.hashCode();
        String str5 = this.f19590p;
        int hashCode13 = str5 == null ? 0 : str5.hashCode();
        String str6 = this.f19591q;
        int hashCode14 = str6 == null ? 0 : str6.hashCode();
        String str7 = this.f19592r;
        int hashCode15 = str7 == null ? 0 : str7.hashCode();
        Long l6 = this.f19593s;
        int hashCode16 = l6 == null ? 0 : l6.hashCode();
        Long l7 = this.f19594t;
        int hashCode17 = l7 == null ? 0 : l7.hashCode();
        String str8 = this.f19595u;
        int hashCode18 = str8 == null ? 0 : str8.hashCode();
        Boolean bool = this.f19596v;
        int hashCode19 = bool == null ? 0 : bool.hashCode();
        String str9 = this.f19597w;
        int hashCode20 = str9 == null ? 0 : str9.hashCode();
        Long l8 = this.f19598x;
        int hashCode21 = l8 == null ? 0 : l8.hashCode();
        Integer num3 = this.f19599y;
        int hashCode22 = num3 == null ? 0 : num3.hashCode();
        String str10 = this.f19600z;
        int hashCode23 = str10 == null ? 0 : str10.hashCode();
        String str11 = this.f19562A;
        int hashCode24 = str11 == null ? 0 : str11.hashCode();
        Boolean bool2 = this.f19563B;
        int hashCode25 = bool2 == null ? 0 : bool2.hashCode();
        int a3 = C8750u7.m17110a(this.f19564C);
        String str12 = this.f19565D;
        int hashCode26 = str12 == null ? 0 : str12.hashCode();
        Integer num4 = this.f19566E;
        int hashCode27 = num4 == null ? 0 : num4.hashCode();
        Integer num5 = this.f19567F;
        int hashCode28 = num5 == null ? 0 : num5.hashCode();
        Integer num6 = this.f19568G;
        int hashCode29 = num6 == null ? 0 : num6.hashCode();
        String str13 = this.f19569H;
        int hashCode30 = str13 == null ? 0 : str13.hashCode();
        Long l9 = this.f19570I;
        int hashCode31 = l9 == null ? 0 : l9.hashCode();
        Long l10 = this.f19571J;
        int hashCode32 = l10 == null ? 0 : l10.hashCode();
        String str14 = this.f19572K;
        int hashCode33 = str14 == null ? 0 : str14.hashCode();
        String str15 = this.f19573L;
        int hashCode34 = str15 == null ? 0 : str15.hashCode();
        Integer num7 = this.f19574M;
        int hashCode35 = num7 == null ? 0 : num7.hashCode();
        String str16 = this.f19575N;
        int hashCode36 = str16 == null ? 0 : str16.hashCode();
        C8627i0 i0Var = this.f19576O;
        int hashCode37 = i0Var == null ? 0 : i0Var.hashCode();
        C8732s7 s7Var = this.f19936b;
        int i = 0;
        if (s7Var != null) {
            i = s7Var.m17185d() ? 0 : this.f19936b.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + a) * 31) + a2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + hashCode19) * 31) + hashCode20) * 31) + hashCode21) * 31) + hashCode22) * 31) + hashCode23) * 31) + hashCode24) * 31) + hashCode25) * 31) + a3) * 31) + hashCode26) * 31) + hashCode27) * 31) + hashCode28) * 31) + hashCode29) * 31) + hashCode30) * 31) + hashCode31) * 31) + hashCode32) * 31) + hashCode33) * 31) + hashCode34) * 31) + hashCode35) * 31) + hashCode36) * 31) + hashCode37) * 31) + i;
    }
}
