package p573f.p576c0;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Pair;
import kotlin.TypeCastException;
import p573f.p575b0.AbstractC9896b;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
import p573f.p595z.C10080c;
import p573f.p595z.C10084f;
/* renamed from: f.c0.c */
/* loaded from: classes2-dex2jar.jar:f/c0/c.class */
public final class C9910c implements AbstractC9896b<C10080c> {

    /* renamed from: a */
    public final CharSequence f37112a;

    /* renamed from: b */
    public final int f37113b;

    /* renamed from: c */
    public final int f37114c;

    /* renamed from: d */
    public final AbstractC10035p<CharSequence, Integer, Pair<Integer, Integer>> f37115d;

    /* renamed from: f.c0.c$a */
    /* loaded from: classes2-dex2jar.jar:f/c0/c$a.class */
    public static final class C9911a implements Iterator<C10080c> {

        /* renamed from: a */
        public int f37116a = -1;

        /* renamed from: b */
        public int f37117b;

        /* renamed from: c */
        public int f37118c;

        /* renamed from: d */
        public C10080c f37119d;

        /* renamed from: e */
        public int f37120e;

        public C9911a() {
            int a = C10084f.m1570a(C9910c.this.f37113b, 0, C9910c.this.f37112a.length());
            this.f37117b = a;
            this.f37118c = a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0036, code lost:
            if (r0 < r6.f37121f.f37114c) goto L_0x0039;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m1797a() {
            /*
                Method dump skipped, instructions count: 241
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p573f.p576c0.C9910c.C9911a.m1797a():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f37116a == -1) {
                m1797a();
            }
            boolean z = true;
            if (this.f37116a != 1) {
                z = false;
            }
            return z;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public C10080c next() {
            if (this.f37116a == -1) {
                m1797a();
            }
            if (this.f37116a != 0) {
                C10080c cVar = this.f37119d;
                if (cVar != null) {
                    this.f37119d = null;
                    this.f37116a = -1;
                    return cVar;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9910c(CharSequence charSequence, int i, int i2, AbstractC10035p<? super CharSequence, ? super Integer, Pair<Integer, Integer>> pVar) {
        C10059q.m1637b(charSequence, "input");
        C10059q.m1637b(pVar, "getNextMatch");
        this.f37112a = charSequence;
        this.f37113b = i;
        this.f37114c = i2;
        this.f37115d = pVar;
    }

    @Override // p573f.p575b0.AbstractC9896b
    public Iterator<C10080c> iterator() {
        return new C9911a();
    }
}
