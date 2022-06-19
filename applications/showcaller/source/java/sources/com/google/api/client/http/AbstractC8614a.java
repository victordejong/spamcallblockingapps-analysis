package com.google.api.client.http;

import com.google.api.client.util.C8709h;
import com.google.api.client.util.C8718m;
import java.nio.charset.Charset;
/* renamed from: com.google.api.client.http.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/a.class */
public abstract class AbstractC8614a implements AbstractC8646j {

    /* renamed from: a */
    private C8654p f38299a;

    /* renamed from: b */
    private long f38300b;

    public AbstractC8614a(C8654p c8654p) {
        this.f38300b = -1L;
        this.f38299a = c8654p;
    }

    public AbstractC8614a(String str) {
        this(str == null ? null : new C8654p(str));
    }

    /* renamed from: d */
    public static long m3231d(AbstractC8646j abstractC8646j) {
        if (!abstractC8646j.mo3048b()) {
            return -1L;
        }
        return C8718m.m2852a(abstractC8646j);
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: a */
    public String mo3161a() {
        C8654p c8654p = this.f38299a;
        return c8654p == null ? null : c8654p.m3125a();
    }

    @Override // com.google.api.client.http.AbstractC8646j
    /* renamed from: b */
    public boolean mo3048b() {
        return true;
    }

    /* renamed from: c */
    protected long m3232c() {
        return m3231d(this);
    }

    /* renamed from: e */
    public final Charset m3230e() {
        C8654p c8654p = this.f38299a;
        return (c8654p == null || c8654p.m3121e() == null) ? C8709h.f38509b : this.f38299a.m3121e();
    }

    /* renamed from: f */
    public final C8654p m3229f() {
        return this.f38299a;
    }

    @Override // com.google.api.client.http.AbstractC8646j
    public long getLength() {
        if (this.f38300b == -1) {
            this.f38300b = m3232c();
        }
        return this.f38300b;
    }
}
