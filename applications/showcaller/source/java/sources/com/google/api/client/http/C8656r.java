package com.google.api.client.http;

import com.zhy.http.okhttp.OkHttpUtils;
/* renamed from: com.google.api.client.http.r */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/r.class */
public final class C8656r {

    /* renamed from: a */
    private final AbstractC8661w f38407a;

    /* renamed from: b */
    private final AbstractC8657s f38408b;

    public C8656r(AbstractC8661w abstractC8661w, AbstractC8657s abstractC8657s) {
        this.f38407a = abstractC8661w;
        this.f38408b = abstractC8657s;
    }

    /* renamed from: a */
    public C8655q m3079a(C8645i c8645i) {
        return m3076d("GET", c8645i, null);
    }

    /* renamed from: b */
    public C8655q m3078b(C8645i c8645i, AbstractC8646j abstractC8646j) {
        return m3076d("POST", c8645i, abstractC8646j);
    }

    /* renamed from: c */
    public C8655q m3077c(C8645i c8645i, AbstractC8646j abstractC8646j) {
        return m3076d(OkHttpUtils.METHOD.PUT, c8645i, abstractC8646j);
    }

    /* renamed from: d */
    public C8655q m3076d(String str, C8645i c8645i, AbstractC8646j abstractC8646j) {
        C8655q m3054a = this.f38407a.m3054a();
        AbstractC8657s abstractC8657s = this.f38408b;
        if (abstractC8657s != null) {
            abstractC8657s.mo3073b(m3054a);
        }
        m3054a.m3080z(str);
        if (c8645i != null) {
            m3054a.m3106E(c8645i);
        }
        if (abstractC8646j != null) {
            m3054a.m3085u(abstractC8646j);
        }
        return m3054a;
    }

    /* renamed from: e */
    public AbstractC8657s m3075e() {
        return this.f38408b;
    }

    /* renamed from: f */
    public AbstractC8661w m3074f() {
        return this.f38407a;
    }
}
