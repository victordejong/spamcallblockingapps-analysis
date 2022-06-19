package p1727n3.p1807k.p1817f;

import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p1727n3.p1788g.C26180f;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1820h.AbstractC26552b;
/* renamed from: n3.k.f.j */
/* loaded from: classes-dex2jar.jar:n3/k/f/j.class */
public class C26527j {

    /* renamed from: b */
    public static final ExecutorService f74331b;

    /* renamed from: a */
    public static final C26180f<String, Typeface> f74330a = new C26180f<>(16);

    /* renamed from: c */
    public static final Object f74332c = new Object();

    /* renamed from: d */
    public static final C26187h<String, ArrayList<AbstractC26552b<C26528a>>> f74333d = new C26187h<>();

    /* renamed from: n3.k.f.j$a */
    /* loaded from: classes-dex2jar.jar:n3/k/f/j$a.class */
    public static final class C26528a {

        /* renamed from: a */
        public final Typeface f74334a;

        /* renamed from: b */
        public final int f74335b;

        public C26528a(int i) {
            this.f74334a = null;
            this.f74335b = i;
        }

        public C26528a(Typeface typeface) {
            this.f74334a = typeface;
            this.f74335b = 0;
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC26532n("fonts-androidx", 10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f74331b = threadPoolExecutor;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p1727n3.p1807k.p1817f.C26527j.C26528a m1713a(java.lang.String r6, android.content.Context r7, p1727n3.p1807k.p1817f.C26522e r8, int r9) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1817f.C26527j.m1713a(java.lang.String, android.content.Context, n3.k.f.e, int):n3.k.f.j$a");
    }
}
