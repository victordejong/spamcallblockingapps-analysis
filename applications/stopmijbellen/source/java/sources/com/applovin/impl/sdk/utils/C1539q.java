package com.applovin.impl.sdk.utils;

import android.support.p012v4.media.C0082b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p007a6.C0033h;
/* renamed from: com.applovin.impl.sdk.utils.q */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/q.class */
public class C1539q {

    /* renamed from: a */
    public static final C1539q f5712a = new C1539q();

    /* renamed from: b */
    public String f5713b;

    /* renamed from: c */
    public final List<C1539q> f5714c;

    /* renamed from: d */
    private final C1539q f5715d;

    /* renamed from: e */
    private final String f5716e;

    /* renamed from: f */
    private final Map<String, String> f5717f;

    private C1539q() {
        this.f5715d = null;
        this.f5716e = "";
        this.f5717f = Collections.emptyMap();
        this.f5713b = "";
        this.f5714c = Collections.emptyList();
    }

    public C1539q(String str, Map<String, String> map, C1539q c1539q) {
        this.f5715d = c1539q;
        this.f5716e = str;
        this.f5717f = Collections.unmodifiableMap(map);
        this.f5714c = new ArrayList();
    }

    /* renamed from: a */
    public String m4943a() {
        return this.f5716e;
    }

    /* renamed from: a */
    public List<C1539q> m4942a(String str) {
        if (str != null) {
            ArrayList arrayList = new ArrayList(this.f5714c.size());
            for (C1539q c1539q : this.f5714c) {
                if (str.equalsIgnoreCase(c1539q.m4943a())) {
                    arrayList.add(c1539q);
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    /* renamed from: b */
    public C1539q m4940b(String str) {
        if (str != null) {
            for (C1539q c1539q : this.f5714c) {
                if (str.equalsIgnoreCase(c1539q.m4943a())) {
                    return c1539q;
                }
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    /* renamed from: b */
    public Map<String, String> m4941b() {
        return this.f5717f;
    }

    /* renamed from: c */
    public C1539q m4938c(String str) {
        if (str != null) {
            if (this.f5714c.size() <= 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(this);
            while (!arrayList.isEmpty()) {
                C1539q c1539q = (C1539q) arrayList.get(0);
                arrayList.remove(0);
                if (str.equalsIgnoreCase(c1539q.m4943a())) {
                    return c1539q;
                }
                arrayList.addAll(c1539q.m4937d());
            }
            return null;
        }
        throw new IllegalArgumentException("No name specified.");
    }

    /* renamed from: c */
    public String m4939c() {
        return this.f5713b;
    }

    /* renamed from: d */
    public List<C1539q> m4937d() {
        return Collections.unmodifiableList(this.f5714c);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("XmlNode{elementName='");
        C0033h.m8882o(m8752j, this.f5716e, '\'', ", text='");
        C0033h.m8882o(m8752j, this.f5713b, '\'', ", attributes=");
        m8752j.append(this.f5717f);
        m8752j.append('}');
        return m8752j.toString();
    }
}
