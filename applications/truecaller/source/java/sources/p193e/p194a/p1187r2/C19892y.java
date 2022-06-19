package p193e.p194a.p1187r2;
/* renamed from: e.a.r2.y */
/* loaded from: classes5-dex2jar.jar:e/a/r2/y.class */
public class C19892y<R> extends AbstractC19891x<R> implements AbstractC19844a {

    /* renamed from: a */
    public final C19846b f56319a = new C19846b();

    /* renamed from: b */
    public volatile R f56320b;

    /* renamed from: c */
    public AbstractC19849c0<R> f56321c;

    /* renamed from: e.a.r2.y$b */
    /* loaded from: classes5-dex2jar.jar:e/a/r2/y$b.class */
    public static class C19894b<R> implements AbstractC19851d0<R>, AbstractC19844a, AbstractC19879p {

        /* renamed from: a */
        public final C19846b f56322a;

        /* renamed from: b */
        public AbstractC19851d0<R> f56323b;

        /* renamed from: c */
        public AbstractC19849c0<R> f56324c;

        public C19894b(C19846b c19846b, AbstractC19849c0 abstractC19849c0, AbstractC19851d0 abstractC19851d0, C19893a c19893a) {
            this.f56322a = c19846b;
            this.f56324c = abstractC19849c0;
            this.f56323b = abstractC19851d0;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19879p
        /* renamed from: a */
        public C19850d mo11833a() {
            return this.f56322a;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19844a
        /* renamed from: b */
        public void mo11832b() {
            this.f56323b = null;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19851d0
        public void onResult(R r) {
            AbstractC19851d0<R> abstractC19851d0 = this.f56323b;
            if (abstractC19851d0 != null) {
                try {
                    abstractC19851d0.onResult(r);
                } catch (C19853e0 e) {
                    AbstractC19849c0<R> abstractC19849c0 = this.f56324c;
                    if (abstractC19849c0 != null && r != null) {
                        abstractC19849c0.mo11855a(r);
                    }
                }
            } else {
                AbstractC19849c0<R> abstractC19849c02 = this.f56324c;
                if (abstractC19849c02 != null && r != null) {
                    abstractC19849c02.mo11855a(r);
                }
            }
            this.f56324c = null;
            this.f56323b = null;
        }
    }

    public C19892y(R r, AbstractC19849c0<R> abstractC19849c0) {
        this.f56321c = abstractC19849c0;
        this.f56320b = r;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19844a
    /* renamed from: b */
    public void mo11832b() {
        AbstractC19849c0<R> abstractC19849c0 = this.f56321c;
        R r = this.f56320b;
        this.f56320b = null;
        this.f56321c = null;
        if (r == null || abstractC19849c0 == null) {
            return;
        }
        abstractC19849c0.mo11855a(r);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: c */
    public R mo11831c() throws InterruptedException {
        R r = this.f56320b;
        this.f56320b = null;
        return r;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: e */
    public AbstractC19844a mo11830e(AbstractC19868j abstractC19868j, AbstractC19851d0<R> abstractC19851d0) {
        AbstractC19844a abstractC19844a;
        AbstractC19849c0<R> abstractC19849c0 = this.f56321c;
        R r = this.f56320b;
        this.f56320b = null;
        this.f56321c = null;
        if (abstractC19851d0 != null) {
            AbstractC19844a c19894b = new C19894b(this.f56319a, abstractC19849c0, abstractC19851d0, null);
            ((AbstractC19851d0) abstractC19868j.mo11838a(AbstractC19851d0.class, c19894b).mo11854a()).onResult(r);
            abstractC19844a = c19894b;
        } else {
            if (abstractC19849c0 != null && r != null) {
                abstractC19849c0.mo11855a(r);
            }
            abstractC19844a = this;
        }
        return abstractC19844a;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: f */
    public AbstractC19844a mo11829f(AbstractC19851d0<R> abstractC19851d0) {
        R r = this.f56320b;
        AbstractC19849c0<R> abstractC19849c0 = this.f56321c;
        this.f56320b = null;
        if (abstractC19851d0 != null) {
            abstractC19851d0.onResult(r);
        } else if (abstractC19849c0 != null && r != null) {
            abstractC19849c0.mo11855a(r);
        }
        this.f56320b = null;
        this.f56321c = null;
        return this;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19891x
    /* renamed from: g */
    public void mo11828g() {
        this.f56321c = null;
        this.f56320b = null;
    }
}
