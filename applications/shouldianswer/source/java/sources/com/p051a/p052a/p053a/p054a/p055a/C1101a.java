package com.p051a.p052a.p053a.p054a.p055a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.a.a.a.a.a.a */
/* loaded from: classes-dex2jar.jar:com/a/a/a/a/a/a.class */
public class C1101a {

    /* renamed from: a */
    private List<C1102b> f3489a = new ArrayList();

    /* renamed from: a */
    public C1101a m4266a() {
        this.f3489a.clear();
        return this;
    }

    /* renamed from: a */
    public C1101a m4265a(RecyclerView.AbstractC0945a abstractC0945a, Object obj) {
        return m4264a(new C1102b(abstractC0945a, obj));
    }

    /* renamed from: a */
    public C1101a m4264a(C1102b c1102b) {
        this.f3489a.add(c1102b);
        return this;
    }

    /* renamed from: a */
    public C1101a m4263a(C1107f c1107f) {
        return m4265a(c1107f.f3498a, c1107f.f3499b);
    }

    /* renamed from: b */
    public List<C1102b> m4262b() {
        return this.f3489a;
    }

    /* renamed from: c */
    public C1102b m4261c() {
        C1102b c1102b;
        if (!this.f3489a.isEmpty()) {
            List<C1102b> list = this.f3489a;
            c1102b = list.get(list.size() - 1);
        } else {
            c1102b = null;
        }
        return c1102b;
    }
}
