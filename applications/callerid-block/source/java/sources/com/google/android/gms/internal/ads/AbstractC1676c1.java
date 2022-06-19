package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.c1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/c1.class */
public abstract class AbstractC1676c1<T> implements Comparable<AbstractC1676c1<T>> {

    /* renamed from: b */
    private final C1717eb f6231b;

    /* renamed from: c */
    private final int f6232c;

    /* renamed from: d */
    private final String f6233d;

    /* renamed from: e */
    private final int f6234e;

    /* renamed from: f */
    private final Object f6235f;

    /* renamed from: g */
    private final AbstractC2031x4 f6236g;

    /* renamed from: h */
    private Integer f6237h;

    /* renamed from: i */
    private C2010w3 f6238i;

    /* renamed from: j */
    private boolean f6239j;

    /* renamed from: k */
    private dn2 f6240k;

    /* renamed from: l */
    private AbstractC1675c0 f6241l;

    /* renamed from: m */
    private final pr2 f6242m;

    public AbstractC1676c1(int i, String str, AbstractC2031x4 abstractC2031x4) {
        this.f6231b = C1717eb.f6387c ? new C1717eb() : null;
        this.f6235f = new Object();
        this.f6239j = false;
        this.f6240k = null;
        this.f6232c = i;
        this.f6233d = str;
        this.f6236g = abstractC2031x4;
        this.f6242m = new pr2();
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            i2 = 0;
            if (parse != null) {
                String host = parse.getHost();
                i2 = 0;
                if (host != null) {
                    i2 = host.hashCode();
                }
            }
        }
        this.f6234e = i2;
    }

    /* renamed from: A */
    public final void m7903A(C1992v6<?> c1992v6) {
        AbstractC1675c0 abstractC1675c0;
        synchronized (this.f6235f) {
            abstractC1675c0 = this.f6241l;
        }
        if (abstractC1675c0 != null) {
            abstractC1675c0.m7904b(this, c1992v6);
        }
    }

    /* renamed from: B */
    public final void m7902B() {
        AbstractC1675c0 abstractC1675c0;
        synchronized (this.f6235f) {
            abstractC1675c0 = this.f6241l;
        }
        if (abstractC1675c0 != null) {
            abstractC1675c0.m7905a(this);
        }
    }

    /* renamed from: D */
    public final pr2 m7900D() {
        return this.f6242m;
    }

    /* renamed from: a */
    public final int m7899a() {
        return this.f6234e;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f6237h.intValue() - ((AbstractC1676c1) obj).f6237h.intValue();
    }

    /* renamed from: e */
    public final void m7898e(String str) {
        if (C1717eb.f6387c) {
            this.f6231b.m7662a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: h */
    public final void m7897h(String str) {
        C2010w3 c2010w3 = this.f6238i;
        if (c2010w3 != null) {
            c2010w3.m5125c(this);
        }
        if (C1717eb.f6387c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC1659b(this, str, id));
                return;
            }
            this.f6231b.m7662a(str, id);
            this.f6231b.m7661b(toString());
        }
    }

    /* renamed from: j */
    public final void m7896j(int i) {
        C2010w3 c2010w3 = this.f6238i;
        if (c2010w3 != null) {
            c2010w3.m5124d(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: k */
    public final AbstractC1676c1<?> m7895k(C2010w3 c2010w3) {
        this.f6238i = c2010w3;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public final AbstractC1676c1<?> m7894l(int i) {
        this.f6237h = Integer.valueOf(i);
        return this;
    }

    /* renamed from: m */
    public final String m7893m() {
        return this.f6233d;
    }

    /* renamed from: n */
    public final String m7892n() {
        String str = this.f6233d;
        String str2 = str;
        if (this.f6232c != 0) {
            String num = Integer.toString(1);
            StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
            sb.append(num);
            sb.append('-');
            sb.append(str);
            str2 = sb.toString();
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: o */
    public final AbstractC1676c1<?> m7891o(dn2 dn2Var) {
        this.f6240k = dn2Var;
        return this;
    }

    /* renamed from: p */
    public final dn2 m7890p() {
        return this.f6240k;
    }

    /* renamed from: q */
    public final boolean m7889q() {
        synchronized (this.f6235f) {
        }
        return false;
    }

    /* renamed from: r */
    public Map<String, String> m7888r() {
        return Collections.emptyMap();
    }

    /* renamed from: s */
    public byte[] m7887s() {
        return null;
    }

    /* renamed from: t */
    public final int m7886t() {
        return this.f6242m.m6170a();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f6234e));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        m7889q();
        String str = this.f6233d;
        String valueOf2 = String.valueOf(this.f6237h);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(concat).length() + 6 + String.valueOf(valueOf2).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(concat);
        sb.append(" NORMAL ");
        sb.append(valueOf2);
        return sb.toString();
    }

    /* renamed from: u */
    public final void m7885u() {
        synchronized (this.f6235f) {
            this.f6239j = true;
        }
    }

    /* renamed from: v */
    public final boolean m7884v() {
        boolean z;
        synchronized (this.f6235f) {
            z = this.f6239j;
        }
        return z;
    }

    /* renamed from: w */
    public abstract C1992v6<T> m7883w(yy2 yy2Var);

    /* renamed from: x */
    public abstract void m7882x(T t);

    /* renamed from: y */
    public final void m7881y(zzal zzalVar) {
        AbstractC2031x4 abstractC2031x4;
        synchronized (this.f6235f) {
            abstractC2031x4 = this.f6236g;
        }
        if (abstractC2031x4 != null) {
            abstractC2031x4.m4967a(zzalVar);
        }
    }

    /* renamed from: z */
    final void m7880z(AbstractC1675c0 abstractC1675c0) {
        synchronized (this.f6235f) {
            this.f6241l = abstractC1675c0;
        }
    }

    public final int zza() {
        return this.f6232c;
    }
}
