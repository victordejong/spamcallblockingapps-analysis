package com.google.api.client.testing.p384a;

import com.google.api.client.http.AbstractC15313aa;
import com.google.api.client.http.AbstractC15349z;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.google.api.client.testing.a.c */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/testing/a/c.class */
public final class C15355c extends AbstractC15349z {

    /* renamed from: b */
    private String f55412b;

    /* renamed from: c */
    private final Map<String, List<String>> f55413c = new HashMap();

    /* renamed from: a */
    C15356d f55411a = new C15356d();

    public C15355c() {
    }

    public C15355c(String str) {
        this.f55412b = str;
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final void addHeader(String str, String str2) throws IOException {
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> list = this.f55413c.get(lowerCase);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
            this.f55413c.put(lowerCase, arrayList);
        }
        arrayList.add(str2);
    }

    @Override // com.google.api.client.http.AbstractC15349z
    public final AbstractC15313aa execute() throws IOException {
        return this.f55411a;
    }
}
