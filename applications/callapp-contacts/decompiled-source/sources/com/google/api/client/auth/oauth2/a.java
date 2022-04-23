package com.google.api.client.auth.oauth2;

import com.google.api.client.auth.oauth2.b;
import com.google.api.client.http.q;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f31682a = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* renamed from: com.google.api.client.auth.oauth2.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/a$a.class */
    static final class C0497a implements b.a {
        C0497a() {
        }

        @Override // com.google.api.client.auth.oauth2.b.a
        public final String a(q qVar) {
            List<String> list = qVar.f31825d.authorization;
            if (list == null) {
                return null;
            }
            for (String str : list) {
                if (str.startsWith("Bearer ")) {
                    return str.substring(7);
                }
            }
            return null;
        }

        @Override // com.google.api.client.auth.oauth2.b.a
        public final void a(q qVar, String str) throws IOException {
            qVar.f31825d.a("Bearer ".concat(String.valueOf(str)));
        }
    }

    public static b.a a() {
        return new C0497a();
    }
}
