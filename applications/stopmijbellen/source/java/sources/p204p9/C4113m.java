package p204p9;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.ExecutorService;
import javax.annotation.Nullable;
import p204p9.C4132x;
/* renamed from: p9.m */
/* loaded from: classes2-dex2jar.jar:p9/m.class */
public final class C4113m {
    @Nullable

    /* renamed from: a */
    public ExecutorService f12941a;

    /* renamed from: b */
    public final Deque<C4132x.C4134b> f12942b = new ArrayDeque();

    /* renamed from: c */
    public final Deque<C4132x.C4134b> f12943c = new ArrayDeque();

    /* renamed from: d */
    public final Deque<C4132x> f12944d = new ArrayDeque();

    /* renamed from: a */
    public final <T> void m1407a(Deque<T> deque, T t) {
        synchronized (this) {
            if (!deque.remove(t)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        m1406b();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x009b  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1406b() {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p204p9.C4113m.m1406b():boolean");
    }

    /* renamed from: c */
    public final int m1405c(C4132x.C4134b c4134b) {
        int i = 0;
        for (C4132x.C4134b c4134b2 : this.f12943c) {
            C4132x c4132x = C4132x.this;
            if (!c4132x.f13036f && c4132x.f13035e.f13041a.f12958d.equals(C4132x.this.f13035e.f13041a.f12958d)) {
                i++;
            }
        }
        return i;
    }
}
