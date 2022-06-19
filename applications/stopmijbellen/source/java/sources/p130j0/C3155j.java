package p130j0;

import android.annotation.SuppressLint;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p152l0.AbstractC3426a;
import p226s.C4256e;
import p226s.C4263g;
/* renamed from: j0.j */
/* loaded from: classes-dex2jar.jar:j0/j.class */
public class C3155j {

    /* renamed from: b */
    public static final ExecutorService f10614b;

    /* renamed from: a */
    public static final C4256e<String, Typeface> f10613a = new C4256e<>(16);

    /* renamed from: c */
    public static final Object f10615c = new Object();

    /* renamed from: d */
    public static final C4263g<String, ArrayList<AbstractC3426a<C3156a>>> f10616d = new C4263g<>();

    /* renamed from: j0.j$a */
    /* loaded from: classes-dex2jar.jar:j0/j$a.class */
    public static final class C3156a {

        /* renamed from: a */
        public final Typeface f10617a;

        /* renamed from: b */
        public final int f10618b;

        public C3156a(int i) {
            this.f10617a = null;
            this.f10618b = i;
        }

        @SuppressLint({"WrongConstant"})
        public C3156a(Typeface typeface) {
            this.f10617a = typeface;
            this.f10618b = 0;
        }
    }

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), new ThreadFactoryC3159m("fonts-androidx", 10));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f10614b = threadPoolExecutor;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p130j0.C3155j.C3156a m2585a(java.lang.String r6, android.content.Context r7, p130j0.C3150e r8, int r9) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p130j0.C3155j.m2585a(java.lang.String, android.content.Context, j0.e, int):j0.j$a");
    }
}
