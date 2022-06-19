package p193e.p194a.p195a.p200c.p213l8;

import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.a.c.l8.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/h.class */
public final class C5495h implements AbstractC5498i {

    /* renamed from: a */
    public final AbstractC19890w f18650a;

    /* renamed from: e.a.a.c.l8.h$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/h$b.class */
    public static class C5497b extends AbstractC19889v<AbstractC5498i, ArrayList<C5494g>> {

        /* renamed from: b */
        public final int f18651b;

        /* renamed from: c */
        public final boolean f18652c;

        /* renamed from: d */
        public final boolean f18653d;

        public C5497b(C19852e c19852e, int i, boolean z, boolean z2, C5496a c5496a) {
            super(c19852e);
            this.f18651b = i;
            this.f18652c = z;
            this.f18653d = z2;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<ArrayList<C5494g>> mo33009a = ((AbstractC5498i) obj).mo33009a(this.f18651b, this.f18652c, this.f18653d);
            m11836c(mo33009a);
            return mo33009a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".fetchGalleryData(");
            m8728C.append(AbstractC19889v.m11837b(Integer.valueOf(this.f18651b), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f18652c), 2));
            m8728C.append(",");
            return C22128a.m8566u(this.f18653d, 2, m8728C, ")");
        }
    }

    public C5495h(AbstractC19890w abstractC19890w) {
        this.f18650a = abstractC19890w;
    }

    @Override // p193e.p194a.p195a.p200c.p213l8.AbstractC5498i
    /* renamed from: a */
    public AbstractC19891x<ArrayList<C5494g>> mo33009a(int i, boolean z, boolean z2) {
        return new C19895z(this.f18650a, new C5497b(new C19852e(), i, z, z2, null));
    }
}
