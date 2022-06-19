package com.bumptech.glide.load.engine.p210y;

import com.bumptech.glide.load.AbstractC3999c;
import com.bumptech.glide.p223p.C4378g;
import com.bumptech.glide.p223p.C4382j;
import com.bumptech.glide.p223p.C4383k;
import com.bumptech.glide.p223p.p224l.AbstractC4394c;
import com.bumptech.glide.p223p.p224l.C4385a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import p020b.p041h.p049k.AbstractC1594e;
/* renamed from: com.bumptech.glide.load.engine.y.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/j.class */
public class C4133j {

    /* renamed from: a */
    private final C4378g<AbstractC3999c, String> f12985a = new C4378g<>(1000);

    /* renamed from: b */
    private final AbstractC1594e<C4135b> f12986b = C4385a.m22692d(10, new C4134a());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.y.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/j$a.class */
    public class C4134a implements C4385a.AbstractC4389d<C4135b> {
        C4134a() {
            C4133j.this = r4;
        }

        /* renamed from: b */
        public C4135b mo22687a() {
            try {
                return new C4135b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.y.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/y/j$b.class */
    public static final class C4135b implements C4385a.AbstractC4391f {

        /* renamed from: d */
        final MessageDigest f12988d;

        /* renamed from: e */
        private final AbstractC4394c f12989e = AbstractC4394c.m22678a();

        C4135b(MessageDigest messageDigest) {
            this.f12988d = messageDigest;
        }

        @Override // com.bumptech.glide.p223p.p224l.C4385a.AbstractC4391f
        /* renamed from: f */
        public AbstractC4394c mo22684f() {
            return this.f12989e;
        }
    }

    /* renamed from: a */
    private String m23198a(AbstractC3999c abstractC3999c) {
        C4135b c4135b = (C4135b) C4382j.m22719d(this.f12986b.mo22686a());
        try {
            abstractC3999c.mo22754a(c4135b.f12988d);
            return C4383k.m22696v(c4135b.f12988d.digest());
        } finally {
            this.f12986b.mo22685b(c4135b);
        }
    }

    /* renamed from: b */
    public String m23197b(AbstractC3999c abstractC3999c) {
        String m22732g;
        synchronized (this.f12985a) {
            m22732g = this.f12985a.m22732g(abstractC3999c);
        }
        String str = m22732g;
        if (m22732g == null) {
            str = m23198a(abstractC3999c);
        }
        synchronized (this.f12985a) {
            this.f12985a.m22728k(abstractC3999c, str);
        }
        return str;
    }
}
