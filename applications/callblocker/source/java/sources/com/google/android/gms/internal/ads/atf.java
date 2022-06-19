package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.p118a.AbstractC2244a;
import com.google.android.gms.ads.reward.C2391a;
import com.google.android.gms.common.util.AbstractC2708e;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atf.class */
public class atf {

    /* renamed from: a */
    private final Set<auq<dxs>> f10287a;

    /* renamed from: b */
    private final Set<auq<AbstractC2792app>> f10288b;

    /* renamed from: c */
    private final Set<auq<aqi>> f10289c;

    /* renamed from: d */
    private final Set<auq<arl>> f10290d;

    /* renamed from: e */
    private final Set<auq<arg>> f10291e;

    /* renamed from: f */
    private final Set<auq<apv>> f10292f;

    /* renamed from: g */
    private final Set<auq<aqe>> f10293g;

    /* renamed from: h */
    private final Set<auq<C2391a>> f10294h;

    /* renamed from: i */
    private final Set<auq<AbstractC2244a>> f10295i;

    /* renamed from: j */
    private final Set<auq<arw>> f10296j;

    /* renamed from: k */
    private final ces f10297k;

    /* renamed from: l */
    private apt f10298l;

    /* renamed from: m */
    private bpv f10299m;

    /* renamed from: com.google.android.gms.internal.ads.atf$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/atf$a.class */
    public static final class C2797a {

        /* renamed from: a */
        private Set<auq<dxs>> f10300a = new HashSet();

        /* renamed from: b */
        private Set<auq<AbstractC2792app>> f10301b = new HashSet();

        /* renamed from: c */
        private Set<auq<aqi>> f10302c = new HashSet();

        /* renamed from: d */
        private Set<auq<arl>> f10303d = new HashSet();

        /* renamed from: e */
        private Set<auq<arg>> f10304e = new HashSet();

        /* renamed from: f */
        private Set<auq<apv>> f10305f = new HashSet();

        /* renamed from: g */
        private Set<auq<C2391a>> f10306g = new HashSet();

        /* renamed from: h */
        private Set<auq<AbstractC2244a>> f10307h = new HashSet();

        /* renamed from: i */
        private Set<auq<aqe>> f10308i = new HashSet();

        /* renamed from: j */
        private Set<auq<arw>> f10309j = new HashSet();

        /* renamed from: k */
        private ces f10310k;

        /* renamed from: a */
        public final C2797a m12757a(AbstractC2244a abstractC2244a, Executor executor) {
            this.f10307h.add(new auq<>(abstractC2244a, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12756a(C2391a c2391a, Executor executor) {
            this.f10306g.add(new auq<>(c2391a, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12755a(AbstractC2792app abstractC2792app, Executor executor) {
            this.f10301b.add(new auq<>(abstractC2792app, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12754a(apv apvVar, Executor executor) {
            this.f10305f.add(new auq<>(apvVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12753a(aqe aqeVar, Executor executor) {
            this.f10308i.add(new auq<>(aqeVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12752a(aqi aqiVar, Executor executor) {
            this.f10302c.add(new auq<>(aqiVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12751a(arg argVar, Executor executor) {
            this.f10304e.add(new auq<>(argVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12750a(arl arlVar, Executor executor) {
            this.f10303d.add(new auq<>(arlVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12749a(arw arwVar, Executor executor) {
            this.f10309j.add(new auq<>(arwVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12747a(ces cesVar) {
            this.f10310k = cesVar;
            return this;
        }

        /* renamed from: a */
        public final C2797a m12746a(dxs dxsVar, Executor executor) {
            this.f10300a.add(new auq<>(dxsVar, executor));
            return this;
        }

        /* renamed from: a */
        public final C2797a m12745a(dzw dzwVar, Executor executor) {
            if (this.f10307h != null) {
                btd btdVar = new btd();
                btdVar.m11655a(dzwVar);
                this.f10307h.add(new auq<>(btdVar, executor));
            }
            return this;
        }

        /* renamed from: a */
        public final atf m12758a() {
            return new atf(this);
        }
    }

    private atf(C2797a c2797a) {
        this.f10287a = c2797a.f10300a;
        this.f10289c = c2797a.f10302c;
        this.f10290d = c2797a.f10303d;
        this.f10288b = c2797a.f10301b;
        this.f10291e = c2797a.f10304e;
        this.f10292f = c2797a.f10305f;
        this.f10293g = c2797a.f10308i;
        this.f10294h = c2797a.f10306g;
        this.f10295i = c2797a.f10307h;
        this.f10296j = c2797a.f10309j;
        this.f10297k = c2797a.f10310k;
    }

    /* renamed from: a */
    public final apt m12769a(Set<auq<apv>> set) {
        if (this.f10298l == null) {
            this.f10298l = new apt(set);
        }
        return this.f10298l;
    }

    /* renamed from: a */
    public final bpv m12770a(AbstractC2708e abstractC2708e, bpx bpxVar) {
        if (this.f10299m == null) {
            this.f10299m = new bpv(abstractC2708e, bpxVar);
        }
        return this.f10299m;
    }

    /* renamed from: a */
    public final Set<auq<AbstractC2792app>> m12771a() {
        return this.f10288b;
    }

    /* renamed from: b */
    public final Set<auq<arg>> m12768b() {
        return this.f10291e;
    }

    /* renamed from: c */
    public final Set<auq<apv>> m12767c() {
        return this.f10292f;
    }

    /* renamed from: d */
    public final Set<auq<aqe>> m12766d() {
        return this.f10293g;
    }

    /* renamed from: e */
    public final Set<auq<C2391a>> m12765e() {
        return this.f10294h;
    }

    /* renamed from: f */
    public final Set<auq<AbstractC2244a>> m12764f() {
        return this.f10295i;
    }

    /* renamed from: g */
    public final Set<auq<dxs>> m12763g() {
        return this.f10287a;
    }

    /* renamed from: h */
    public final Set<auq<aqi>> m12762h() {
        return this.f10289c;
    }

    /* renamed from: i */
    public final Set<auq<arl>> m12761i() {
        return this.f10290d;
    }

    /* renamed from: j */
    public final Set<auq<arw>> m12760j() {
        return this.f10296j;
    }

    /* renamed from: k */
    public final ces m12759k() {
        return this.f10297k;
    }
}
