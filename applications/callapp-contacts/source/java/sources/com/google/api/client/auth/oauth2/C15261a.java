package com.google.api.client.auth.oauth2;

import com.google.api.client.auth.oauth2.C15263b;
import com.google.api.client.http.C15340q;
import java.io.IOException;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.google.api.client.auth.oauth2.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/a.class */
public final class C15261a {

    /* renamed from: a */
    static final Pattern f55149a = Pattern.compile("\\s*error\\s*=\\s*\"?invalid_token\"?");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.auth.oauth2.a$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/auth/oauth2/a$a.class */
    public static final class C15262a implements C15263b.AbstractC15264a {
        C15262a() {
        }

        @Override // com.google.api.client.auth.oauth2.C15263b.AbstractC15264a
        /* renamed from: a */
        public final String mo9194a(C15340q c15340q) {
            List<String> list = c15340q.f55363d.authorization;
            if (list != null) {
                for (String str : list) {
                    if (str.startsWith("Bearer ")) {
                        return str.substring(7);
                    }
                }
                return null;
            }
            return null;
        }

        @Override // com.google.api.client.auth.oauth2.C15263b.AbstractC15264a
        /* renamed from: a */
        public final void mo9193a(C15340q c15340q, String str) throws IOException {
            c15340q.f55363d.m9092a("Bearer ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: a */
    public static C15263b.AbstractC15264a m9200a() {
        return new C15262a();
    }
}
