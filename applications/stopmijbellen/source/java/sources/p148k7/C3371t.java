package p148k7;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Objects;
import p159l7.AbstractC3513c;
/* renamed from: k7.t */
/* loaded from: classes2-dex2jar.jar:k7/t.class */
public class C3371t implements AbstractC3513c {

    /* renamed from: a */
    public AbstractC3360m f11401a;

    /* renamed from: b */
    public LinkedList<AbstractC3375d> f11402b = new LinkedList<>();

    /* renamed from: c */
    public ArrayList<Object> f11403c = new ArrayList<>();

    /* renamed from: d */
    public ByteOrder f11404d = ByteOrder.BIG_ENDIAN;

    /* renamed from: e */
    public C3358l f11405e = new C3358l();

    /* renamed from: k7.t$a */
    /* loaded from: classes2-dex2jar.jar:k7/t$a.class */
    public static class C3372a extends AbstractC3375d {

        /* renamed from: b */
        public AbstractC3373b<byte[]> f11406b;

        public C3372a(int i, AbstractC3373b<byte[]> abstractC3373b) {
            super(i);
            if (i > 0) {
                this.f11406b = abstractC3373b;
                return;
            }
            throw new IllegalArgumentException("length should be > 0");
        }

        @Override // p148k7.C3371t.AbstractC3375d
        /* renamed from: a */
        public AbstractC3375d mo2334a(AbstractC3360m abstractC3360m, C3358l c3358l) {
            int i = this.f11409a;
            byte[] bArr = new byte[i];
            Objects.requireNonNull(c3358l);
            c3358l.m2348e(bArr, 0, i);
            this.f11406b.mo1263a(bArr);
            return null;
        }
    }

    /* renamed from: k7.t$b */
    /* loaded from: classes2-dex2jar.jar:k7/t$b.class */
    public interface AbstractC3373b<T> {
        /* renamed from: a */
        void mo1263a(T t);
    }

    /* renamed from: k7.t$c */
    /* loaded from: classes2-dex2jar.jar:k7/t$c.class */
    public static class C3374c extends AbstractC3375d {

        /* renamed from: b */
        public byte f11407b;

        /* renamed from: c */
        public AbstractC3513c f11408c;

        public C3374c(byte b, AbstractC3513c abstractC3513c) {
            super(1);
            this.f11407b = b;
            this.f11408c = abstractC3513c;
        }

        @Override // p148k7.C3371t.AbstractC3375d
        /* renamed from: a */
        public AbstractC3375d mo2334a(AbstractC3360m abstractC3360m, C3358l c3358l) {
            boolean z;
            C3358l c3358l2 = new C3358l();
            boolean z2 = true;
            while (true) {
                boolean z3 = z2;
                z = z3;
                if (c3358l.m2337p() <= 0) {
                    break;
                }
                ByteBuffer m2338o = c3358l.m2338o();
                m2338o.mark();
                int i = 0;
                while (true) {
                    z = z3;
                    if (m2338o.remaining() > 0) {
                        z3 = m2338o.get() == this.f11407b;
                        z = z3;
                        if (z3) {
                            break;
                        }
                        i++;
                    } else {
                        break;
                    }
                }
                m2338o.reset();
                if (z) {
                    c3358l.m2351b(m2338o);
                    c3358l.m2349d(c3358l2, i);
                    c3358l.m2350c();
                    break;
                }
                c3358l2.m2352a(m2338o);
                z2 = z;
            }
            this.f11408c.mo1099c(abstractC3360m, c3358l2);
            if (z) {
                return null;
            }
            return this;
        }
    }

    /* renamed from: k7.t$d */
    /* loaded from: classes2-dex2jar.jar:k7/t$d.class */
    public static abstract class AbstractC3375d {

        /* renamed from: a */
        public int f11409a;

        public AbstractC3375d(int i) {
            this.f11409a = i;
        }

        /* renamed from: a */
        public abstract AbstractC3375d mo2334a(AbstractC3360m abstractC3360m, C3358l c3358l);
    }

    static {
        new Hashtable();
    }

    public C3371t(AbstractC3360m abstractC3360m) {
        this.f11401a = abstractC3360m;
        abstractC3360m.mo939b(this);
    }

    /* renamed from: a */
    public C3371t m2335a(int i, AbstractC3373b<byte[]> abstractC3373b) {
        this.f11402b.add(new C3372a(i, abstractC3373b));
        return this;
    }

    @Override // p159l7.AbstractC3513c
    /* renamed from: c */
    public void mo1099c(AbstractC3360m abstractC3360m, C3358l c3358l) {
        c3358l.m2349d(this.f11405e, c3358l.f11382c);
        while (this.f11402b.size() > 0 && this.f11405e.f11382c >= this.f11402b.peek().f11409a) {
            this.f11405e.f11381b = this.f11404d;
            AbstractC3375d mo2334a = this.f11402b.poll().mo2334a(abstractC3360m, this.f11405e);
            if (mo2334a != null) {
                this.f11402b.addFirst(mo2334a);
            }
        }
        if (this.f11402b.size() == 0) {
            C3358l c3358l2 = this.f11405e;
            c3358l2.m2349d(c3358l, c3358l2.f11382c);
        }
    }
}
