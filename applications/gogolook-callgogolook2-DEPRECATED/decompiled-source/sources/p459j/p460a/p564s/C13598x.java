package p459j.p460a.p564s;

import gogolook.callgogolook2.gson.NumberInfo;
import java.util.HashMap;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p461a0.EnumC11085n;
import p459j.p460a.p582w0.p587d5.C13975b;
/* renamed from: j.a.s.x */
/* loaded from: classes2-dex2jar.jar:j/a/s/x.class */
public class C13598x {

    /* renamed from: e */
    public static C13598x f30523e;

    /* renamed from: b */
    public EnumC11085n f30525b;

    /* renamed from: c */
    public HashMap<Class<? extends AbstractC11043c>, Long> f30526c = new HashMap<>();

    /* renamed from: d */
    public HashMap<Class<? extends AbstractC11043c>, NumberInfo> f30527d = new HashMap<>();

    /* renamed from: a */
    public NumberInfo f30524a = new NumberInfo();

    /* renamed from: g */
    public static C13598x m3860g() {
        if (f30523e == null) {
            f30523e = new C13598x();
        }
        return f30523e;
    }

    /* renamed from: a */
    public long m3868a(Class<? extends AbstractC11043c> cls) {
        Long l = this.f30526c.get(cls);
        return l != null ? l.longValue() : 0L;
    }

    /* renamed from: a */
    public NumberInfo m3869a() {
        return this.f30524a;
    }

    /* renamed from: a */
    public void m3867a(Class<? extends AbstractC11043c> cls, long j) {
        this.f30526c.put(cls, Long.valueOf(j));
    }

    /* renamed from: b */
    public NumberInfo m3865b(Class<? extends AbstractC11043c> cls) {
        NumberInfo numberInfo = this.f30527d.get(cls);
        NumberInfo numberInfo2 = numberInfo;
        if (numberInfo == null) {
            numberInfo2 = new NumberInfo();
            this.f30527d.put(cls, numberInfo2);
        }
        return numberInfo2;
    }

    /* renamed from: b */
    public EnumC11085n m3866b() {
        return this.f30525b;
    }

    /* renamed from: c */
    public void m3864c() {
        this.f30524a = new NumberInfo();
        this.f30526c.clear();
        this.f30527d.clear();
    }

    /* renamed from: d */
    public void m3863d() {
        boolean equals = C13975b.f31383a.m9458a("api_return_code", "default").equals("default");
        this.f30525b = EnumC11085n.ERROR;
        if (!equals) {
            this.f30524a.m28365a(NumberInfo.ErrorReason.SERVER_ERROR);
        } else {
            this.f30524a.m28365a(NumberInfo.ErrorReason.NO_NETWORK);
        }
    }

    /* renamed from: e */
    public void m3862e() {
        this.f30525b = EnumC11085n.FINISH;
        this.f30524a.m28364a(NumberInfo.InfoSource.MEMORY_CACHE);
    }

    /* renamed from: f */
    public void m3861f() {
        this.f30525b = EnumC11085n.LOADING;
    }
}
