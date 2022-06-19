package com.google.api.client.googleapis.services;

import java.io.IOException;
/* renamed from: com.google.api.client.googleapis.services.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/services/c.class */
public class C15300c implements AbstractC15301d {
    private final String key;
    private final String userIp;

    public C15300c() {
        this(null);
    }

    public C15300c(String str) {
        this(str, null);
    }

    public C15300c(String str, String str2) {
        this.key = str;
        this.userIp = str2;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getUserIp() {
        return this.userIp;
    }

    @Override // com.google.api.client.googleapis.services.AbstractC15301d
    public void initialize(AbstractC15298b<?> abstractC15298b) throws IOException {
        String str = this.key;
        if (str != null) {
            abstractC15298b.put("key", (Object) str);
        }
        String str2 = this.userIp;
        if (str2 != null) {
            abstractC15298b.put("userIp", (Object) str2);
        }
    }
}
