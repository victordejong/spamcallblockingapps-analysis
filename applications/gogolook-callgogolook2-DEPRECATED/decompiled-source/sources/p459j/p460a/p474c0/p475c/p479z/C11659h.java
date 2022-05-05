package p459j.p460a.p474c0.p475c.p479z;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import p459j.p460a.p474c0.p491g.C12098n;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12242z;
/* renamed from: j.a.c0.c.z.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/h.class */
public class C11659h extends AbstractC11669o {

    /* renamed from: f */
    public Bitmap f26169f;

    /* renamed from: g */
    public final int f26170g;

    /* renamed from: h */
    public boolean f26171h = true;

    /* renamed from: j.a.c0.c.z.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/h$a.class */
    public class C11660a implements AbstractC11672r<AbstractC11669o> {

        /* renamed from: a */
        public final AbstractC11672r<AbstractC11669o> f26172a;

        public C11660a(AbstractC11672r<AbstractC11669o> rVar) {
            this.f26172a = rVar;
            C11659h.this.m8617b();
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: a */
        public int mo8662a() {
            return 1;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Type inference failed for: r0v76, types: [j.a.c0.c.z.n] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public p459j.p460a.p474c0.p475c.p479z.AbstractC11669o mo8661a(java.util.List<p459j.p460a.p474c0.p475c.p479z.AbstractC11672r<p459j.p460a.p474c0.p475c.p479z.AbstractC11669o>> r7) throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 481
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p479z.C11659h.C11660a.mo8661a(java.util.List):j.a.c0.c.z.o");
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: b */
        public C11670p<AbstractC11669o> mo8660b() {
            return this.f26172a.mo8660b();
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        /* renamed from: c */
        public AbstractC11673s<AbstractC11669o> mo8659c() {
            return this.f26172a.mo8659c();
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
        public String getKey() {
            return C11659h.this.m8612f();
        }
    }

    public C11659h(String str, Bitmap bitmap, int i) {
        super(str, i);
        this.f26169f = bitmap;
        this.f26170g = i;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: a */
    public Drawable mo8677a(Resources resources) {
        m8619a();
        try {
            C12151d.m7000b(this.f26169f);
            return C12098n.m7172a(mo8674p(), resources, this.f26169f);
        } finally {
            m8605m();
        }
    }

    /* renamed from: a */
    public void m8692a(boolean z) {
        this.f26171h = z;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: b */
    public AbstractC11672r<? extends AbstractC11685y> mo8616b(AbstractC11672r<? extends AbstractC11685y> rVar) {
        C12151d.m7003a(mo8607k());
        if (mo8676n().hasAlpha()) {
            return null;
        }
        return new C11660a(rVar);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: e */
    public void mo8613e() {
        m8619a();
        try {
            if (this.f26169f != null) {
                this.f26169f.recycle();
                this.f26169f = null;
            }
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: h */
    public int mo8610h() {
        m8619a();
        try {
            C12151d.m7000b(this.f26169f);
            return this.f26169f.getAllocationByteCount();
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11685y
    /* renamed from: j */
    public boolean mo8608j() {
        return this.f26171h;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: n */
    public Bitmap mo8676n() {
        m8619a();
        try {
            return this.f26169f;
        } finally {
            m8605m();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: o */
    public byte[] mo8675o() {
        m8619a();
        try {
            try {
                byte[] a = C12242z.m6560a(this.f26169f, 100);
                m8605m();
                return a;
            } catch (Exception e) {
                C12153d0.m6987b("MessagingApp", "Error trying to get the bitmap bytes " + e);
                m8605m();
                return null;
            }
        } catch (Throwable th) {
            m8605m();
            throw th;
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: p */
    public int mo8674p() {
        return this.f26170g;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: q */
    public Bitmap mo8673q() {
        m8619a();
        try {
            m8614d();
            Bitmap bitmap = this.f26169f;
            this.f26169f = null;
            return bitmap;
        } finally {
            m8605m();
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11669o
    /* renamed from: r */
    public boolean mo8672r() {
        return true;
    }
}
