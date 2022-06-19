package p287x6;

import android.support.p012v4.media.C0082b;
import com.google.protobuf.C1895k;
import java.nio.charset.Charset;
/* renamed from: x6.l */
/* loaded from: classes-dex2jar.jar:x6/l.class */
public final class C4912l implements AbstractC4926x {

    /* renamed from: b */
    public static final AbstractC4917o f15025b = new C4913a();

    /* renamed from: a */
    public final AbstractC4917o f15026a;

    /* renamed from: x6.l$a */
    /* loaded from: classes-dex2jar.jar:x6/l$a.class */
    public static final class C4913a implements AbstractC4917o {
        @Override // p287x6.AbstractC4917o
        /* renamed from: a */
        public AbstractC4916n mo265a(Class<?> cls) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override // p287x6.AbstractC4917o
        /* renamed from: b */
        public boolean mo264b(Class<?> cls) {
            return false;
        }
    }

    /* renamed from: x6.l$b */
    /* loaded from: classes-dex2jar.jar:x6/l$b.class */
    public static class C4914b implements AbstractC4917o {

        /* renamed from: a */
        public AbstractC4917o[] f15027a;

        public C4914b(AbstractC4917o... abstractC4917oArr) {
            this.f15027a = abstractC4917oArr;
        }

        @Override // p287x6.AbstractC4917o
        /* renamed from: a */
        public AbstractC4916n mo265a(Class<?> cls) {
            AbstractC4917o[] abstractC4917oArr;
            for (AbstractC4917o abstractC4917o : this.f15027a) {
                if (abstractC4917o.mo264b(cls)) {
                    return abstractC4917o.mo265a(cls);
                }
            }
            StringBuilder m8752j = C0082b.m8752j("No factory is available for message type: ");
            m8752j.append(cls.getName());
            throw new UnsupportedOperationException(m8752j.toString());
        }

        @Override // p287x6.AbstractC4917o
        /* renamed from: b */
        public boolean mo264b(Class<?> cls) {
            for (AbstractC4917o abstractC4917o : this.f15027a) {
                if (abstractC4917o.mo264b(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public C4912l() {
        AbstractC4917o abstractC4917o;
        C4908h c4908h = C4908h.f15011a;
        try {
            abstractC4917o = (AbstractC4917o) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            abstractC4917o = f15025b;
        }
        C4914b c4914b = new C4914b(c4908h, abstractC4917o);
        Charset charset = C1895k.f7092a;
        this.f15026a = c4914b;
    }
}
