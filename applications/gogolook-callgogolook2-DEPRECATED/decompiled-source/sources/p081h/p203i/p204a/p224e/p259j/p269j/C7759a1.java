package p081h.p203i.p204a.p224e.p259j.p269j;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.aotter.net.volley.toolbox.HttpClientStack;
import com.google.android.gms.internal.firebase_perf.zzr;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.a.e.j.j.a1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a1.class */
public final class C7759a1 extends C7771b4 {

    /* renamed from: e */
    public C7928t5 f18158e;

    /* renamed from: f */
    public boolean f18159f;

    /* renamed from: g */
    public long f18160g;

    /* renamed from: h */
    public boolean f18161h;

    /* renamed from: i */
    public String f18162i;

    /* renamed from: j */
    public Integer f18163j;

    /* renamed from: k */
    public Long f18164k;

    /* renamed from: l */
    public Long f18165l;

    /* renamed from: m */
    public Integer f18166m;

    /* renamed from: n */
    public Integer f18167n;

    /* renamed from: o */
    public String f18168o;

    /* renamed from: p */
    public Long f18169p;

    /* renamed from: q */
    public Long f18170q;

    /* renamed from: r */
    public Long f18171r;

    /* renamed from: s */
    public Long f18172s;

    /* renamed from: t */
    public C7896q[] f18173t;

    /* renamed from: u */
    public final List<zzr> f18174u;

    /* renamed from: v */
    public BroadcastReceiver f18175v;

    public C7759a1(@Nullable C7928t5 t5Var) {
        this(t5Var, C7761a3.m19547d());
    }

    public C7759a1(@Nullable C7928t5 t5Var, @NonNull C7761a3 a3Var) {
        super(a3Var);
        this.f18159f = false;
        this.f18160g = -1L;
        this.f18161h = false;
        this.f18175v = new C7760a2(this);
        this.f18158e = t5Var;
        m19512b();
        this.f18174u = new ArrayList();
    }

    /* renamed from: a */
    public static C7759a1 m19576a(@Nullable C7928t5 t5Var) {
        return new C7759a1(t5Var);
    }

    /* renamed from: a */
    public final C7759a1 m19578a(long j) {
        this.f18164k = Long.valueOf(j);
        return this;
    }

    /* renamed from: a */
    public final C7759a1 m19575a(@Nullable String str) {
        if (str != null) {
            this.f18162i = C7790e.m19479a(C7790e.m19480a(str), 2000);
        }
        return this;
    }

    /* renamed from: b */
    public final C7759a1 m19574b(long j) {
        this.f18165l = Long.valueOf(j);
        return this;
    }

    /* renamed from: b */
    public final C7759a1 m19573b(@Nullable String str) {
        if (str != null) {
            String upperCase = str.toUpperCase();
            char c = 65535;
            switch (upperCase.hashCode()) {
                case -531492226:
                    if (upperCase.equals("OPTIONS")) {
                        c = 6;
                        break;
                    }
                    break;
                case 70454:
                    if (upperCase.equals("GET")) {
                        c = 0;
                        break;
                    }
                    break;
                case 79599:
                    if (upperCase.equals("PUT")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2213344:
                    if (upperCase.equals("HEAD")) {
                        c = 4;
                        break;
                    }
                    break;
                case 2461856:
                    if (upperCase.equals("POST")) {
                        c = 2;
                        break;
                    }
                    break;
                case 75900968:
                    if (upperCase.equals(HttpClientStack.HttpPatch.METHOD_NAME)) {
                        c = 5;
                        break;
                    }
                    break;
                case 80083237:
                    if (upperCase.equals("TRACE")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1669334218:
                    if (upperCase.equals("CONNECT")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 2012838315:
                    if (upperCase.equals("DELETE")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.f18163j = 1;
                    break;
                case 1:
                    this.f18163j = 2;
                    break;
                case 2:
                    this.f18163j = 3;
                    break;
                case 3:
                    this.f18163j = 4;
                    break;
                case 4:
                    this.f18163j = 5;
                    break;
                case 5:
                    this.f18163j = 6;
                    break;
                case 6:
                    this.f18163j = 7;
                    break;
                case 7:
                    this.f18163j = 8;
                    break;
                case '\b':
                    this.f18163j = 9;
                    break;
                default:
                    this.f18163j = 0;
                    break;
            }
        }
        return this;
    }

    /* renamed from: c */
    public final C7759a1 m19572c(int i) {
        this.f18167n = Integer.valueOf(i);
        return this;
    }

    /* renamed from: c */
    public final C7759a1 m19571c(long j) {
        this.f18169p = Long.valueOf(j);
        this.f18174u.add(C7823h6.m19351r().m19352q());
        C7823h6.m19351r();
        LocalBroadcastManager.getInstance(C7823h6.m19350s()).registerReceiver(this.f18175v, new IntentFilter("SessionIdUpdate"));
        return this;
    }

    /* renamed from: c */
    public final C7759a1 m19570c(@Nullable String str) {
        if (str != null) {
            this.f18168o = str;
        }
        return this;
    }

    /* renamed from: d */
    public final C7759a1 m19569d(long j) {
        this.f18170q = Long.valueOf(j);
        return this;
    }

    /* renamed from: e */
    public final C7759a1 m19568e(long j) {
        this.f18160g = j;
        this.f18171r = Long.valueOf(j);
        return this;
    }

    /* renamed from: f */
    public final C7759a1 m19567f(long j) {
        this.f18172s = Long.valueOf(j);
        return this;
    }

    /* renamed from: q */
    public final boolean m19566q() {
        return this.f18169p != null;
    }

    /* renamed from: r */
    public final boolean m19565r() {
        return this.f18172s != null;
    }

    /* renamed from: s */
    public final Integer m19564s() {
        return this.f18167n;
    }

    /* renamed from: t */
    public final C7759a1 m19563t() {
        this.f18166m = 1;
        return this;
    }

    /* renamed from: u */
    public final long m19562u() {
        return this.f18160g;
    }

    /* renamed from: v */
    public final C7889p m19561v() {
        C7823h6.m19351r();
        LocalBroadcastManager.getInstance(C7823h6.m19350s()).unregisterReceiver(this.f18175v);
        m19510c();
        C7889p pVar = new C7889p();
        pVar.f18496c = this.f18162i;
        pVar.f18497d = this.f18163j;
        pVar.f18498e = this.f18164k;
        pVar.f18499f = this.f18165l;
        pVar.f18500g = this.f18166m;
        pVar.f18501h = this.f18167n;
        pVar.f18502i = this.f18168o;
        pVar.f18503j = this.f18169p;
        pVar.f18504k = this.f18170q;
        pVar.f18505l = this.f18171r;
        pVar.f18506m = this.f18172s;
        pVar.f18507n = this.f18173t;
        pVar.f18508o = new C7910s[this.f18174u.size()];
        for (int i = 0; i < this.f18174u.size(); i++) {
            pVar.f18508o[i] = this.f18174u.get(i).m31838b();
        }
        if (!this.f18159f) {
            C7928t5 t5Var = this.f18158e;
            if (t5Var != null) {
                t5Var.m18878a(pVar, m19513a());
            }
            this.f18159f = true;
        } else {
            boolean z = this.f18161h;
        }
        return pVar;
    }
}
