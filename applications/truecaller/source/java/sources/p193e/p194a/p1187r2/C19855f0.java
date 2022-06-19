package p193e.p194a.p1187r2;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.r2.f0 */
/* loaded from: classes5-dex2jar.jar:e/a/r2/f0.class */
public class C19855f0 implements AbstractC19851d0 {

    /* renamed from: a */
    public final AbstractC19890w f56249a;

    /* renamed from: e.a.r2.f0$a */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/f0$a.class */
    public static class C19856a extends AbstractC19889v<AbstractC19851d0, Void> {

        /* renamed from: b */
        public final Object f56250b;

        public C19856a(C19852e c19852e, Object obj) {
            super(c19852e);
            this.f56250b = obj;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19851d0 abstractC19851d0 = (AbstractC19851d0) obj;
            if (abstractC19851d0 instanceof AbstractC19879p) {
                this.f56318a = ((AbstractC19879p) abstractC19851d0).mo11833a();
            }
            abstractC19851d0.onResult(this.f56250b);
            return null;
        }

        public String toString() {
            Object obj = this.f56250b;
            return obj instanceof AbstractC19888u ? obj.toString() : C22128a.m8634d(C22128a.m8728C(".onResult("), this.f56250b, ")");
        }
    }

    public C19855f0(AbstractC19890w abstractC19890w) {
        this.f56249a = abstractC19890w;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(Object obj) {
        this.f56249a.mo11835a(new C19856a(new C19852e(), obj));
    }
}
