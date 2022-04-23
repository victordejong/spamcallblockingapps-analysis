package com.nimbusds.jose;

import com.nimbusds.jose.o.a;
import com.nimbusds.jose.util.c;
import java.net.URI;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/nimbusds/jose/g$a.class */
public class g$a {

    /* renamed from: a */
    private final f f230a;

    /* renamed from: b */
    private e f231b;

    /* renamed from: c */
    private String f232c;

    /* renamed from: d */
    private Set<String> f233d;

    /* renamed from: e */
    private URI f234e;

    /* renamed from: f */
    private a f235f;

    /* renamed from: g */
    private URI f236g;
    @Deprecated

    /* renamed from: h */
    private c f237h;

    /* renamed from: i */
    private c f238i;

    /* renamed from: j */
    private List<com.nimbusds.jose.util.a> f239j;

    /* renamed from: k */
    private String f240k;

    /* renamed from: l */
    private Map<String, Object> f241l;

    /* renamed from: m */
    private c f242m;

    public g$a(f fVar) {
        if (!fVar.a().equals(a.g.a())) {
            this.f230a = fVar;
            return;
        }
        throw new IllegalArgumentException("The JWS algorithm \"alg\" cannot be \"none\"");
    }

    /* renamed from: a */
    public g m881a() {
        return new g(this.f230a, this.f231b, this.f232c, this.f233d, this.f234e, this.f235f, this.f236g, this.f237h, this.f238i, this.f239j, this.f240k, this.f241l, this.f242m);
    }

    /* renamed from: b */
    public g$a m880b(List<com.nimbusds.jose.util.a> list) {
        this.f239j = list;
        return this;
    }
}
