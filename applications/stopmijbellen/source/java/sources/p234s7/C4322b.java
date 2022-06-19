package p234s7;

import p148k7.AbstractC3360m;
import p148k7.C3358l;
import p159l7.AbstractC3510a;
import p159l7.AbstractC3513c;
import p170m7.AbstractFutureC3655c;
import p170m7.C3661g;
/* renamed from: s7.b */
/* loaded from: classes2-dex2jar.jar:s7/b.class */
public class C4322b implements AbstractC4321a<C3358l> {

    /* renamed from: s7.b$a */
    /* loaded from: classes2-dex2jar.jar:s7/b$a.class */
    public class C4323a extends C3661g<C3358l> {

        /* renamed from: j */
        public final /* synthetic */ AbstractC3360m f13474j;

        public C4323a(C4322b c4322b, AbstractC3360m abstractC3360m) {
            this.f13474j = abstractC3360m;
        }

        @Override // p170m7.C3658f
        /* renamed from: b */
        public void mo488b() {
            this.f13474j.close();
        }
    }

    /* renamed from: s7.b$b */
    /* loaded from: classes2-dex2jar.jar:s7/b$b.class */
    public class C4324b implements AbstractC3513c {

        /* renamed from: a */
        public final /* synthetic */ C3358l f13475a;

        public C4324b(C4322b c4322b, C3358l c3358l) {
            this.f13475a = c3358l;
        }

        @Override // p159l7.AbstractC3513c
        /* renamed from: c */
        public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
            c3358l.m2349d(this.f13475a, c3358l.f11382c);
        }
    }

    /* renamed from: s7.b$c */
    /* loaded from: classes2-dex2jar.jar:s7/b$c.class */
    public class C4325c implements AbstractC3510a {

        /* renamed from: a */
        public final /* synthetic */ C3661g f13476a;

        /* renamed from: b */
        public final /* synthetic */ C3358l f13477b;

        public C4325c(C4322b c4322b, C3661g c3661g, C3358l c3358l) {
            this.f13476a = c3661g;
            this.f13477b = c3358l;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            if (exc != null) {
                this.f13476a.m1914p(exc, null, null);
                return;
            }
            try {
                this.f13476a.m1913q(this.f13477b);
            } catch (Exception e) {
                this.f13476a.m1914p(e, null, null);
            }
        }
    }

    @Override // p234s7.AbstractC4321a
    /* renamed from: a */
    public AbstractFutureC3655c<C3358l> mo1100a(AbstractC3360m abstractC3360m) {
        C3358l c3358l = new C3358l();
        C4323a c4323a = new C4323a(this, abstractC3360m);
        abstractC3360m.mo939b(new C4324b(this, c3358l));
        abstractC3360m.mo936h(new C4325c(this, c4323a, c3358l));
        return c4323a;
    }
}
