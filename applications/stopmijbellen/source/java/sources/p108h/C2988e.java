package p108h;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import p108h.C2982b;
@SuppressLint({"RestrictedAPI"})
/* renamed from: h.e */
/* loaded from: classes-dex2jar.jar:h/e.class */
public class C2988e extends C2982b {

    /* renamed from: n */
    public C2989a f10081n;

    /* renamed from: o */
    public boolean f10082o;

    /* renamed from: h.e$a */
    /* loaded from: classes-dex2jar.jar:h/e$a.class */
    public static class C2989a extends C2982b.AbstractC2985c {

        /* renamed from: J */
        public int[][] f10083J;

        /* JADX WARN: Type inference failed for: r1v4, types: [int[], int[][]] */
        public C2989a(C2989a c2989a, C2988e c2988e, Resources resources) {
            super(c2989a, c2988e, resources);
            if (c2989a != null) {
                this.f10083J = c2989a.f10083J;
            } else {
                this.f10083J = new int[this.f10047g.length];
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        @Override // p108h.C2982b.AbstractC2985c
        /* renamed from: e */
        public void mo2778e() {
            int[][] iArr = this.f10083J;
            ?? r0 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr2 = this.f10083J;
                r0[length] = iArr2[length] != null ? (int[]) iArr2[length].clone() : null;
            }
            this.f10083J = r0;
        }

        /* renamed from: g */
        public int m2777g(int[] iArr) {
            int[][] iArr2 = this.f10083J;
            int i = this.f10048h;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C2988e(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C2988e(this, resources);
        }
    }

    public C2988e(C2989a c2989a) {
    }

    public C2988e(C2989a c2989a, Resources resources) {
        mo2780e(new C2989a(c2989a, this, resources));
        onStateChange(getState());
    }

    @Override // p108h.C2982b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p108h.C2982b
    /* renamed from: e */
    public void mo2780e(C2982b.AbstractC2985c abstractC2985c) {
        this.f10018a = abstractC2985c;
        int i = this.f10024g;
        if (i >= 0) {
            Drawable m2784d = abstractC2985c.m2784d(i);
            this.f10020c = m2784d;
            if (m2784d != null) {
                m2789c(m2784d);
            }
        }
        this.f10021d = null;
        if (abstractC2985c instanceof C2989a) {
            this.f10081n = (C2989a) abstractC2985c;
        }
    }

    /* renamed from: f */
    public C2989a mo2781b() {
        return new C2989a(this.f10081n, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p108h.C2982b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f10082o) {
            super.mutate();
            this.f10081n.mo2778e();
            this.f10082o = true;
        }
        return this;
    }

    @Override // p108h.C2982b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m2777g = this.f10081n.m2777g(iArr);
        int i = m2777g;
        if (m2777g < 0) {
            i = this.f10081n.m2777g(StateSet.WILD_CARD);
        }
        return m2788d(i) || onStateChange;
    }
}
