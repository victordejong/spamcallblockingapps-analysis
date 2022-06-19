package p000;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: kl1 */
/* loaded from: classes3-dex2jar.jar:kl1.class */
public final class kl1 implements bl1<wk1> {

    /* renamed from: a */
    public final CharSequence f6866a;

    /* renamed from: b */
    public final int f6867b;

    /* renamed from: c */
    public final int f6868c;

    /* renamed from: d */
    public final kk1<CharSequence, Integer, kj1<Integer, Integer>> f6869d;

    /* renamed from: kl1$a */
    /* loaded from: classes3-dex2jar.jar:kl1$a.class */
    public static final class C1458a implements Iterator<wk1> {

        /* renamed from: a */
        public int f6870a = -1;

        /* renamed from: b */
        public int f6871b;

        /* renamed from: c */
        public int f6872c;

        /* renamed from: d */
        public wk1 f6873d;

        /* renamed from: f */
        public int f6874f;

        public C1458a() {
            kl1.this = r5;
            int m4c = zk1.m4c(r5.f6867b, 0, r5.f6866a.length());
            this.f6871b = m4c;
            this.f6872c = m4c;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
            if (r0 < p000.kl1.this.f6868c) goto L9;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m1381a() {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.kl1.C1458a.m1381a():void");
        }

        /* renamed from: b */
        public wk1 next() {
            if (this.f6870a == -1) {
                m1381a();
            }
            if (this.f6870a != 0) {
                wk1 wk1Var = this.f6873d;
                if (wk1Var == null) {
                    throw new mj1("null cannot be cast to non-null type kotlin.ranges.IntRange");
                }
                this.f6873d = null;
                this.f6870a = -1;
                return wk1Var;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f6870a == -1) {
                m1381a();
            }
            boolean z = true;
            if (this.f6870a != 1) {
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
    public kl1(CharSequence charSequence, int i, int i2, kk1<? super CharSequence, ? super Integer, kj1<Integer, Integer>> kk1Var) {
        qk1.m744c(charSequence, "input");
        qk1.m744c(kk1Var, "getNextMatch");
        this.f6866a = charSequence;
        this.f6867b = i;
        this.f6868c = i2;
        this.f6869d = kk1Var;
    }

    @Override // p000.bl1
    public Iterator<wk1> iterator() {
        return new C1458a();
    }
}
