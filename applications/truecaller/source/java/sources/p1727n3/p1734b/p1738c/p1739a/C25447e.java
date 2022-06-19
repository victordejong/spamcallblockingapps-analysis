package p1727n3.p1734b.p1738c.p1739a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import p1727n3.p1734b.p1738c.p1739a.C25441b;
/* renamed from: n3.b.c.a.e */
/* loaded from: classes-dex2jar.jar:n3/b/c/a/e.class */
public class C25447e extends C25441b {

    /* renamed from: n */
    public C25448a f71091n;

    /* renamed from: o */
    public boolean f71092o;

    /* renamed from: n3.b.c.a.e$a */
    /* loaded from: classes-dex2jar.jar:n3/b/c/a/e$a.class */
    public static class C25448a extends C25441b.AbstractC25444c {

        /* renamed from: J */
        public int[][] f71093J;

        /* JADX WARN: Type inference failed for: r1v4, types: [int[], int[][]] */
        public C25448a(C25448a c25448a, C25447e c25447e, Resources resources) {
            super(c25448a, c25447e, resources);
            if (c25448a != null) {
                this.f71093J = c25448a.f71093J;
            } else {
                this.f71093J = new int[this.f71057g.length];
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        @Override // p1727n3.p1734b.p1738c.p1739a.C25441b.AbstractC25444c
        /* renamed from: e */
        public void mo3523e() {
            int[][] iArr = this.f71093J;
            ?? r0 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr2 = this.f71093J;
                r0[length] = iArr2[length] != null ? (int[]) iArr2[length].clone() : null;
            }
            this.f71093J = r0;
        }

        /* renamed from: g */
        public int m3522g(int[] iArr) {
            int[][] iArr2 = this.f71093J;
            int i = this.f71058h;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C25447e(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C25447e(this, resources);
        }
    }

    public C25447e(C25448a c25448a) {
    }

    public C25447e(C25448a c25448a, Resources resources) {
        mo3525e(new C25448a(c25448a, this, resources));
        onStateChange(getState());
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.C25441b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.C25441b
    /* renamed from: e */
    public void mo3525e(C25441b.AbstractC25444c abstractC25444c) {
        this.f71028a = abstractC25444c;
        int i = this.f71034g;
        if (i >= 0) {
            Drawable m3529d = abstractC25444c.m3529d(i);
            this.f71030c = m3529d;
            if (m3529d != null) {
                m3534c(m3529d);
            }
        }
        this.f71031d = null;
        if (abstractC25444c instanceof C25448a) {
            this.f71091n = (C25448a) abstractC25444c;
        }
    }

    /* renamed from: f */
    public C25448a mo3526b() {
        return new C25448a(this.f71091n, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.C25441b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f71092o) {
            super.mutate();
            this.f71091n.mo3523e();
            this.f71092o = true;
        }
        return this;
    }

    @Override // p1727n3.p1734b.p1738c.p1739a.C25441b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m3522g = this.f71091n.m3522g(iArr);
        int i = m3522g;
        if (m3522g < 0) {
            i = this.f71091n.m3522g(StateSet.WILD_CARD);
        }
        return m3533d(i) || onStateChange;
    }
}
