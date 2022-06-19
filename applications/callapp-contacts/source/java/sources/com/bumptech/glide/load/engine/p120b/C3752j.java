package com.bumptech.glide.load.engine.p120b;

import androidx.core.p036e.C0829c;
import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.p116g.C3639g;
import com.bumptech.glide.p116g.C3643j;
import com.bumptech.glide.p116g.C3644k;
import com.bumptech.glide.p116g.p117a.AbstractC3629b;
import com.bumptech.glide.p116g.p117a.C3621a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.bumptech.glide.load.engine.b.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j.class */
public final class C3752j {

    /* renamed from: a */
    private final C3639g<AbstractC3818f, String> f13951a = new C3639g<>(1000);

    /* renamed from: b */
    private final C0829c.AbstractC0830a<C3754a> f13952b = C3621a.m37609a(10, new C3621a.AbstractC3625a<C3754a>() { // from class: com.bumptech.glide.load.engine.b.j.1
        /* renamed from: b */
        private static C3754a m37419b() {
            try {
                return new C3754a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3625a
        /* renamed from: a */
        public final /* synthetic */ C3754a mo37334a() {
            return m37419b();
        }
    });

    /* renamed from: com.bumptech.glide.load.engine.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j$a.class */
    public static final class C3754a implements C3621a.AbstractC3627c {

        /* renamed from: a */
        final MessageDigest f13954a;

        /* renamed from: b */
        private final AbstractC3629b f13955b = new AbstractC3629b.C3631a();

        C3754a(MessageDigest messageDigest) {
            this.f13954a = messageDigest;
        }

        @Override // com.bumptech.glide.p116g.p117a.C3621a.AbstractC3627c
        /* renamed from: m_ */
        public final AbstractC3629b mo37335m_() {
            return this.f13955b;
        }
    }

    /* renamed from: b */
    private String m37420b(AbstractC3818f abstractC3818f) {
        C3754a c3754a = (C3754a) C3643j.m37588a(this.f13952b.mo37607a(), "Argument must not be null");
        try {
            abstractC3818f.updateDiskCacheKey(c3754a.f13954a);
            return C3644k.m37573a(c3754a.f13954a.digest());
        } finally {
            this.f13952b.mo37606a(c3754a);
        }
    }

    /* renamed from: a */
    public final String m37421a(AbstractC3818f abstractC3818f) {
        String str;
        synchronized (this.f13951a) {
            str = this.f13951a.get(abstractC3818f);
        }
        String str2 = str;
        if (str == null) {
            str2 = m37420b(abstractC3818f);
        }
        synchronized (this.f13951a) {
            this.f13951a.put(abstractC3818f, str2);
        }
        return str2;
    }
}
