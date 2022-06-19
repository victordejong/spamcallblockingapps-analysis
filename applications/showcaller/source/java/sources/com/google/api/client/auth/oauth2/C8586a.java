package com.google.api.client.auth.oauth2;

import com.google.api.client.http.AbstractC8649m;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.http.C8623d0;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8658t;
import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.C8669e;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.GenericData;
/* renamed from: com.google.api.client.auth.oauth2.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/a.class */
public class C8586a extends GenericData {

    /* renamed from: d */
    AbstractC8657s f38191d;

    /* renamed from: e */
    AbstractC8649m f38192e;

    /* renamed from: f */
    private final AbstractC8661w f38193f;

    /* renamed from: g */
    private final AbstractC8667c f38194g;
    @AbstractC8720o("grant_type")
    private String grantType;

    /* renamed from: h */
    private C8645i f38195h;
    @AbstractC8720o("scope")
    private String scopes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.auth.oauth2.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/a$a.class */
    public class C8587a implements AbstractC8657s {

        /* renamed from: com.google.api.client.auth.oauth2.a$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/api/client/auth/oauth2/a$a$a.class */
        class C8588a implements AbstractC8649m {

            /* renamed from: a */
            final /* synthetic */ AbstractC8649m f38197a;

            C8588a(AbstractC8649m abstractC8649m) {
                C8587a.this = r4;
                this.f38197a = abstractC8649m;
            }

            @Override // com.google.api.client.http.AbstractC8649m
            /* renamed from: a */
            public void mo3159a(C8655q c8655q) {
                AbstractC8649m abstractC8649m = this.f38197a;
                if (abstractC8649m != null) {
                    abstractC8649m.mo3159a(c8655q);
                }
                AbstractC8649m abstractC8649m2 = C8586a.this.f38192e;
                if (abstractC8649m2 != null) {
                    abstractC8649m2.mo3159a(c8655q);
                }
            }
        }

        C8587a() {
            C8586a.this = r4;
        }

        @Override // com.google.api.client.http.AbstractC8657s
        /* renamed from: b */
        public void mo3073b(C8655q c8655q) {
            AbstractC8657s abstractC8657s = C8586a.this.f38191d;
            if (abstractC8657s != null) {
                abstractC8657s.mo3073b(c8655q);
            }
            c8655q.m3082x(new C8588a(c8655q.m3098h()));
        }
    }

    /* renamed from: a */
    public C8586a set(String str, Object obj) {
        return (C8586a) super.set(str, obj);
    }

    public final C8658t executeUnparsed() {
        C8655q m3078b = this.f38193f.m3051d(new C8587a()).m3078b(this.f38195h, new C8623d0(this));
        m3078b.m3081y(new C8669e(this.f38194g));
        m3078b.m3108C(false);
        C8658t m3104b = m3078b.m3104b();
        if (m3104b.m3061l()) {
            return m3104b;
        }
        throw TokenResponseException.from(this.f38194g, m3104b);
    }
}
