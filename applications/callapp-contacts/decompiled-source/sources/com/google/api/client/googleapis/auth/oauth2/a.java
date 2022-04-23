package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.a.aa;
import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.auth.openidconnect.a;
import com.google.api.client.http.w;
import com.google.api.client.json.JsonFactory;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.Collection;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/a.class */
public final class a extends com.google.api.client.auth.openidconnect.a {

    /* renamed from: a  reason: collision with root package name */
    private final b f31732a;

    /* renamed from: com.google.api.client.googleapis.auth.oauth2.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/auth/oauth2/a$a.class */
    public static final class C0503a extends a.C0500a {
        b e;

        public C0503a(b bVar) {
            this.e = (b) aa.a(bVar);
            a(Arrays.asList("accounts.google.com", "https://accounts.google.com"));
        }

        public C0503a(w wVar, JsonFactory jsonFactory) {
            this(new b(wVar, jsonFactory));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public C0503a a(Collection<String> collection) {
            return (C0503a) super.a(collection);
        }
    }

    protected a(C0503a aVar) {
        super(aVar);
        this.f31732a = aVar.e;
    }

    public a(b bVar) {
        this(new C0503a(bVar));
    }

    public a(w wVar, JsonFactory jsonFactory) {
        this(new C0503a(wVar, jsonFactory));
    }

    public final boolean a(GoogleIdToken googleIdToken) throws GeneralSecurityException, IOException {
        if (!super.a((IdToken) googleIdToken)) {
            return false;
        }
        for (PublicKey publicKey : this.f31732a.a()) {
            if (googleIdToken.verifySignature(publicKey)) {
                return true;
            }
        }
        return false;
    }
}
