package p081h.p119d.p120a.p145w.p146i;

import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import p081h.p119d.p120a.p145w.p146i.C6068f;
/* renamed from: h.d.a.w.i.a */
/* loaded from: classes-dex2jar.jar:h/d/a/w/i/a.class */
public class C6060a<T extends Drawable> implements AbstractC6065d<T> {

    /* renamed from: a */
    public final C6070g<T> f15107a;

    /* renamed from: b */
    public final int f15108b;

    /* renamed from: c */
    public C6062b<T> f15109c;

    /* renamed from: d */
    public C6062b<T> f15110d;

    /* renamed from: h.d.a.w.i.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/w/i/a$a.class */
    public static class C6061a implements C6068f.AbstractC6069a {

        /* renamed from: a */
        public final int f15111a;

        public C6061a(int i) {
            this.f15111a = i;
        }

        @Override // p081h.p119d.p120a.p145w.p146i.C6068f.AbstractC6069a
        public Animation build() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(this.f15111a);
            return alphaAnimation;
        }
    }

    public C6060a() {
        this(300);
    }

    public C6060a(int i) {
        this(new C6070g(new C6061a(i)), i);
    }

    public C6060a(C6070g<T> gVar, int i) {
        this.f15107a = gVar;
        this.f15108b = i;
    }

    /* renamed from: a */
    public final AbstractC6063c<T> m23931a() {
        if (this.f15109c == null) {
            this.f15109c = new C6062b<>(this.f15107a.mo23923a(false, true), this.f15108b);
        }
        return this.f15109c;
    }

    @Override // p081h.p119d.p120a.p145w.p146i.AbstractC6065d
    /* renamed from: a */
    public AbstractC6063c<T> mo23923a(boolean z, boolean z2) {
        return z ? C6066e.m23926b() : z2 ? m23931a() : m23930b();
    }

    /* renamed from: b */
    public final AbstractC6063c<T> m23930b() {
        if (this.f15110d == null) {
            this.f15110d = new C6062b<>(this.f15107a.mo23923a(false, false), this.f15108b);
        }
        return this.f15110d;
    }
}
