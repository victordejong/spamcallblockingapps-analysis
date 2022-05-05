package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.volley.b;
import com.android.volley.p;
import com.android.volley.v;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/android/volley/n.class */
public abstract class n<T> implements Comparable<n<T>> {
    private static long o;

    /* renamed from: a  reason: collision with root package name */
    public final int f2302a;

    /* renamed from: b  reason: collision with root package name */
    public final String f2303b;
    public String c;
    final int d;
    p.a e;
    Integer f;
    o g;
    boolean h;
    public boolean i;
    boolean j;
    public r k;
    public b.a l;
    private final v.a m;
    private String n;

    /* loaded from: classes-dex2jar.jar:com/android/volley/n$a.class */
    public enum a {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public n(String str, p.a aVar) {
        Uri parse;
        String host;
        this.m = v.a.f2346a ? new v.a() : null;
        this.h = true;
        this.i = false;
        this.j = false;
        this.l = null;
        this.f2302a = 0;
        this.f2303b = str;
        StringBuilder append = new StringBuilder("Request:0:").append(str).append(":").append(System.currentTimeMillis()).append(":");
        long j = o;
        o = 1 + j;
        this.n = f.a(append.append(j).toString());
        this.e = aVar;
        this.k = new d();
        this.d = (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || (host = parse.getHost()) == null) ? 0 : host.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static u a(u uVar) {
        return uVar;
    }

    public abstract p<T> a(j jVar);

    public void a() {
        this.e = null;
    }

    public abstract void a(T t);

    public final void a(String str) {
        if (v.a.f2346a) {
            this.m.a(str, Thread.currentThread().getId());
        }
    }

    public final String b() {
        return this.c != null ? this.c : this.f2303b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(final String str) {
        if (this.g != null) {
            o oVar = this.g;
            synchronized (oVar.f2309b) {
                oVar.f2309b.remove(this);
            }
            synchronized (oVar.d) {
                Iterator<Object> it = oVar.d.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
            if (this.h) {
                synchronized (oVar.f2308a) {
                    String c = c();
                    Queue<n<?>> remove = oVar.f2308a.remove(c);
                    if (remove != null) {
                        if (v.f2345b) {
                            v.a("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), c);
                        }
                        oVar.c.addAll(remove);
                    }
                }
            }
            a();
        }
        if (v.a.f2346a) {
            final long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.volley.n.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.this.m.a(str, id);
                        n.this.m.a(toString());
                    }
                });
                return;
            }
            this.m.a(str, id);
            this.m.a(toString());
        }
    }

    public final String c() {
        return this.f2302a + ":" + this.f2303b;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        n nVar = (n) obj;
        a i = i();
        a i2 = nVar.i();
        return i == i2 ? this.f.intValue() - nVar.f.intValue() : i2.ordinal() - i.ordinal();
    }

    public Map<String, String> d() {
        return Collections.emptyMap();
    }

    @Deprecated
    public String e() {
        return g();
    }

    @Deprecated
    public byte[] f() {
        return null;
    }

    public String g() {
        return "application/x-www-form-urlencoded; charset=UTF-8";
    }

    public byte[] h() {
        return null;
    }

    public a i() {
        return a.NORMAL;
    }

    public final int j() {
        return this.k.a();
    }

    public String toString() {
        return (this.i ? "[X] " : "[ ] ") + b() + " " + ("0x" + Integer.toHexString(this.d)) + " " + i() + " " + this.f;
    }
}
