package com.google.api.client.googleapis;

import com.google.api.client.http.AbstractC8649m;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.C8623d0;
import com.google.api.client.http.C8626f;
import com.google.api.client.http.C8655q;
/* renamed from: com.google.api.client.googleapis.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/a.class */
public final class C8589a implements AbstractC8649m, AbstractC8657s {

    /* renamed from: a */
    private final boolean f38204a;

    public C8589a() {
        this(false);
    }

    C8589a(boolean z) {
        this.f38204a = z;
    }

    /* renamed from: c */
    private boolean m3292c(C8655q c8655q) {
        String m3096j = c8655q.m3096j();
        if (m3096j.equals("POST")) {
            return false;
        }
        if (m3096j.equals("GET")) {
            if (c8655q.m3089q().m3173d().length() > 2048) {
                return true;
            }
        } else if (this.f38204a) {
            return true;
        }
        return !c8655q.m3091o().mo3050e(m3096j);
    }

    @Override // com.google.api.client.http.AbstractC8649m
    /* renamed from: a */
    public void mo3159a(C8655q c8655q) {
        if (m3292c(c8655q)) {
            String m3096j = c8655q.m3096j();
            c8655q.m3080z("POST");
            c8655q.m3100f().set("X-HTTP-Method-Override", m3096j);
            if (m3096j.equals("GET")) {
                c8655q.m3085u(new C8623d0(c8655q.m3089q().clone()));
                c8655q.m3089q().clear();
            } else if (c8655q.m3103c() != null) {
            } else {
                c8655q.m3085u(new C8626f());
            }
        }
    }

    @Override // com.google.api.client.http.AbstractC8657s
    /* renamed from: b */
    public void mo3073b(C8655q c8655q) {
        c8655q.m3082x(this);
    }
}
