package p193e.p1545k.p1546a.p1556c.p1559d0.p1560y;

import java.io.IOException;
import java.util.Map;
import p193e.p1545k.p1546a.p1548b.C23379k;
import p193e.p1545k.p1546a.p1556c.p1559d0.AbstractC23488u;
import p193e.p1545k.p1546a.p1556c.p1559d0.C23486t;
/* renamed from: e.k.a.c.d0.y.a0 */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/a0.class */
public abstract class AbstractC23495a0 {

    /* renamed from: a */
    public final AbstractC23495a0 f65189a;

    /* renamed from: b */
    public final Object f65190b;

    /* renamed from: e.k.a.c.d0.y.a0$a */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/a0$a.class */
    public static final class C23496a extends AbstractC23495a0 {

        /* renamed from: c */
        public final C23486t f65191c;

        /* renamed from: d */
        public final String f65192d;

        public C23496a(AbstractC23495a0 abstractC23495a0, Object obj, C23486t c23486t, String str) {
            super(abstractC23495a0, obj);
            this.f65191c = c23486t;
            this.f65192d = str;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0
        /* renamed from: a */
        public void mo6742a(Object obj) throws IOException, C23379k {
            this.f65191c.m6766c(obj, this.f65192d, this.f65190b);
        }
    }

    /* renamed from: e.k.a.c.d0.y.a0$b */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/a0$b.class */
    public static final class C23497b extends AbstractC23495a0 {

        /* renamed from: c */
        public final Object f65193c;

        public C23497b(AbstractC23495a0 abstractC23495a0, Object obj, Object obj2) {
            super(abstractC23495a0, obj);
            this.f65193c = obj2;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0
        /* renamed from: a */
        public void mo6742a(Object obj) throws IOException, C23379k {
            ((Map) obj).put(this.f65193c, this.f65190b);
        }
    }

    /* renamed from: e.k.a.c.d0.y.a0$c */
    /* loaded from: classes2-dex2jar.jar:e/k/a/c/d0/y/a0$c.class */
    public static final class C23498c extends AbstractC23495a0 {

        /* renamed from: c */
        public final AbstractC23488u f65194c;

        public C23498c(AbstractC23495a0 abstractC23495a0, Object obj, AbstractC23488u abstractC23488u) {
            super(abstractC23495a0, obj);
            this.f65194c = abstractC23488u;
        }

        @Override // p193e.p1545k.p1546a.p1556c.p1559d0.p1560y.AbstractC23495a0
        /* renamed from: a */
        public void mo6742a(Object obj) throws IOException, C23379k {
            this.f65194c.mo6680z(obj, this.f65190b);
        }
    }

    public AbstractC23495a0(AbstractC23495a0 abstractC23495a0, Object obj) {
        this.f65189a = abstractC23495a0;
        this.f65190b = obj;
    }

    /* renamed from: a */
    public abstract void mo6742a(Object obj) throws IOException, C23379k;
}
