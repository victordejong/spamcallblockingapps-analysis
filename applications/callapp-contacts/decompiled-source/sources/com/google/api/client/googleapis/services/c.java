package com.google.api.client.googleapis.services;

import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/c.class */
public class c implements d {
    private final String key;
    private final String userIp;

    public c() {
        this(null);
    }

    public c(String str) {
        this(str, null);
    }

    public c(String str, String str2) {
        this.key = str;
        this.userIp = str2;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getUserIp() {
        return this.userIp;
    }

    @Override // com.google.api.client.googleapis.services.d
    public void initialize(b<?> bVar) throws IOException {
        String str = this.key;
        if (str != null) {
            bVar.put("key", (Object) str);
        }
        String str2 = this.userIp;
        if (str2 != null) {
            bVar.put("userIp", (Object) str2);
        }
    }
}
