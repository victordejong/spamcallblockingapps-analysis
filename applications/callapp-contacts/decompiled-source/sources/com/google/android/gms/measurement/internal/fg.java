package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.bv;
import com.google.android.gms.internal.measurement.bw;
import com.google.android.gms.internal.measurement.bx;
import com.google.android.gms.internal.measurement.by;
import com.google.android.gms.internal.measurement.bz;
import com.google.android.gms.internal.measurement.ca;
import com.google.android.gms.internal.measurement.cb;
import com.google.android.gms.internal.measurement.cc;
import com.google.android.gms.internal.measurement.cd;
import com.google.android.gms.internal.measurement.ce;
import com.google.android.gms.internal.measurement.cf;
import com.google.android.gms.internal.measurement.cj;
import com.google.android.gms.internal.measurement.co;
import com.google.android.gms.internal.measurement.cp;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.la;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fg.class */
final class fg implements Callable<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzas f29630a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29631b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ fl f29632c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fg(fl flVar, zzas zzasVar, String str) {
        this.f29632c = flVar;
        this.f29630a = zzasVar;
        this.f29631b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() throws Exception {
        jo joVar;
        jo joVar2;
        jo joVar3;
        js jsVar;
        long j;
        o oVar;
        joVar = this.f29632c.f29644a;
        joVar.n();
        joVar2 = this.f29632c.f29644a;
        ha haVar = joVar2.f29907d;
        jo.a(haVar);
        zzas zzasVar = this.f29630a;
        String str = this.f29631b;
        haVar.S_();
        es.y();
        o.a(zzasVar);
        o.a(str);
        byte[] bArr = null;
        if (!haVar.t.g.d(str, dc.U)) {
            haVar.t.c().j.a("Generating ScionPayload disabled. packageName", str);
            bArr = new byte[0];
        } else if ("_iap".equals(zzasVar.zza) || "_iapx".equals(zzasVar.zza)) {
            cb a2 = cc.a();
            haVar.f.f().b();
            try {
                fd b2 = haVar.f.f().b(str);
                if (b2 == null) {
                    haVar.t.c().j.a("Log and bundle not available. package_name", str);
                    bArr = new byte[0];
                    joVar3 = haVar.f;
                } else if (!b2.q()) {
                    haVar.t.c().j.a("Log and bundle disabled. package_name", str);
                    bArr = new byte[0];
                    joVar3 = haVar.f;
                } else {
                    cd c2 = ce.c();
                    c2.a();
                    c2.k();
                    if (!TextUtils.isEmpty(b2.b())) {
                        c2.e(b2.b());
                    }
                    if (!TextUtils.isEmpty(b2.m())) {
                        c2.d((String) o.a(b2.m()));
                    }
                    if (!TextUtils.isEmpty(b2.k())) {
                        c2.f((String) o.a(b2.k()));
                    }
                    if (b2.l() != -2147483648L) {
                        c2.g((int) b2.l());
                    }
                    c2.f(b2.n());
                    c2.j(b2.p());
                    String d2 = b2.d();
                    String e = b2.e();
                    la.b();
                    if (haVar.t.g.d(b2.b(), dc.ag)) {
                        String f = b2.f();
                        if (!TextUtils.isEmpty(d2)) {
                            c2.j(d2);
                        } else if (!TextUtils.isEmpty(f)) {
                            c2.m(f);
                        } else if (!TextUtils.isEmpty(e)) {
                            c2.l(e);
                        }
                    } else if (!TextUtils.isEmpty(d2)) {
                        c2.j(d2);
                    } else if (!TextUtils.isEmpty(e)) {
                        c2.l(e);
                    }
                    f a3 = haVar.f.a(str);
                    c2.g(b2.o());
                    if (haVar.t.r() && haVar.t.g.e(c2.l())) {
                        jy.b();
                        if (!haVar.t.g.d(null, dc.aw)) {
                            c2.l();
                            if (!TextUtils.isEmpty(null)) {
                                c2.u();
                            }
                        } else if (a3.b() && !TextUtils.isEmpty(null)) {
                            c2.u();
                        }
                    }
                    jy.b();
                    if (haVar.t.g.d(null, dc.aw)) {
                        c2.n(a3.a());
                    }
                    jy.b();
                    if (!haVar.t.g.d(null, dc.aw) || a3.b()) {
                        Pair<String, Boolean> a4 = haVar.f.e.a(b2.b(), a3);
                        if (b2.x() && !TextUtils.isEmpty((CharSequence) a4.first)) {
                            try {
                                Object obj = a4.first;
                                Long.toString(zzasVar.zzd);
                                c2.g(ha.b());
                                if (a4.second != null) {
                                    c2.a(((Boolean) a4.second).booleanValue());
                                }
                            } catch (SecurityException e2) {
                                haVar.t.c().j.a("Resettable device id encryption failed", e2.getMessage());
                                bArr = new byte[0];
                                joVar3 = haVar.f;
                            }
                        }
                    }
                    haVar.t.n().g();
                    c2.b(Build.MODEL);
                    haVar.t.n().g();
                    c2.a(Build.VERSION.RELEASE);
                    c2.e((int) haVar.t.n().Z_());
                    c2.c(haVar.t.n().aa_());
                    try {
                        jy.b();
                        if ((!haVar.t.g.d(null, dc.aw) || a3.c()) && b2.c() != null) {
                            o.a(b2.c());
                            Long.toString(zzasVar.zzd);
                            c2.h(ha.b());
                        }
                        if (!TextUtils.isEmpty(b2.h())) {
                            c2.k((String) o.a(b2.h()));
                        }
                        String b3 = b2.b();
                        List<js> a5 = haVar.f.f().a(b3);
                        Iterator<js> it2 = a5.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                jsVar = null;
                                break;
                            }
                            jsVar = it2.next();
                            if ("_lte".equals(jsVar.f29911c)) {
                                break;
                            }
                        }
                        if (jsVar == null || jsVar.e == null) {
                            js jsVar2 = new js(b3, "auto", "_lte", haVar.t.j.a(), 0L);
                            a5.add(jsVar2);
                            haVar.f.f().a(jsVar2);
                        }
                        jq g = haVar.f.g();
                        g.t.c().k.a("Checking account type status for ad personalization signals");
                        if (g.t.n().ab_()) {
                            String b4 = b2.b();
                            o.a(b4);
                            if (b2.x()) {
                                ej ejVar = g.f.f29904a;
                                jo.a(ejVar);
                                if (ejVar.c(b4)) {
                                    g.t.c().j.a("Turning off ad personalization due to account type");
                                    Iterator<js> it3 = a5.iterator();
                                    while (true) {
                                        if (it3.hasNext()) {
                                            if ("_npa".equals(it3.next().f29911c)) {
                                                it3.remove();
                                                break;
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                    a5.add(new js(b4, "auto", "_npa", g.t.j.a(), 1L));
                                }
                            }
                        }
                        cp[] cpVarArr = new cp[a5.size()];
                        for (int i = 0; i < a5.size(); i++) {
                            co d3 = cp.d();
                            d3.a(a5.get(i).f29911c);
                            d3.a(a5.get(i).f29912d);
                            haVar.f.g().a(d3, a5.get(i).e);
                            cpVarArr[i] = d3.A();
                        }
                        c2.b(Arrays.asList(cpVarArr));
                        dp a6 = dp.a(zzasVar);
                        haVar.t.g().a(a6.f29511d, haVar.f.f().e(str));
                        haVar.t.g().a(a6, haVar.t.g.a(str));
                        Bundle bundle = a6.f29511d;
                        bundle.putLong("_c", 1L);
                        haVar.t.c().j.a("Marking in-app purchase as real-time");
                        bundle.putLong("_r", 1L);
                        bundle.putString("_o", zzasVar.zzc);
                        if (haVar.t.g().f(c2.l())) {
                            haVar.t.g().a(bundle, "_dbg", (Object) 1L);
                            haVar.t.g().a(bundle, "_r", (Object) 1L);
                        }
                        o a7 = haVar.f.f().a(str, zzasVar.zza);
                        if (a7 == null) {
                            oVar = new o(str, zzasVar.zza, 0L, 0L, 0L, zzasVar.zzd, 0L, null, null, null, null);
                            j = 0;
                        } else {
                            j = a7.f;
                            oVar = a7.a(zzasVar.zzd);
                        }
                        haVar.f.f().a(oVar);
                        n nVar = new n(haVar.t, zzasVar.zzc, str, zzasVar.zza, zzasVar.zzd, j, bundle);
                        bv c3 = bw.c();
                        c3.a(nVar.f29962d);
                        c3.a(nVar.f29960b);
                        c3.b(nVar.e);
                        p pVar = new p(nVar.f);
                        while (pVar.hasNext()) {
                            String a8 = pVar.next();
                            bz e3 = ca.e();
                            e3.a(a8);
                            Object zza = nVar.f.zza(a8);
                            if (zza != null) {
                                haVar.f.g().a(e3, zza);
                                c3.a(e3);
                            }
                        }
                        c2.a(c3);
                        cf a9 = cj.a();
                        bx a10 = by.a();
                        a10.a(oVar.f29965c);
                        a10.a(zzasVar.zza);
                        a9.a(a10);
                        c2.a(a9);
                        kj kjVar = haVar.f.f29906c;
                        jo.a(kjVar);
                        c2.c(kjVar.a(b2.b(), Collections.emptyList(), c2.e(), Long.valueOf(c3.f()), Long.valueOf(c3.f())));
                        if (c3.e()) {
                            c2.b(c3.f());
                            c2.c(c3.f());
                        }
                        long j2 = b2.j();
                        int i2 = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
                        if (i2 != 0) {
                            c2.e(j2);
                        }
                        long i3 = b2.i();
                        if (i3 != 0) {
                            c2.d(i3);
                        } else if (i2 != 0) {
                            c2.d(j2);
                        }
                        b2.u();
                        c2.f((int) b2.r());
                        c2.m();
                        c2.a(haVar.t.j.a());
                        c2.b(true);
                        a2.a(c2);
                        b2.a(c2.g());
                        b2.b(c2.h());
                        haVar.f.f().a(b2);
                        haVar.f.f().U_();
                        try {
                            bArr = haVar.f.g().b(a2.A().j());
                        } catch (IOException e4) {
                            haVar.t.c().f29506c.a("Data loss. Failed to bundle and serialize. appId", Cdo.a(str), e4);
                            bArr = null;
                        }
                    } catch (SecurityException e5) {
                        haVar.t.c().j.a("app instance id encryption failed", e5.getMessage());
                        bArr = new byte[0];
                        joVar3 = haVar.f;
                    }
                }
                joVar3.f().V_();
            } finally {
                haVar.f.f().V_();
            }
        } else {
            haVar.t.c().j.a("Generating a payload for this event is not available. package_name, event_name", str, zzasVar.zza);
        }
        return bArr;
    }
}
