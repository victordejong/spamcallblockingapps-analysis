package com.google.api.client.http.p288h0;

import com.google.api.client.http.AbstractC8614a;
import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.AbstractC8668d;
import com.google.api.client.util.C8731w;
import java.io.OutputStream;
/* renamed from: com.google.api.client.http.h0.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/http/h0/a.class */
public class C8644a extends AbstractC8614a {

    /* renamed from: c */
    private final Object f38350c;

    /* renamed from: d */
    private final AbstractC8667c f38351d;

    /* renamed from: e */
    private String f38352e;

    public C8644a(AbstractC8667c abstractC8667c, Object obj) {
        super("application/json; charset=UTF-8");
        this.f38351d = (AbstractC8667c) C8731w.m2836d(abstractC8667c);
        this.f38350c = C8731w.m2836d(obj);
    }

    /* renamed from: g */
    public C8644a m3177g(String str) {
        this.f38352e = str;
        return this;
    }

    @Override // com.google.api.client.util.AbstractC8735z
    public void writeTo(OutputStream outputStream) {
        AbstractC8668d mo3001a = this.f38351d.mo3001a(outputStream, m3230e());
        if (this.f38352e != null) {
            mo3001a.mo2990L();
            mo3001a.mo2984q(this.f38352e);
        }
        mo3001a.m3023e(this.f38350c);
        if (this.f38352e != null) {
            mo3001a.mo2985p();
        }
        mo3001a.flush();
    }
}
