package com.bytedance.sdk.openadsdk.p167g.p168a;

import com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4899s;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4902u;
import com.bytedance.sdk.openadsdk.p167g.p168a.C4907v;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.g.a.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/g.class */
public class C4879g implements C4907v.AbstractC4908a {

    /* renamed from: a */
    private final C4883h f17829a;

    /* renamed from: b */
    private final C4901t f17830b;

    /* renamed from: c */
    private final Map<String, AbstractC4872b> f17831c = new HashMap();

    /* renamed from: d */
    private final Map<String, AbstractC4874d.AbstractC4876b> f17832d = new HashMap();

    /* renamed from: e */
    private final List<C4894p> f17833e = new ArrayList();

    /* renamed from: f */
    private final Set<AbstractC4874d> f17834f = new HashSet();

    /* renamed from: g */
    private final AbstractC4891m f17835g;

    /* renamed from: h */
    private final boolean f17836h;

    /* renamed from: i */
    private final boolean f17837i;

    /* renamed from: j */
    private final AbstractC4870a f17838j;

    /* renamed from: com.bytedance.sdk.openadsdk.g.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/g$a.class */
    public static final class C4882a {

        /* renamed from: a */
        boolean f17844a;

        /* renamed from: b */
        String f17845b;

        private C4882a(boolean z, String str) {
            this.f17844a = z;
            this.f17845b = str;
        }
    }

    public C4879g(C4885j c4885j, AbstractC4870a abstractC4870a, C4902u c4902u) {
        this.f17838j = abstractC4870a;
        this.f17829a = c4885j.f17851d;
        C4901t c4901t = new C4901t(c4902u, c4885j.f17859l, c4885j.f17860m);
        this.f17830b = c4901t;
        c4901t.m33608a(this);
        c4901t.m33609a(c4885j.f17863p);
        this.f17835g = c4885j.f17856i;
        this.f17836h = c4885j.f17855h;
        this.f17837i = c4885j.f17862o;
    }

    /* renamed from: a */
    private C4882a m33675a(final C4894p c4894p, AbstractC4873c abstractC4873c, EnumC4909w enumC4909w) throws Exception {
        abstractC4873c.m33684a(c4894p, new C4899s(c4894p.f17867d, enumC4909w, new C4899s.AbstractC4900a() { // from class: com.bytedance.sdk.openadsdk.g.a.g.2
        }));
        return new C4882a(false, C4910x.m33591a());
    }

    /* renamed from: a */
    private C4882a m33674a(final C4894p c4894p, final AbstractC4874d abstractC4874d, C4878f c4878f) throws Exception {
        this.f17834f.add(abstractC4874d);
        abstractC4874d.m33682a(m33670a(c4894p.f17868e, abstractC4874d), c4878f, new AbstractC4874d.AbstractC4875a() { // from class: com.bytedance.sdk.openadsdk.g.a.g.1
            @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d.AbstractC4875a
            /* renamed from: a */
            public void mo33664a(Object obj) {
                if (C4879g.this.f17838j == null) {
                    return;
                }
                C4879g.this.f17838j.m33687b(C4910x.m33590a(C4879g.this.f17829a.m33661a((C4883h) obj)), c4894p);
                C4879g.this.f17834f.remove(abstractC4874d);
            }

            @Override // com.bytedance.sdk.openadsdk.p167g.p168a.AbstractC4874d.AbstractC4875a
            /* renamed from: a */
            public void mo33663a(Throwable th) {
                if (C4879g.this.f17838j == null) {
                    return;
                }
                C4879g.this.f17838j.m33687b(C4910x.m33589a(th), c4894p);
                C4879g.this.f17834f.remove(abstractC4874d);
            }
        });
        return new C4882a(false, C4910x.m33591a());
    }

    /* renamed from: a */
    private C4882a m33673a(C4894p c4894p, AbstractC4877e abstractC4877e, C4878f c4878f) throws Exception {
        return new C4882a(true, C4910x.m33590a(this.f17829a.m33661a((C4883h) abstractC4877e.mo33573a(m33670a(c4894p.f17868e, (AbstractC4872b) abstractC4877e), c4878f))));
    }

