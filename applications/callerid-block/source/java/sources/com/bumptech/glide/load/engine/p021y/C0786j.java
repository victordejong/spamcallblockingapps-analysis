package com.bumptech.glide.load.engine.p021y;

import com.bumptech.glide.load.AbstractC0732c;
import com.bumptech.glide.p029o.C0852g;
import com.bumptech.glide.p029o.C0856j;
import com.bumptech.glide.p029o.C0857k;
import com.bumptech.glide.p029o.p030l.C0859a;
import d.h.l.e;
/* renamed from: com.bumptech.glide.load.engine.y.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/j.class */
public class C0786j {

    /* renamed from: a */
    private final C0852g<AbstractC0732c, String> f3643a = new C0852g<>(1000);

    /* renamed from: b */
    private final e<b> f3644b = C0859a.m10732d(10, new a(this));

    /* renamed from: a */
    private String m11018a(AbstractC0732c abstractC0732c) {
        Object b = this.f3644b.b();
        C0856j.m10759d(b);
        b bVar = (b) b;
        try {
            abstractC0732c.m11201b(bVar.b);
            return C0857k.m10736v(bVar.b.digest());
        } finally {
            this.f3644b.a(bVar);
        }
    }

    /* renamed from: b */
    public String m11017b(AbstractC0732c abstractC0732c) {
        String m10772g;
        synchronized (this.f3643a) {
            m10772g = this.f3643a.m10772g(abstractC0732c);
        }
        String str = m10772g;
        if (m10772g == null) {
            str = m11018a(abstractC0732c);
        }
        synchronized (this.f3643a) {
            this.f3643a.m10768k(abstractC0732c, str);
        }
        return str;
    }
}
