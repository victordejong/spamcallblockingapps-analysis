package p081h.p203i.p401g;

import java.io.IOException;
import p081h.p203i.p401g.AbstractC10228b;
import p081h.p203i.p401g.AbstractC10228b.AbstractC10229a;
import p081h.p203i.p401g.AbstractC10253g;
import p081h.p203i.p401g.AbstractC10437l0;
/* renamed from: h.i.g.b */
/* loaded from: classes2-dex2jar.jar:h/i/g/b.class */
public abstract class AbstractC10228b<MessageType extends AbstractC10228b<MessageType, BuilderType>, BuilderType extends AbstractC10229a<MessageType, BuilderType>> implements AbstractC10437l0 {

    /* renamed from: a */
    public int f23058a = 0;

    /* renamed from: h.i.g.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/b$a.class */
    public static abstract class AbstractC10229a<MessageType extends AbstractC10228b<MessageType, BuilderType>, BuilderType extends AbstractC10229a<MessageType, BuilderType>> implements AbstractC10437l0.AbstractC10438a {
        /* renamed from: a */
        public BuilderType mo12764a(AbstractC10253g gVar) throws C10222a0 {
            try {
                AbstractC10267h c = gVar.mo12951c();
                mo13060a(c);
                c.mo12924a(0);
                return this;
            } catch (C10222a0 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(m13059a("ByteString"), e2);
            }
        }

        /* renamed from: a */
        public BuilderType mo12763a(AbstractC10253g gVar, C10459r rVar) throws C10222a0 {
            try {
                AbstractC10267h c = gVar.mo12951c();
                mo11837a(c, rVar);
                c.mo12924a(0);
                return this;
            } catch (C10222a0 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(m13059a("ByteString"), e2);
            }
        }

        /* renamed from: a */
        public abstract BuilderType mo13060a(AbstractC10267h hVar) throws IOException;

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public abstract BuilderType mo11837a(AbstractC10267h hVar, C10459r rVar) throws IOException;

        @Override // p081h.p203i.p401g.AbstractC10437l0.AbstractC10438a
        /* renamed from: a */
        public BuilderType mo11836a(byte[] bArr) throws C10222a0 {
            return mo13058a(bArr, 0, bArr.length);
        }

        /* renamed from: a */
        public BuilderType mo13058a(byte[] bArr, int i, int i2) throws C10222a0 {
            try {
                AbstractC10267h a = AbstractC10267h.m12936a(bArr, i, i2);
                mo13060a(a);
                a.mo12924a(0);
                return this;
            } catch (C10222a0 e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException(m13059a("byte array"), e2);
            }
        }

        /* renamed from: a */
        public final String m13059a(String str) {
            return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
        }
    }

    /* renamed from: a */
    public final String m13062a(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: g */
    public AbstractC10253g mo11839g() {
        try {
            AbstractC10253g.C10261h i = AbstractC10253g.m12966i(mo11678h());
            mo11692a(i.m12959b());
            return i.m12960a();
        } catch (IOException e) {
            throw new RuntimeException(m13062a("ByteString"), e);
        }
    }

    @Override // p081h.p203i.p401g.AbstractC10437l0
    /* renamed from: i */
    public byte[] mo11838i() {
        try {
            byte[] bArr = new byte[mo11678h()];
            AbstractC10274i c = AbstractC10274i.m12855c(bArr);
            mo11692a(c);
            c.m12884a();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(m13062a("byte array"), e);
        }
    }

    /* renamed from: k */
    public C10241d1 mo13061k() {
        return new C10241d1(this);
    }
}
