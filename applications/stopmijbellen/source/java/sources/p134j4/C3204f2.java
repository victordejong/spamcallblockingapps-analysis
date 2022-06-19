package p134j4;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p122i2.RunnableC3090z;
import p156l4.C3496b;
import p189o4.AbstractC3879p;
import p201p6.C4018c;
import p209q4.C4154a;
/* renamed from: j4.f2 */
/* loaded from: classes-dex2jar.jar:j4/f2.class */
public final class C3204f2 {

    /* renamed from: e */
    public static final C4018c f10783e = new C4018c("AssetPackManager");

    /* renamed from: a */
    public final C3259w f10784a;

    /* renamed from: b */
    public final AbstractC3879p f10785b;

    /* renamed from: c */
    public final C3250t f10786c;

    /* renamed from: d */
    public final AbstractC3879p f10787d;

    public C3204f2(C3259w c3259w, AbstractC3879p abstractC3879p, C3250t c3250t, C4154a c4154a, C3187b1 c3187b1, C3245r0 c3245r0, C3202f0 c3202f0, AbstractC3879p abstractC3879p2, C3496b c3496b, C3246r1 c3246r1) {
        new Handler(Looper.getMainLooper());
        this.f10784a = c3259w;
        this.f10785b = abstractC3879p;
        this.f10786c = c3250t;
        this.f10787d = abstractC3879p2;
    }

    /* renamed from: a */
    public final void m2544a(boolean z) {
        boolean z2;
        C3250t c3250t = this.f10786c;
        synchronized (c3250t) {
            z2 = c3250t.f12630e != null;
        }
        C3250t c3250t2 = this.f10786c;
        synchronized (c3250t2) {
            c3250t2.f12631f = z;
            c3250t2.m1514b();
        }
        if (!z || z2) {
            return;
        }
        ((Executor) this.f10787d.zza()).execute(new RunnableC3090z(this, 2));
    }
}
