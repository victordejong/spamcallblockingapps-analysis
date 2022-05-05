package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.flurry.sdk.ay */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ay.class */
public final class C2853ay implements Comparable<C2853ay> {

    /* renamed from: f */
    public static int f4109f;

    /* renamed from: a */
    public C3338jg<String, C2861bc> f4110a;

    /* renamed from: b */
    public C2861bc f4111b;

    /* renamed from: c */
    public String f4112c;

    /* renamed from: d */
    public String f4113d;

    /* renamed from: g */
    public final int f4114g;

    public C2853ay(C2909cf cfVar) {
        this.f4110a = new C3338jg<>();
        int i = f4109f + 1;
        f4109f = i;
        this.f4114g = i;
        C2861bc bcVar = new C2861bc(cfVar);
        this.f4110a.m32654a((C3338jg<String, C2861bc>) cfVar.f4436b, (String) bcVar);
        this.f4111b = bcVar;
    }

    public C2853ay(C3338jg<String, C2861bc> jgVar) {
        this.f4110a = new C3338jg<>();
        if (jgVar.m32647e() != 0) {
            int i = f4109f + 1;
            f4109f = i;
            this.f4114g = i;
            this.f4110a = jgVar;
            Iterator<String> it = jgVar.m32649c().iterator();
            if (it.hasNext()) {
                this.f4111b = this.f4110a.m32655a((C3338jg<String, C2861bc>) it.next()).get(0);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Ad units map is empty. Cannot create ad controller.");
    }

    /* renamed from: a */
    public final C2862bd m33539a() {
        C2861bc bcVar = this.f4111b;
        return bcVar.m33505a(bcVar.m33507a());
    }

    /* renamed from: a */
    public final void m33538a(int i) {
        this.f4111b.f4150e = i;
    }

    /* renamed from: a */
    public final void m33537a(int i, C3021eh ehVar) {
        C2861bc bcVar = this.f4111b;
        if (i >= 0 && i < bcVar.f4148c.size()) {
            bcVar.f4148c.get(i).f4116b = ehVar;
        }
    }

    /* renamed from: a */
    public final void m33536a(C3076ff ffVar) {
        C2861bc bcVar = this.f4111b;
        int i = bcVar.f4150e;
        if (i >= 0 && i < bcVar.f4148c.size()) {
            bcVar.f4148c.get(i).f4117c = ffVar;
        }
    }

    /* renamed from: a */
    public final void m33534a(String str, int i) {
        if (!TextUtils.isEmpty(str)) {
            for (C2861bc bcVar : this.f4110a.m32655a((C3338jg<String, C2861bc>) str)) {
                if (bcVar.f4146a == i) {
                    this.f4111b = bcVar;
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33533a(boolean z) {
        this.f4111b.f4152g = z;
    }

    /* renamed from: a */
    public final boolean m33535a(String str) {
        C2861bc bcVar = this.f4111b;
        C2854az azVar = bcVar.f4148c.get(bcVar.f4150e);
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return !azVar.f4115a.containsKey(str) || !azVar.f4115a.get(str).equals(Boolean.TRUE);
    }

    /* renamed from: b */
    public final C3021eh m33532b() {
        C2861bc bcVar = this.f4111b;
        return bcVar.m33501c(bcVar.f4150e);
    }

    /* renamed from: b */
    public final C3021eh m33531b(int i) {
        return this.f4111b.m33501c(i);
    }

    /* renamed from: b */
    public final void m33530b(String str) {
        C2861bc bcVar = this.f4111b;
        C2854az azVar = bcVar.f4148c.get(bcVar.f4150e);
        if (!TextUtils.isEmpty(str) && azVar.f4115a.containsKey(str)) {
            azVar.f4115a.put(str, Boolean.TRUE);
        }
    }

    /* renamed from: b */
    public final void m33529b(boolean z) {
        this.f4111b.f4153h = z;
    }

    /* renamed from: c */
    public final C2904ca m33528c() {
        C2861bc bcVar = this.f4111b;
        if (bcVar.f4147b != null) {
            return bcVar.m33503b(bcVar.f4150e);
        }
        return null;
    }

    /* renamed from: c */
    public final List<String> m33527c(int i) {
        return this.f4111b.m33499d(i);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C2853ay ayVar) {
        C2853ay ayVar2 = ayVar;
        if (ayVar2 != null) {
            int i = this.f4114g;
            int i2 = ayVar2.f4114g;
            if (i > i2) {
                return 1;
            }
            return i < i2 ? -1 : 0;
        }
        throw new NullPointerException("another cannot be null");
    }

    /* renamed from: d */
    public final boolean m33526d() {
        return this.f4111b.m33502c().equals(EnumC2875bj.TAKEOVER);
    }

    /* renamed from: e */
    public final C3076ff m33525e() {
        C2861bc bcVar = this.f4111b;
        int i = bcVar.f4150e;
        if (i < 0 || i >= bcVar.f4148c.size()) {
            return null;
        }
        return bcVar.f4148c.get(i).f4117c;
    }

    /* renamed from: f */
    public final boolean m33524f() {
        C2861bc bcVar = this.f4111b;
        List<C2904ca> list = bcVar.f4147b.f4440f;
        for (int i = 0; i < list.size(); i++) {
            EnumC2817al a = EnumC2817al.m33619a(list.get(i).f4372g);
            if ((EnumC2817al.CACHE_ONLY.equals(a) || EnumC2817al.CACHE_OR_STREAM.equals(a)) && bcVar.m33497e(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public final boolean m33523g() {
        C2861bc bcVar = this.f4111b;
        List<C2904ca> list = bcVar.f4147b.f4440f;
        for (int i = 0; i < list.size(); i++) {
            if (EnumC2817al.CACHE_ONLY.equals(EnumC2817al.m33619a(list.get(i).f4372g)) && bcVar.m33497e(i)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    public final String m33522h() {
        return this.f4111b.f4147b.f4436b;
    }

    /* renamed from: i */
    public final void m33521i() {
        this.f4111b.f4151f = true;
    }

    /* renamed from: j */
    public final C3155gd m33520j() {
        C3155gd d;
        synchronized (this) {
            d = this.f4111b.m33500d();
        }
        return d;
    }

    /* renamed from: k */
    public final C3155gd m33519k() {
        C3155gd e;
        synchronized (this) {
            e = this.f4111b.m33498e();
        }
        return e;
    }

    /* renamed from: l */
    public final boolean m33518l() {
        C2861bc bcVar = this.f4111b;
        return bcVar.f4147b.f4438d > 0 && System.currentTimeMillis() >= bcVar.f4147b.f4438d;
    }
}
