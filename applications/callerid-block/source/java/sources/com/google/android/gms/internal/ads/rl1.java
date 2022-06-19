package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.C1581h;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rl1.class */
public final class rl1 {

    /* renamed from: a */
    private zzys f8345a;

    /* renamed from: b */
    private zzyx f8346b;

    /* renamed from: c */
    private String f8347c;

    /* renamed from: d */
    private zzady f8348d;

    /* renamed from: e */
    private boolean f8349e;

    /* renamed from: f */
    private ArrayList<String> f8350f;

    /* renamed from: g */
    private ArrayList<String> f8351g;

    /* renamed from: h */
    private zzagy f8352h;

    /* renamed from: i */
    private zzzd f8353i;

    /* renamed from: j */
    private AdManagerAdViewOptions f8354j;

    /* renamed from: k */
    private PublisherAdViewOptions f8355k;

    /* renamed from: l */
    private AbstractC1713e0 f8356l;

    /* renamed from: n */
    private zzamv f8358n;

    /* renamed from: q */
    private f71 f8361q;

    /* renamed from: r */
    private i0 f8362r;

    /* renamed from: m */
    private int f8357m = 1;

    /* renamed from: o */
    private final gl1 f8359o = new gl1();

    /* renamed from: p */
    private boolean f8360p = false;

    /* renamed from: A */
    public final rl1 m5945A(ArrayList<String> arrayList) {
        this.f8350f = arrayList;
        return this;
    }

    /* renamed from: B */
    public final rl1 m5944B(ArrayList<String> arrayList) {
        this.f8351g = arrayList;
        return this;
    }

    /* renamed from: C */
    public final rl1 m5943C(zzagy zzagyVar) {
        this.f8352h = zzagyVar;
        return this;
    }

    /* renamed from: D */
    public final rl1 m5942D(zzzd zzzdVar) {
        this.f8353i = zzzdVar;
        return this;
    }

    /* renamed from: E */
    public final rl1 m5941E(zzamv zzamvVar) {
        this.f8358n = zzamvVar;
        this.f8348d = new zzady(false, true, false);
        return this;
    }

    /* renamed from: F */
    public final rl1 m5940F(PublisherAdViewOptions publisherAdViewOptions) {
        this.f8355k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f8349e = publisherAdViewOptions.zza();
            this.f8356l = publisherAdViewOptions.a();
        }
        return this;
    }

    /* renamed from: G */
    public final rl1 m5939G(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f8354j = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.f8349e = adManagerAdViewOptions.a();
        }
        return this;
    }

    /* renamed from: H */
    public final rl1 m5938H(f71 f71Var) {
        this.f8361q = f71Var;
        return this;
    }

    /* renamed from: I */
    public final rl1 m5937I(sl1 sl1Var) {
        this.f8359o.m7362a(sl1Var.f8510o.f6745a);
        this.f8345a = sl1Var.f8499d;
        this.f8346b = sl1Var.f8500e;
        this.f8362r = sl1Var.f8512q;
        this.f8347c = sl1Var.f8501f;
        this.f8348d = sl1Var.f8496a;
        this.f8350f = sl1Var.f8502g;
        this.f8351g = sl1Var.f8503h;
        this.f8352h = sl1Var.f8504i;
        this.f8353i = sl1Var.f8505j;
        m5939G(sl1Var.f8507l);
        m5940F(sl1Var.f8508m);
        this.f8360p = sl1Var.f8511p;
        this.f8361q = sl1Var.f8498c;
        return this;
    }

    /* renamed from: J */
    public final sl1 m5936J() {
        C1581h.m8346i(this.f8347c, "ad unit must not be null");
        C1581h.m8346i(this.f8346b, "ad size must not be null");
        C1581h.m8346i(this.f8345a, "ad request must not be null");
        return new sl1(this, null);
    }

    /* renamed from: K */
    public final boolean m5935K() {
        return this.f8360p;
    }

    /* renamed from: n */
    public final rl1 m5917n(i0 i0Var) {
        this.f8362r = i0Var;
        return this;
    }

    /* renamed from: p */
    public final rl1 m5915p(zzys zzysVar) {
        this.f8345a = zzysVar;
        return this;
    }

    /* renamed from: q */
    public final zzys m5914q() {
        return this.f8345a;
    }

    /* renamed from: r */
    public final rl1 m5913r(zzyx zzyxVar) {
        this.f8346b = zzyxVar;
        return this;
    }

    /* renamed from: s */
    public final rl1 m5912s(boolean z) {
        this.f8360p = z;
        return this;
    }

    /* renamed from: t */
    public final zzyx m5911t() {
        return this.f8346b;
    }

    /* renamed from: u */
    public final rl1 m5910u(String str) {
        this.f8347c = str;
        return this;
    }

    /* renamed from: v */
    public final String m5909v() {
        return this.f8347c;
    }

    /* renamed from: w */
    public final rl1 m5908w(zzady zzadyVar) {
        this.f8348d = zzadyVar;
        return this;
    }

    /* renamed from: x */
    public final gl1 m5907x() {
        return this.f8359o;
    }

    /* renamed from: y */
    public final rl1 m5906y(boolean z) {
        this.f8349e = z;
        return this;
    }

    /* renamed from: z */
    public final rl1 m5905z(int i) {
        this.f8357m = i;
        return this;
    }
}
