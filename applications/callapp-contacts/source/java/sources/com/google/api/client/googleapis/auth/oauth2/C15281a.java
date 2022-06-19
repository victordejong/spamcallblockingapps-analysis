package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.openidconnect.C15270a;
import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.http.AbstractC15346w;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.p379a.C15207aa;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.Collection;
/* renamed from: com.google.api.client.googleapis.auth.oauth2.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/a.class */
public final class C15281a extends C15270a {

    /* renamed from: a */
    private final C15283b f55237a;

    /* renamed from: com.google.api.client.googleapis.auth.oauth2.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/a$a.class */
    public static final class C15282a extends C15270a.C15271a {

        /* renamed from: e */
        C15283b f55238e;

        public C15282a(C15283b c15283b) {
            this.f55238e = (C15283b) C15207aa.m9283a(c15283b);
            mo9170a(Arrays.asList("accounts.google.com", "https://accounts.google.com"));
        }

        public C15282a(AbstractC15346w abstractC15346w, JsonFactory jsonFactory) {
            this(new C15283b(abstractC15346w, jsonFactory));
        }

        /* renamed from: b */
        public C15282a mo9170a(Collection<String> collection) {
            return (C15282a) super.mo9170a(collection);
        }
    }

    protected C15281a(C15282a c15282a) {
        super(c15282a);
        this.f55237a = c15282a.f55238e;
    }

    public C15281a(C15283b c15283b) {
        this(new C15282a(c15283b));
    }

    public C15281a(AbstractC15346w abstractC15346w, JsonFactory jsonFactory) {
        this(new C15282a(abstractC15346w, jsonFactory));
    }

    /* renamed from: a */
    public final boolean m9171a(GoogleIdToken googleIdToken) throws GeneralSecurityException, IOException {
        if (!super.m9181a((IdToken) googleIdToken)) {
            return false;
        }
        for (PublicKey publicKey : this.f55237a.m9168a()) {
            if (googleIdToken.verifySignature(publicKey)) {
                return true;
            }
        }
        return false;
    }
}
