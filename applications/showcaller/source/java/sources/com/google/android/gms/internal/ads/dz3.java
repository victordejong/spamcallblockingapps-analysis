package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/dz3.class */
public abstract class dz3<T> implements Comparable<dz3<T>> {

    /* renamed from: d */
    private final lz3 f21943d;

    /* renamed from: e */
    private final int f21944e;

    /* renamed from: f */
    private final String f21945f;

    /* renamed from: g */
    private final int f21946g;

    /* renamed from: h */
    private final Object f21947h;

    /* renamed from: i */
    private final hz3 f21948i;

    /* renamed from: j */
    private Integer f21949j;

    /* renamed from: k */
    private gz3 f21950k;

    /* renamed from: l */
    private boolean f21951l;

    /* renamed from: m */
    private oy3 f21952m;

    /* renamed from: n */
    private cz3 f21953n;

    /* renamed from: o */
    private final sy3 f21954o;

    public dz3(int i, String str, hz3 hz3Var) {
        this.f21943d = lz3.f26364a ? new lz3() : null;
        this.f21947h = new Object();
        this.f21951l = false;
        this.f21952m = null;
        this.f21944e = i;
        this.f21945f = str;
        this.f21948i = hz3Var;
        this.f21954o = new sy3();
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
        this.f21946g = i2;
    }

    /* renamed from: A */
    public final sy3 m15643A() {
        return this.f21954o;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f21949j.intValue() - ((dz3) obj).f21949j.intValue();
    }

    /* renamed from: d */
    public final int m15641d() {
        return this.f21944e;
    }

    /* renamed from: e */
    public final int m15640e() {
        return this.f21946g;
    }

    /* renamed from: f */
    public final void m15639f(String str) {
        if (lz3.f26364a) {
            this.f21943d.m13381a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: g */
    public final void m15638g(String str) {
        gz3 gz3Var = this.f21950k;
        if (gz3Var != null) {
            gz3Var.m14772c(this);
        }
        if (lz3.f26364a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new bz3(this, str, id));
                return;
            }
            this.f21943d.m13381a(str, id);
            this.f21943d.m13380b(toString());
        }
    }

    /* renamed from: h */
    public final void m15637h(int i) {
        gz3 gz3Var = this.f21950k;
        if (gz3Var != null) {
            gz3Var.m14771d(this, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final dz3<?> m15636i(gz3 gz3Var) {
        this.f21950k = gz3Var;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    public final dz3<?> m15635j(int i) {
        this.f21949j = Integer.valueOf(i);
        return this;
    }

    /* renamed from: k */
    public final String m15634k() {
        return this.f21945f;
    }

    /* renamed from: l */
    public final String m15633l() {
        String str = this.f21945f;
        String str2 = str;
        if (this.f21944e != 0) {
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
    /* renamed from: m */
    public final dz3<?> m15632m(oy3 oy3Var) {
        this.f21952m = oy3Var;
        return this;
    }

    /* renamed from: n */
    public final oy3 m15631n() {
        return this.f21952m;
    }

    /* renamed from: o */
    public final boolean m15630o() {
        synchronized (this.f21947h) {
        }
        return false;
    }

    /* renamed from: p */
    public Map<String, String> mo15629p() {
        return Collections.emptyMap();
    }

    /* renamed from: q */
    public byte[] mo15628q() {
        return null;
    }

    /* renamed from: r */
    public final int m15627r() {
        return this.f21954o.m10887a();
    }

    /* renamed from: s */
    public final void m15626s() {
        synchronized (this.f21947h) {
            this.f21951l = true;
        }
    }

    /* renamed from: t */
    public final boolean m15625t() {
        boolean z;
        synchronized (this.f21947h) {
            z = this.f21951l;
        }
        return z;
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f21946g));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        m15630o();
        String str = this.f21945f;
        String valueOf2 = String.valueOf(this.f21949j);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7 + String.valueOf(concat).length() + 6 + valueOf2.length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(concat);
        sb.append(" NORMAL ");
        sb.append(valueOf2);
        return sb.toString();
    }

    /* renamed from: u */
    public abstract jz3<T> mo14999u(zy3 zy3Var);

    /* renamed from: v */
    public abstract void mo15624v(T t);

    /* renamed from: w */
    public final void m15623w(zzwl zzwlVar) {
        hz3 hz3Var;
        synchronized (this.f21947h) {
            hz3Var = this.f21948i;
        }
        if (hz3Var != null) {
            hz3Var.mo14520a(zzwlVar);
        }
    }

    /* renamed from: x */
    public final void m15622x(cz3 cz3Var) {
        synchronized (this.f21947h) {
            this.f21953n = cz3Var;
        }
    }

    /* renamed from: y */
    public final void m15621y(jz3<?> jz3Var) {
        cz3 cz3Var;
        synchronized (this.f21947h) {
            cz3Var = this.f21953n;
        }
        if (cz3Var != null) {
            cz3Var.mo12766b(this, jz3Var);
        }
    }

    /* renamed from: z */
    public final void m15620z() {
        cz3 cz3Var;
        synchronized (this.f21947h) {
            cz3Var = this.f21953n;
        }
        if (cz3Var != null) {
            cz3Var.mo12767a(this);
        }
    }
}
