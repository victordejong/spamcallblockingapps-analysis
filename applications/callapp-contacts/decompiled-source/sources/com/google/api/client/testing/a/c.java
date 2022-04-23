package com.google.api.client.testing.a;

import com.google.api.client.http.aa;
import com.google.api.client.http.z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/c.class */
public final class c extends z {

    /* renamed from: b  reason: collision with root package name */
    private String f31843b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, List<String>> f31844c = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    d f31842a = new d();

    public c() {
    }

    public c(String str) {
        this.f31843b = str;
    }

    @Override // com.google.api.client.http.z
    public final void addHeader(String str, String str2) throws IOException {
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> list = this.f31844c.get(lowerCase);
        List<String> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.f31844c.put(lowerCase, list2);
        }
        list2.add(str2);
    }

    @Override // com.google.api.client.http.z
    public final aa execute() throws IOException {
        return this.f31842a;
    }
}
