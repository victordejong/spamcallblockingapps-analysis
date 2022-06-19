package kotlin.p087i;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.C1738i;
import kotlin.TypeCastException;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1711c;
import kotlin.p084f.C1713d;
import kotlin.p086h.AbstractC1728b;
/* renamed from: kotlin.i.e */
/* loaded from: classes-dex2jar.jar:kotlin/i/e.class */
public final class C1743e implements AbstractC1728b<C1711c> {

    /* renamed from: a */
    private final CharSequence f4420a;

    /* renamed from: b */
    private final int f4421b;

    /* renamed from: c */
    private final int f4422c;

    /* renamed from: d */
    private final AbstractC1674m<CharSequence, Integer, C1738i<Integer, Integer>> f4423d;

    /* renamed from: kotlin.i.e$a */
    /* loaded from: classes-dex2jar.jar:kotlin/i/e$a.class */
    public static final class C1744a implements Iterator<C1711c> {

        /* renamed from: b */
        private int f4425b = -1;

        /* renamed from: c */
        private int f4426c;

        /* renamed from: d */
        private int f4427d;

        /* renamed from: e */
        private C1711c f4428e;

        /* renamed from: f */
        private int f4429f;

        C1744a() {
            C1743e.this = r6;
            this.f4426c = C1713d.m3080a(r6.f4421b, 0, r6.f4420a.length());
            this.f4427d = this.f4426c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
            if (r6.f4429f < kotlin.p087i.C1743e.this.f4422c) goto L9;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void m3049b() {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.p087i.C1743e.C1744a.m3049b():void");
        }

        /* renamed from: a */
        public C1711c next() {
            if (this.f4425b == -1) {
                m3049b();
            }
            if (this.f4425b != 0) {
                C1711c c1711c = this.f4428e;
                if (c1711c == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.ranges.IntRange");
                }
                this.f4428e = null;
                this.f4425b = -1;
                return c1711c;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f4425b == -1) {
                m3049b();
            }
            boolean z = true;
            if (this.f4425b != 1) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1743e(CharSequence charSequence, int i, int i2, AbstractC1674m<? super CharSequence, ? super Integer, C1738i<Integer, Integer>> abstractC1674m) {
        C1694h.m3117b(charSequence, "input");
        C1694h.m3117b(abstractC1674m, "getNextMatch");
        this.f4420a = charSequence;
        this.f4421b = i;
        this.f4422c = i2;
        this.f4423d = abstractC1674m;
    }

    @Override // kotlin.p086h.AbstractC1728b
    /* renamed from: a */
    public Iterator<C1711c> mo2994a() {
        return new C1744a();
    }
}
