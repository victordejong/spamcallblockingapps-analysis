package p134j4;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import p189o4.AbstractC3879p;
import p201p6.C4018c;
/* renamed from: j4.o0 */
/* loaded from: classes-dex2jar.jar:j4/o0.class */
public final class C3236o0 {

    /* renamed from: k */
    public static final C4018c f10895k = new C4018c("ExtractorLooper");

    /* renamed from: a */
    public final C3187b1 f10896a;

    /* renamed from: b */
    public final C3222k0 f10897b;

    /* renamed from: c */
    public final C3196d2 f10898c;

    /* renamed from: d */
    public final C3234n1 f10899d;

    /* renamed from: e */
    public final C3243q1 f10900e;

    /* renamed from: f */
    public final C3258v1 f10901f;

    /* renamed from: g */
    public final C3264x1 f10902g;

    /* renamed from: h */
    public final AbstractC3879p f10903h;

    /* renamed from: i */
    public final C3195d1 f10904i;

    /* renamed from: j */
    public final AtomicBoolean f10905j = new AtomicBoolean(false);

    public C3236o0(C3187b1 c3187b1, AbstractC3879p abstractC3879p, C3222k0 c3222k0, C3196d2 c3196d2, C3234n1 c3234n1, C3243q1 c3243q1, C3258v1 c3258v1, C3264x1 c3264x1, C3195d1 c3195d1) {
        this.f10896a = c3187b1;
        this.f10903h = abstractC3879p;
        this.f10897b = c3222k0;
        this.f10898c = c3196d2;
        this.f10899d = c3234n1;
        this.f10900e = c3243q1;
        this.f10901f = c3258v1;
        this.f10902g = c3264x1;
        this.f10904i = c3195d1;
    }

    /* renamed from: a */
    public final void m2526a(int i, Exception exc) {
        try {
            C3187b1 c3187b1 = this.f10896a;
            Objects.requireNonNull(c3187b1);
            c3187b1.f10735f.lock();
            c3187b1.m2563a(i).f11065c.f11054d = 5;
            c3187b1.f10735f.unlock();
            C3187b1 c3187b12 = this.f10896a;
            Objects.requireNonNull(c3187b12);
            c3187b12.m2562b(new C3248s0(c3187b12, i));
        } catch (C3233n0 e) {
            f10895k.m1509c("Error during error handling: %s", exc.getMessage());
        }
    }
}
