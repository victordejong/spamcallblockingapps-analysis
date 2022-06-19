package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.C3128ez;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dts.class */
public abstract class dts<T> implements Comparable<dts<T>> {

    /* renamed from: a */
    private final C3128ez.C3129a f15715a;

    /* renamed from: b */
    private final int f15716b;

    /* renamed from: c */
    private final String f15717c;

    /* renamed from: d */
    private final int f15718d;

    /* renamed from: e */
    private final Object f15719e;

    /* renamed from: f */
    private ebp f15720f;

    /* renamed from: g */
    private Integer f15721g;

    /* renamed from: h */
    private dxq f15722h;

    /* renamed from: i */
    private boolean f15723i;

    /* renamed from: j */
    private boolean f15724j;

    /* renamed from: k */
    private boolean f15725k;

    /* renamed from: l */
    private boolean f15726l;

    /* renamed from: m */
    private AbstractC2854cc f15727m;

    /* renamed from: n */
    private bzv f15728n;

    /* renamed from: o */
    private dvo f15729o;

    public dts(int i, String str, ebp ebpVar) {
        Uri parse;
        String host;
        this.f15715a = C3128ez.C3129a.f16645a ? new C3128ez.C3129a() : null;
        this.f15719e = new Object();
        this.f15723i = true;
        this.f15724j = false;
        this.f15725k = false;
        this.f15726l = false;
        this.f15728n = null;
        this.f15716b = i;
        this.f15717c = str;
        this.f15720f = ebpVar;
        this.f15727m = new dka();
        this.f15718d = (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) ? 0 : host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final dts<?> m8607a(bzv bzvVar) {
        this.f15728n = bzvVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final dts<?> m8604a(dxq dxqVar) {
        this.f15722h = dxqVar;
        return this;
    }

    /* renamed from: a */
    public abstract ecj<T> mo6863a(drt drtVar);

    /* renamed from: a */
    public final void m8608a(int i) {
        if (this.f15722h != null) {
            this.f15722h.m8202a(this, i);
        }
    }

    /* renamed from: a */
    public final void m8605a(dvo dvoVar) {
        synchronized (this.f15719e) {
            this.f15729o = dvoVar;
        }
    }

    /* renamed from: a */
    public final void m8603a(ecj<?> ecjVar) {
        dvo dvoVar;
        synchronized (this.f15719e) {
            dvoVar = this.f15729o;
        }
        if (dvoVar != null) {
            dvoVar.mo8490a(this, ecjVar);
        }
    }

    /* renamed from: a */
    public final void m8602a(zzae zzaeVar) {
        ebp ebpVar;
        synchronized (this.f15719e) {
            ebpVar = this.f15720f;
        }
        if (ebpVar != null) {
            ebpVar.mo6864a(zzaeVar);
        }
    }

    /* renamed from: a */
    public abstract void mo6862a(T t);

    /* renamed from: a */
    public byte[] mo6868a() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final dts<?> m8601b(int i) {
        this.f15721g = Integer.valueOf(i);
        return this;
    }

    /* renamed from: b */
    public Map<String, String> mo6866b() {
        return Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m8600b(String str) {
        if (C3128ez.C3129a.f16645a) {
            this.f15715a.m7847a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: c */
    public final int m8599c() {
        return this.f15716b;
    }

    /* renamed from: c */
    public final void m8598c(String str) {
        if (this.f15722h != null) {
            this.f15722h.m8201b(this);
        }
        if (C3128ez.C3129a.f16645a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new dwp(this, str, id));
                return;
            }
            this.f15715a.m7847a(str, id);
            this.f15715a.m7848a(toString());
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        dts dtsVar = (dts) obj;
        dyp dypVar = dyp.NORMAL;
        dyp dypVar2 = dyp.NORMAL;
        return dypVar == dypVar2 ? this.f15721g.intValue() - dtsVar.f15721g.intValue() : dypVar2.ordinal() - dypVar.ordinal();
    }

    /* renamed from: d */
    public final int m8597d() {
        return this.f15718d;
    }

    /* renamed from: e */
    public final String m8596e() {
        return this.f15717c;
    }

    /* renamed from: f */
    public final String m8595f() {
        String str = this.f15717c;
        int i = this.f15716b;
        String str2 = str;
        if (i != 0) {
            if (i == -1) {
                str2 = str;
            } else {
                String num = Integer.toString(i);
                str2 = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length()).append(num).append('-').append(str).toString();
            }
        }
        return str2;
    }

    /* renamed from: g */
    public final bzv m8594g() {
        return this.f15728n;
    }

    /* renamed from: h */
    public final boolean m8593h() {
        synchronized (this.f15719e) {
        }
        return false;
    }

    /* renamed from: i */
    public final boolean m8592i() {
        return this.f15723i;
    }

    /* renamed from: j */
    public final int m8591j() {
        return this.f15727m.mo9362a();
    }

    /* renamed from: k */
    public final AbstractC2854cc m8590k() {
        return this.f15727m;
    }

    /* renamed from: l */
    public final void m8589l() {
        synchronized (this.f15719e) {
            this.f15725k = true;
        }
    }

    /* renamed from: m */
    public final boolean m8588m() {
        boolean z;
        synchronized (this.f15719e) {
            z = this.f15725k;
        }
        return z;
    }

    /* renamed from: n */
    public final void m8587n() {
        dvo dvoVar;
        synchronized (this.f15719e) {
            dvoVar = this.f15729o;
        }
        if (dvoVar != null) {
            dvoVar.mo8491a(this);
        }
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f15718d));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        m8593h();
        String str = this.f15717c;
        String valueOf2 = String.valueOf(dyp.NORMAL);
        String valueOf3 = String.valueOf(this.f15721g);
        return new StringBuilder(String.valueOf("[ ] ").length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("[ ] ").append(str).append(" ").append(concat).append(" ").append(valueOf2).append(" ").append(valueOf3).toString();
    }
}
