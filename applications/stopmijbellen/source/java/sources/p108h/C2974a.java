package p108h;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import p098g0.AbstractC2790b;
import p108h.C2982b;
import p108h.C2988e;
import p119i.C3053a;
import p164m1.C3616b;
import p226s.C4255d;
import p226s.C4264h;
@SuppressLint({"RestrictedAPI"})
/* renamed from: h.a */
/* loaded from: classes-dex2jar.jar:h/a.class */
public class C2974a extends C2988e implements AbstractC2790b {

    /* renamed from: p */
    public C2977c f10003p;

    /* renamed from: q */
    public AbstractC2981g f10004q;

    /* renamed from: r */
    public int f10005r;

    /* renamed from: s */
    public int f10006s;

    /* renamed from: t */
    public boolean f10007t;

    /* renamed from: h.a$b */
    /* loaded from: classes-dex2jar.jar:h/a$b.class */
    public static class C2976b extends AbstractC2981g {

        /* renamed from: a */
        public final Animatable f10008a;

        public C2976b(Animatable animatable) {
            super(null);
            this.f10008a = animatable;
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: c */
        public void mo2792c() {
            this.f10008a.start();
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: d */
        public void mo2791d() {
            this.f10008a.stop();
        }
    }

    /* renamed from: h.a$c */
    /* loaded from: classes-dex2jar.jar:h/a$c.class */
    public static class C2977c extends C2988e.C2989a {

        /* renamed from: K */
        public C4255d<Long> f10009K;

        /* renamed from: L */
        public C4264h<Integer> f10010L;

        public C2977c(C2977c c2977c, C2974a c2974a, Resources resources) {
            super(c2977c, c2974a, resources);
            if (c2977c != null) {
                this.f10009K = c2977c.f10009K;
                this.f10010L = c2977c.f10010L;
                return;
            }
            this.f10009K = new C4255d<>();
            this.f10010L = new C4264h<>();
        }

        /* renamed from: h */
        public static long m2796h(int i, int i2) {
            return i2 | (i << 32);
        }

        @Override // p108h.C2988e.C2989a, p108h.C2982b.AbstractC2985c
        /* renamed from: e */
        public void mo2778e() {
            this.f10009K = this.f10009K.clone();
            this.f10010L = this.f10010L.clone();
        }

        /* renamed from: i */
        public int m2795i(int i) {
            return i < 0 ? 0 : this.f10010L.m1188d(i, 0).intValue();
        }

        @Override // p108h.C2988e.C2989a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C2974a(this, null);
        }

        @Override // p108h.C2988e.C2989a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C2974a(this, resources);
        }
    }

    /* renamed from: h.a$d */
    /* loaded from: classes-dex2jar.jar:h/a$d.class */
    public static class C2978d extends AbstractC2981g {

        /* renamed from: a */
        public final C3616b f10011a;

