package p131c.p161d.p266c.p267a;

import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
/* renamed from: c.d.c.a.i */
/* loaded from: classes2-dex2jar.jar:c/d/c/a/i.class */
public class C4922i {

    /* renamed from: a */
    public final String f17557a;

    /* renamed from: c.d.c.a.i$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/a/i$a.class */
    public class C4923a extends C4922i {

        /* renamed from: b */
        public final /* synthetic */ String f17558b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4923a(C4922i iVar, String str) {
            super(iVar, null);
            this.f17558b = str;
        }

        @Override // p131c.p161d.p266c.p267a.C4922i
        /* renamed from: a */
        public C4922i mo24822a(String str) {
            throw new UnsupportedOperationException("already specified useForNull");
        }

        @Override // p131c.p161d.p266c.p267a.C4922i
        /* renamed from: a */
        public CharSequence mo24823a(Object obj) {
            return obj == null ? this.f17558b : C4922i.this.mo24823a(obj);
        }
    }

    public C4922i(C4922i iVar) {
        this.f17557a = iVar.f17557a;
    }

    public /* synthetic */ C4922i(C4922i iVar, C4923a aVar) {
        this(iVar);
    }

    public C4922i(String str) {
        C4933n.m24795a(str);
        this.f17557a = str;
    }

    /* renamed from: a */
    public static C4922i m24830a(char c) {
        return new C4922i(String.valueOf(c));
    }

    /* renamed from: b */
    public static C4922i m24824b(String str) {
        return new C4922i(str);
    }

    /* renamed from: a */
    public C4922i mo24822a(String str) {
        C4933n.m24795a(str);
        return new C4923a(this, str);
    }

    /* renamed from: a */
    public <A extends Appendable> A m24829a(A a, Iterator<?> it) throws IOException {
        C4933n.m24795a(a);
        if (it.hasNext()) {
            a.append(mo24823a(it.next()));
            while (it.hasNext()) {
                a.append(this.f17557a);
                a.append(mo24823a(it.next()));
            }
        }
        return a;
    }

    /* renamed from: a */
    public CharSequence mo24823a(Object obj) {
        C4933n.m24795a(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }

    /* renamed from: a */
    public final String m24828a(Iterable<?> iterable) {
        return m24826a(iterable.iterator());
    }

    /* renamed from: a */
    public final String m24826a(Iterator<?> it) {
        StringBuilder sb = new StringBuilder();
        m24827a(sb, it);
        return sb.toString();
    }

    /* renamed from: a */
    public final String m24825a(Object[] objArr) {
        return m24828a((Iterable<?>) Arrays.asList(objArr));
    }

    /* renamed from: a */
    public final StringBuilder m24827a(StringBuilder sb, Iterator<?> it) {
        try {
            m24829a((C4922i) sb, it);
            return sb;
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