    /* renamed from: a */
    private Object m33670a(String str, AbstractC4872b abstractC4872b) throws JSONException {
        return this.f17829a.m33659a(str, m33671a(abstractC4872b)[0]);
    }

    /* renamed from: a */
    private static Type[] m33671a(Object obj) {
        Type genericSuperclass = obj.getClass().getGenericSuperclass();
        if (genericSuperclass != null) {
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments();
        }
        throw new IllegalStateException("Method is not parameterized?!");
    }

    /* renamed from: b */
    private EnumC4909w m33666b(String str, AbstractC4872b abstractC4872b) {
        return this.f17837i ? EnumC4909w.PRIVATE : this.f17830b.m33605a(this.f17836h, str, abstractC4872b);
    }

    /* renamed from: a */
    public C4882a m33672a(C4894p c4894p, C4878f c4878f) throws Exception {
        AbstractC4872b abstractC4872b = this.f17831c.get(c4894p.f17867d);
        if (abstractC4872b != null) {
            try {
                EnumC4909w m33666b = m33666b(c4878f.f17826b, abstractC4872b);
                c4878f.f17828d = m33666b;
                if (m33666b == null) {
                    AbstractC4891m abstractC4891m = this.f17835g;
                    if (abstractC4891m != null) {
                        abstractC4891m.m33635a(c4878f.f17826b, c4894p.f17867d, 1);
                    }
                    C4884i.m33657a("Permission denied, call: ".concat(String.valueOf(c4894p)));
                    throw new C4898r(-1);
                } else if (abstractC4872b instanceof AbstractC4877e) {
                    C4884i.m33657a("Processing stateless call: ".concat(String.valueOf(c4894p)));
                    return m33673a(c4894p, (AbstractC4877e) abstractC4872b, c4878f);
                } else if (abstractC4872b instanceof AbstractC4873c) {
                    C4884i.m33657a("Processing raw call: ".concat(String.valueOf(c4894p)));
                    return m33675a(c4894p, (AbstractC4873c) abstractC4872b, m33666b);
                }
            } catch (C4902u.C4904a e) {
                C4884i.m33656a("No remote permission config fetched, call pending: ".concat(String.valueOf(c4894p)), e);
                this.f17833e.add(c4894p);
                return new C4882a(false, C4910x.m33591a());
            }
        }
        AbstractC4874d.AbstractC4876b abstractC4876b = this.f17832d.get(c4894p.f17867d);
        if (abstractC4876b == null) {
            AbstractC4891m abstractC4891m2 = this.f17835g;
            if (abstractC4891m2 != null) {
                abstractC4891m2.m33635a(c4878f.f17826b, c4894p.f17867d, 2);
            }
            C4884i.m33654b("Received call: " + c4894p + ", but not registered.");
            return null;
        }
        AbstractC4874d mo33575a = abstractC4876b.mo33575a();
        mo33575a.m33686a(c4894p.f17867d);
        EnumC4909w m33666b2 = m33666b(c4878f.f17826b, mo33575a);
        c4878f.f17828d = m33666b2;
        if (m33666b2 != null) {
            C4884i.m33657a("Processing stateful call: ".concat(String.valueOf(c4894p)));
            return m33674a(c4894p, mo33575a, c4878f);
        }
        C4884i.m33657a("Permission denied, call: ".concat(String.valueOf(c4894p)));
        mo33575a.m33679d();
        throw new C4898r(-1);
    }

    /* renamed from: a */
    public void m33669a(String str, AbstractC4874d.AbstractC4876b abstractC4876b) {
        this.f17832d.put(str, abstractC4876b);
        C4884i.m33657a("JsBridge stateful method registered: ".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public void m33668a(String str, AbstractC4877e<?, ?> abstractC4877e) {
        abstractC4877e.m33686a(str);
        this.f17831c.put(str, abstractC4877e);
        C4884i.m33657a("JsBridge stateless method registered: ".concat(String.valueOf(str)));
    }
}