        public C2978d(C3616b c3616b) {
            super(null);
            this.f10011a = c3616b;
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: c */
        public void mo2792c() {
            this.f10011a.start();
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: d */
        public void mo2791d() {
            this.f10011a.stop();
        }
    }

    /* renamed from: h.a$e */
    /* loaded from: classes-dex2jar.jar:h/a$e.class */
    public static class C2979e extends AbstractC2981g {

        /* renamed from: a */
        public final ObjectAnimator f10012a;

        /* renamed from: b */
        public final boolean f10013b;

        public C2979e(AnimationDrawable animationDrawable, boolean z, boolean z2) {
            super(null);
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i = z ? numberOfFrames - 1 : 0;
            int i2 = z ? 0 : numberOfFrames - 1;
            C2980f c2980f = new C2980f(animationDrawable, z);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
            C3053a.m2672a(ofInt, true);
            ofInt.setDuration(c2980f.f10016c);
            ofInt.setInterpolator(c2980f);
            this.f10013b = z2;
            this.f10012a = ofInt;
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: a */
        public boolean mo2794a() {
            return this.f10013b;
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: b */
        public void mo2793b() {
            this.f10012a.reverse();
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: c */
        public void mo2792c() {
            this.f10012a.start();
        }

        @Override // p108h.C2974a.AbstractC2981g
        /* renamed from: d */
        public void mo2791d() {
            this.f10012a.cancel();
        }
    }

    /* renamed from: h.a$f */
    /* loaded from: classes-dex2jar.jar:h/a$f.class */
    public static class C2980f implements TimeInterpolator {

        /* renamed from: a */
        public int[] f10014a;

        /* renamed from: b */
        public int f10015b;

        /* renamed from: c */
        public int f10016c;

        public C2980f(AnimationDrawable animationDrawable, boolean z) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f10015b = numberOfFrames;
            int[] iArr = this.f10014a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f10014a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f10014a;
            int i = 0;
            for (int i2 = 0; i2 < numberOfFrames; i2++) {
                int duration = animationDrawable.getDuration(z ? (numberOfFrames - i2) - 1 : i2);
                iArr2[i2] = duration;
                i += duration;
            }
            this.f10016c = i;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            int i = (int) ((f * this.f10016c) + 0.5f);
            int i2 = this.f10015b;
            int[] iArr = this.f10014a;
            int i3 = 0;
            while (i3 < i2 && i >= iArr[i3]) {
                i -= iArr[i3];
                i3++;
            }
            return (i3 / i2) + (i3 < i2 ? i / this.f10016c : 0.0f);
        }
    }

    /* renamed from: h.a$g */
    /* loaded from: classes-dex2jar.jar:h/a$g.class */
    public static abstract class AbstractC2981g {
        public AbstractC2981g(C2975a c2975a) {
        }

        /* renamed from: a */
        public boolean mo2794a() {
            return false;
        }

        /* renamed from: b */
        public void mo2793b() {
        }

        /* renamed from: c */
        public abstract void mo2792c();

        /* renamed from: d */
        public abstract void mo2791d();
    }

    public C2974a() {
        this(null, null);
    }

    public C2974a(C2977c c2977c, Resources resources) {
        super(null);
        this.f10005r = -1;
        this.f10006s = -1;
        C2977c c2977c2 = new C2977c(c2977c, this, resources);
        super.mo2780e(c2977c2);
        this.f10003p = c2977c2;
        onStateChange(getState());
        jumpToCurrentState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x03ca, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(com.google.android.gms.internal.ads.C1676a.m4787j(r10, new java.lang.StringBuilder(), ": <transition> tag requires 'fromId' & 'toId' attributes"));
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p108h.C2974a m2797g(android.content.Context r8, android.content.res.Resources r9, org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.content.res.Resources.Theme r12) throws java.io.IOException, org.xmlpull.v1.XmlPullParserException {
        /*
            Method dump skipped, instructions count: 1072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p108h.C2974a.m2797g(android.content.Context, android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):h.a");
    }

    @Override // p108h.C2988e, p108h.C2982b
    /* renamed from: b */
    public C2982b.AbstractC2985c mo2781b() {
        return new C2977c(this.f10003p, this, null);
    }

    @Override // p108h.C2988e, p108h.C2982b
    /* renamed from: e */
    public void mo2780e(C2982b.AbstractC2985c abstractC2985c) {
        super.mo2780e(abstractC2985c);
        if (abstractC2985c instanceof C2977c) {
            this.f10003p = (C2977c) abstractC2985c;
        }
    }

    @Override // p108h.C2988e
    /* renamed from: f */
    public C2988e.C2989a mo2779f() {
        return new C2977c(this.f10003p, this, null);
    }

    @Override // p108h.C2982b, android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC2981g abstractC2981g = this.f10004q;
        if (abstractC2981g != null) {
            abstractC2981g.mo2791d();
            this.f10004q = null;
            m2788d(this.f10005r);
            this.f10005r = -1;
            this.f10006s = -1;
        }
    }

    @Override // p108h.C2988e, p108h.C2982b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f10007t) {
            super.mutate();
            this.f10003p.mo2778e();
            this.f10007t = true;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x01a7, code lost:
        if (m2788d(r9) != false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019e  */
    @Override // p108h.C2988e, p108h.C2982b, android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onStateChange(int[] r7) {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p108h.C2974a.onStateChange(int[]):boolean");
    }

    @Override // p108h.C2982b, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        AbstractC2981g abstractC2981g = this.f10004q;
        if (abstractC2981g != null && (visible || z2)) {
            if (z) {
                abstractC2981g.mo2792c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
