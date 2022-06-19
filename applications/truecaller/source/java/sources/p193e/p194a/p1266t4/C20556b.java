package p193e.p194a.p1266t4;

import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.t4.b */
/* loaded from: classes12-dex2jar.jar:e/a/t4/b.class */
public final class C20556b implements AbstractC20560c {

    /* renamed from: a */
    public final AbstractC19890w f57644a;

    /* renamed from: e.a.t4.b$b */
    /* loaded from: classes12-dex2jar.jar:e/a/t4/b$b.class */
    public static class C20558b extends AbstractC19889v<AbstractC20560c, Boolean> {
        public C20558b(C19852e c19852e, C20557a c20557a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo11034d = ((AbstractC20560c) obj).mo11034d();
            m11836c(mo11034d);
            return mo11034d;
        }

        public String toString() {
            return ".mute()";
        }
    }

    /* renamed from: e.a.t4.b$c */
    /* loaded from: classes12-dex2jar.jar:e/a/t4/b$c.class */
    public static class C20559c extends AbstractC19889v<AbstractC20560c, Boolean> {
        public C20559c(C19852e c19852e, C20557a c20557a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo11036a = ((AbstractC20560c) obj).mo11036a();
            m11836c(mo11036a);
            return mo11036a;
        }

        public String toString() {
            return ".unmute()";
        }
    }

    public C20556b(AbstractC19890w abstractC19890w) {
        this.f57644a = abstractC19890w;
    }

    @Override // p193e.p194a.p1266t4.AbstractC20560c
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo11036a() {
        return new C19895z(this.f57644a, new C20559c(new C19852e(), null));
    }

    @Override // p193e.p194a.p1266t4.AbstractC20560c
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo11034d() {
        return new C19895z(this.f57644a, new C20558b(new C19852e(), null));
    }
}
