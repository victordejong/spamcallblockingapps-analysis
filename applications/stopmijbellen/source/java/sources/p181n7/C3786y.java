package p181n7;

import java.util.Objects;
import p148k7.AbstractC3362o;
import p148k7.C3357k;
import p148k7.C3369s;
import p159l7.AbstractC3510a;
import p181n7.AbstractC3749g;
import p223r7.C4228b;
/* renamed from: n7.y */
/* loaded from: classes2-dex2jar.jar:n7/y.class */
public class C3786y extends C3746d0 {

    /* renamed from: n7.y$a */
    /* loaded from: classes2-dex2jar.jar:n7/y$a.class */
    public class C3787a implements AbstractC3510a {

        /* renamed from: a */
        public final /* synthetic */ AbstractC3510a f12260a;

        /* renamed from: b */
        public final /* synthetic */ C3357k f12261b;

        public C3787a(C3786y c3786y, AbstractC3510a abstractC3510a, C3357k c3357k) {
            this.f12260a = abstractC3510a;
            this.f12261b = c3357k;
        }

        @Override // p159l7.AbstractC3510a
        /* renamed from: a */
        public void mo1098a(Exception exc) {
            AbstractC3510a abstractC3510a = this.f12260a;
            if (abstractC3510a != null) {
                abstractC3510a.mo1098a(exc);
            }
            C3357k c3357k = this.f12261b;
            if (c3357k != null) {
                c3357k.f11368b = false;
                c3357k.m2353c();
                this.f12261b.f11371e = 0;
            }
        }
    }

    /* renamed from: n7.y$b */
    /* loaded from: classes2-dex2jar.jar:n7/y$b.class */
    public class C3788b implements C3369s.AbstractC3370a {

        /* renamed from: a */
        public C3782w f12262a = new C3782w();

        /* renamed from: b */
        public String f12263b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC3749g.C3752c f12264c;

        public C3788b(C3786y c3786y, AbstractC3749g.C3752c c3752c) {
            this.f12264c = c3752c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:26:0x00d7, code lost:
            if (r0 > 199) goto L27;
         */
        @Override // p148k7.C3369s.AbstractC3370a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1795a(java.lang.String r5) {
            /*
                Method dump skipped, instructions count: 335
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p181n7.C3786y.C3788b.mo1795a(java.lang.String):void");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0107, code lost:
        if (r0.length() == 0) goto L25;
     */
    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo1797b(p181n7.AbstractC3749g.C3752c r9) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p181n7.C3786y.mo1797b(n7.g$c):boolean");
    }

    @Override // p181n7.C3746d0, p181n7.AbstractC3749g
    /* renamed from: e */
    public void mo1796e(AbstractC3749g.C3755f c3755f) {
        Objects.requireNonNull(c3755f);
        EnumC3739b0 m1828a = EnumC3739b0.m1828a(null);
        if (m1828a == null || m1828a == EnumC3739b0.f12151b || m1828a == EnumC3739b0.f12152c) {
            AbstractC3362o abstractC3362o = ((AbstractC3761j) c3755f.f12178f).f12205p;
            if (!(abstractC3362o instanceof C4228b)) {
                return;
            }
            abstractC3362o.mo1267j();
        }
    }
}
