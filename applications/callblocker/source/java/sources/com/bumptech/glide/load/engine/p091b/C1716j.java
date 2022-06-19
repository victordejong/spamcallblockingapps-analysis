package com.bumptech.glide.load.engine.p091b;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.p077h.C1453f;
import com.bumptech.glide.p077h.C1456i;
import com.bumptech.glide.p077h.C1457j;
import com.bumptech.glide.p077h.p078a.AbstractC1446c;
import com.bumptech.glide.p077h.p078a.C1437a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.bumptech.glide.load.engine.b.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j.class */
public class C1716j {

    /* renamed from: a */
    private final C1453f<AbstractC1777f, String> f5198a = new C1453f<>(1000);

    /* renamed from: b */
    private final C0523e.AbstractC0524a<C1718a> f5199b = C1437a.m17024b(10, new C1437a.AbstractC1441a<C1718a>() { // from class: com.bumptech.glide.load.engine.b.j.1
        /* renamed from: a */
        public C1718a mo16349b() {
            try {
                return new C1718a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    });

    /* renamed from: com.bumptech.glide.load.engine.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/j$a.class */
    public static final class C1718a implements C1437a.AbstractC1443c {

        /* renamed from: a */
        final MessageDigest f5201a;

        /* renamed from: b */
        private final AbstractC1446c f5202b = AbstractC1446c.m17014a();

        C1718a(MessageDigest messageDigest) {
            this.f5201a = messageDigest;
        }

        @Override // com.bumptech.glide.p077h.p078a.C1437a.AbstractC1443c
        /* renamed from: c_ */
        public AbstractC1446c mo16351c_() {
            return this.f5202b;
        }
    }

    /* renamed from: b */
    private String m16480b(AbstractC1777f abstractC1777f) {
        C1718a c1718a = (C1718a) C1456i.m16989a(this.f5199b.mo17021a());
        try {
            abstractC1777f.mo16320a(c1718a.f5201a);
            return C1457j.m16972a(c1718a.f5201a.digest());
        } finally {
            this.f5199b.mo17020a(c1718a);
        }
    }

    /* renamed from: a */
    public String m16481a(AbstractC1777f abstractC1777f) {
        String m16997b;
        synchronized (this.f5198a) {
            m16997b = this.f5198a.m16997b(abstractC1777f);
        }
        String str = m16997b;
        if (m16997b == null) {
            str = m16480b(abstractC1777f);
        }
        synchronized (this.f5198a) {
            this.f5198a.m16996b(abstractC1777f, str);
        }
        return str;
    }
}
