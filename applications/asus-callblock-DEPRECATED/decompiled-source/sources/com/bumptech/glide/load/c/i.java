package com.bumptech.glide.load.c;

import com.bumptech.glide.i.e;
import com.bumptech.glide.i.h;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/i.class */
public final class i<A, B> {

    /* renamed from: a  reason: collision with root package name */
    public final e<a<A>, B> f3575a;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/i$a.class */
    public static final class a<A> {

        /* renamed from: a  reason: collision with root package name */
        private static final Queue<a<?>> f3577a = h.a(0);

        /* renamed from: b  reason: collision with root package name */
        private int f3578b;
        private int c;
        private A d;

        private a() {
        }

        public static <A> a<A> a(A a2) {
            a<?> poll = f3577a.poll();
            a<A> aVar = (a<A>) poll;
            if (poll == null) {
                aVar = new a<>();
            }
            ((a) aVar).d = a2;
            ((a) aVar).c = 0;
            ((a) aVar).f3578b = 0;
            return aVar;
        }

        public final void a() {
            f3577a.offer(this);
        }

        public final boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof a) {
                a aVar = (a) obj;
                z = false;
                if (this.c == aVar.c) {
                    z = false;
                    if (this.f3578b == aVar.f3578b) {
                        z = false;
                        if (this.d.equals(aVar.d)) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (((this.f3578b * 31) + this.c) * 31) + this.d.hashCode();
        }
    }

    public i() {
        this(250);
    }

    public i(int i) {
        this.f3575a = new e<a<A>, B>(i) { // from class: com.bumptech.glide.load.c.i.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bumptech.glide.i.e
            public final /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
                ((a) obj).a();
            }
        };
    }
}
