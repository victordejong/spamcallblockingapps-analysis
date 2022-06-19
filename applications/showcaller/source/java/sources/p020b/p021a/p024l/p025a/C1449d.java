package p020b.p021a.p024l.p025a;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import p020b.p021a.p024l.p025a.C1443b;
@SuppressLint({"RestrictedAPI"})
/* renamed from: b.a.l.a.d */
/* loaded from: classes-dex2jar.jar:b/a/l/a/d.class */
class C1449d extends C1443b {

    /* renamed from: p */
    private C1450a f5829p;

    /* renamed from: q */
    private boolean f5830q;

    /* renamed from: b.a.l.a.d$a */
    /* loaded from: classes-dex2jar.jar:b/a/l/a/d$a.class */
    public static class C1450a extends C1443b.AbstractC1447d {

        /* renamed from: J */
        int[][] f5831J;

        /* JADX WARN: Type inference failed for: r1v3, types: [int[], int[][]] */
        public C1450a(C1450a c1450a, C1449d c1449d, Resources resources) {
            super(c1450a, c1449d, resources);
            if (c1450a != null) {
                this.f5831J = c1450a.f5831J;
            } else {
                this.f5831J = new int[m30082f()];
            }
        }

        /* renamed from: A */
        public int m30058A(int[] iArr) {
            int[][] iArr2 = this.f5831J;
            int m30080h = m30080h();
            for (int i = 0; i < m30080h; i++) {
                if (StateSet.stateSetMatches(iArr2[i], iArr)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C1449d(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C1449d(this, resources);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        @Override // p020b.p021a.p024l.p025a.C1443b.AbstractC1447d
        /* renamed from: o */
        public void mo30057o(int i, int i2) {
            super.mo30057o(i, i2);
            ?? r0 = new int[i2];
            System.arraycopy(this.f5831J, 0, r0, 0, i);
            this.f5831J = r0;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        @Override // p020b.p021a.p024l.p025a.C1443b.AbstractC1447d
        /* renamed from: r */
        void mo30056r() {
            int[][] iArr = this.f5831J;
            ?? r0 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr2 = this.f5831J;
                r0[length] = iArr2[length] != null ? (int[]) iArr2[length].clone() : null;
            }
            this.f5831J = r0;
        }

        /* renamed from: z */
        public int m30055z(int[] iArr, Drawable drawable) {
            int m30087a = m30087a(drawable);
            this.f5831J[m30087a] = iArr;
            return m30087a;
        }
    }

    public C1449d(C1450a c1450a) {
        if (c1450a != null) {
            mo30061h(c1450a);
        }
    }

    C1449d(C1450a c1450a, Resources resources) {
        mo30061h(new C1450a(c1450a, this, resources));
        onStateChange(getState());
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p020b.p021a.p024l.p025a.C1443b
    /* renamed from: h */
    public void mo30061h(C1443b.AbstractC1447d abstractC1447d) {
        super.mo30061h(abstractC1447d);
        if (abstractC1447d instanceof C1450a) {
            this.f5829p = (C1450a) abstractC1447d;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    /* renamed from: j */
    public C1450a mo30062b() {
        return new C1450a(this.f5829p, this, null);
    }

    /* renamed from: k */
    public int[] m30059k(AttributeSet attributeSet) {
        int attributeCount = attributeSet.getAttributeCount();
        int[] iArr = new int[attributeCount];
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < attributeCount) {
                int attributeNameResource = attributeSet.getAttributeNameResource(i);
                int i4 = i3;
                if (attributeNameResource != 0) {
                    i4 = i3;
                    if (attributeNameResource != 16842960) {
                        i4 = i3;
                        if (attributeNameResource != 16843161) {
                            iArr[i3] = attributeSet.getAttributeBooleanValue(i, false) ? attributeNameResource : -attributeNameResource;
                            i4 = i3 + 1;
                        }
                    }
                }
                i++;
                i2 = i4;
            } else {
                return StateSet.trimStateSet(iArr, i3);
            }
        }
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f5830q && super.mutate() == this) {
            this.f5829p.mo30056r();
            this.f5830q = true;
        }
        return this;
    }

    @Override // p020b.p021a.p024l.p025a.C1443b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m30058A = this.f5829p.m30058A(iArr);
        int i = m30058A;
        if (m30058A < 0) {
            i = this.f5829p.m30058A(StateSet.WILD_CARD);
        }
        return m30094g(i) || onStateChange;
    }
}
