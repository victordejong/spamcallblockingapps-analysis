package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kl2.class */
public final class kl2 implements jl2 {

    /* renamed from: a */
    private final ConcurrentHashMap<rl2, il2> f25247a;

    /* renamed from: b */
    private final zzfcj f25248b;

    /* renamed from: c */
    private final ml2 f25249c = new ml2();

    public kl2(zzfcj zzfcjVar) {
        this.f25247a = new ConcurrentHashMap<>(zzfcjVar.f33946i);
        this.f25248b = zzfcjVar;
    }

    /* renamed from: f */
    private final void m13864f() {
        int i;
        Parcelable.Creator<zzfcj> creator = zzfcj.CREATOR;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25488G4)).booleanValue()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f25248b.f33944g);
            sb.append(" PoolCollection");
            sb.append(this.f25249c.m13161g());
            Iterator<Map.Entry<rl2, il2>> it = this.f25247a.entrySet().iterator();
            int i2 = 0;
            while (true) {
                int i3 = i2;
                i = i3;
                if (it.hasNext()) {
                    Map.Entry<rl2, il2> next = it.next();
                    int i4 = i3 + 1;
                    sb.append(i4);
                    sb.append(". ");
                    sb.append(next.getValue());
                    sb.append("#");
                    sb.append(next.getKey().hashCode());
                    sb.append("    ");
                    for (int i5 = 0; i5 < next.getValue().m14354c(); i5++) {
                        sb.append("[O]");
                    }
                    for (int m14354c = next.getValue().m14354c(); m14354c < this.f25248b.f33946i; m14354c++) {
                        sb.append("[ ]");
                    }
                    sb.append("\n");
                    sb.append(next.getValue().m14350g());
                    sb.append("\n");
                    i2 = i4;
                }
            }
            while (i < this.f25248b.f33945h) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            ei0.m15469a(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.jl2
    /* renamed from: a */
    public final zzfcj mo13869a() {
        return this.f25248b;
    }

    @Override // com.google.android.gms.internal.ads.jl2
    @Deprecated
    /* renamed from: b */
    public final rl2 mo13868b(zzbdg zzbdgVar, String str, zzbdr zzbdrVar) {
        return new sl2(zzbdgVar, str, new bd0(this.f25248b.f33942e).m16402a().f21184k, this.f25248b.f33948k, zzbdrVar);
    }

    @Override // com.google.android.gms.internal.ads.jl2
    /* renamed from: c */
    public final ql2<?, ?> mo13867c(rl2 rl2Var) {
        ql2<?, ?> ql2Var;
        synchronized (this) {
            il2 il2Var = this.f25247a.get(rl2Var);
            if (il2Var != null) {
                ql2Var = il2Var.m14355b();
                if (ql2Var == null) {
                    this.f25249c.m13166b();
                }
                em2 m14349h = il2Var.m14349h();
                if (ql2Var != null) {
                    C6335bn m14588C = C6558hn.m14588C();
                    C7224zm m16523C = C6298an.m16523C();
                    m16523C.m8336t(2);
                    C6409dn m15424C = C6447en.m15424C();
                    m15424C.m15759q(m14349h.f22284d);
                    m15424C.m15758r(m14349h.f22285e);
                    m16523C.m8338r(m15424C);
                    m14588C.m16317q(m16523C);
                    ql2Var.f28549a.mo8231o().m16458e().mo12845q(m14588C.m15512n());
                }
                m13864f();
            } else {
                this.f25249c.m13167a();
                m13864f();
                ql2Var = null;
            }
        }
        return ql2Var;
    }

    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // com.google.android.gms.internal.ads.jl2
    /* renamed from: d */
    public final boolean mo13866d(rl2 rl2Var, ql2<?, ?> ql2Var) {
        boolean m14356a;
        synchronized (this) {
            il2 il2Var = this.f25247a.get(rl2Var);
            ql2Var.f28552d = C5667s.m18153k().mo16807a();
            il2 il2Var2 = il2Var;
            if (il2Var == null) {
                zzfcj zzfcjVar = this.f25248b;
                il2 il2Var3 = new il2(zzfcjVar.f33946i, zzfcjVar.f33947j * 1000);
                int size = this.f25247a.size();
                zzfcj zzfcjVar2 = this.f25248b;
                if (size == zzfcjVar2.f33945h) {
                    int i = zzfcjVar2.f33953p;
                    int i2 = i - 1;
                    rl2 rl2Var2 = null;
                    if (i == 0) {
                        throw null;
                    }
                    char c = 65535;
                    if (i2 == 0) {
                        rl2 rl2Var3 = null;
                        for (Map.Entry<rl2, il2> entry : this.f25247a.entrySet()) {
                            if (entry.getValue().m14353d() < c) {
                                c = entry.getValue().m14353d();
                                rl2Var3 = entry.getKey();
                            }
                        }
                        if (rl2Var3 != null) {
                            this.f25247a.remove(rl2Var3);
                        }
                    } else if (i2 == 1) {
                        rl2 rl2Var4 = null;
                        for (Map.Entry<rl2, il2> entry2 : this.f25247a.entrySet()) {
                            if (entry2.getValue().m14352e() < c) {
                                c = entry2.getValue().m14352e();
                                rl2Var4 = entry2.getKey();
                            }
                        }
                        if (rl2Var4 != null) {
                            this.f25247a.remove(rl2Var4);
                        }
                    } else if (i2 == 2) {
                        int i3 = Integer.MAX_VALUE;
                        for (Map.Entry<rl2, il2> entry3 : this.f25247a.entrySet()) {
                            if (entry3.getValue().m14351f() < i3) {
                                i3 = entry3.getValue().m14351f();
                                rl2Var2 = entry3.getKey();
                            }
                        }
                        if (rl2Var2 != null) {
                            this.f25247a.remove(rl2Var2);
                        }
                    }
                    this.f25249c.m13164d();
                }
                this.f25247a.put(rl2Var, il2Var3);
                this.f25249c.m13165c();
                il2Var2 = il2Var3;
            }
            m14356a = il2Var2.m14356a(ql2Var);
            this.f25249c.m13163e();
            ll2 m13162f = this.f25249c.m13162f();
            em2 m14349h = il2Var2.m14349h();
            C6335bn m14588C = C6558hn.m14588C();
            C7224zm m16523C = C6298an.m16523C();
            m16523C.m8336t(2);
            C6484fn m14888C = C6521gn.m14888C();
            m14888C.m15139q(m13162f.f26172d);
            m14888C.m15138r(m13162f.f26173e);
            m14888C.m15137s(m14349h.f22285e);
            m16523C.m8337s(m14888C);
            m14588C.m16317q(m16523C);
            ql2Var.f28549a.mo8231o().m16458e().mo12846o0(m14588C.m15512n());
            m13864f();
        }
        return m14356a;
    }

    @Override // com.google.android.gms.internal.ads.jl2
    /* renamed from: e */
    public final boolean mo13865e(rl2 rl2Var) {
        synchronized (this) {
            il2 il2Var = this.f25247a.get(rl2Var);
            if (il2Var != null) {
                return il2Var.m14354c() < this.f25248b.f33946i;
            }
            return true;
        }
    }
}
