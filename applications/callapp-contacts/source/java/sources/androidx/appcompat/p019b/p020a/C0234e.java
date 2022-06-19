package androidx.appcompat.p019b.p020a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import androidx.appcompat.p019b.p020a.C0228b;
/* renamed from: androidx.appcompat.b.a.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e.class */
class C0234e extends C0228b {

    /* renamed from: a */
    private C0235a f686a;

    /* renamed from: b */
    private boolean f687b;

    /* renamed from: androidx.appcompat.b.a.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e$a.class */
    public static class C0235a extends C0228b.AbstractC0231b {

        /* renamed from: L */
        int[][] f688L;

        /* JADX WARN: Type inference failed for: r1v4, types: [int[], int[][]] */
        public C0235a(C0235a c0235a, C0234e c0234e, Resources resources) {
            super(c0235a, c0234e, resources);
            if (c0235a != null) {
                this.f688L = c0235a.f688L;
            } else {
                this.f688L = new int[this.f654i.length];
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        @Override // androidx.appcompat.p019b.p020a.C0228b.AbstractC0231b
        /* renamed from: a */
        void mo46177a() {
            int[][] iArr = this.f688L;
            ?? r0 = new int[iArr.length];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr2 = this.f688L;
                r0[length] = iArr2[length] != null ? (int[]) iArr2[length].clone() : null;
            }
            this.f688L = r0;
        }

        /* renamed from: b */
        public final int m46175b(int[] iArr) {
            int[][] iArr2 = this.f688L;
            int i = this.f655j;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        @Override // androidx.appcompat.p019b.p020a.C0228b.AbstractC0231b
        /* renamed from: b */
        public final void mo46176b(int i, int i2) {
            super.mo46176b(i, i2);
            ?? r0 = new int[i2];
            System.arraycopy(this.f688L, 0, r0, 0, i);
            this.f688L = r0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new C0234e(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new C0234e(this, resources);
        }
    }

    C0234e() {
        this(null, null);
    }

    public C0234e(C0235a c0235a) {
        if (c0235a != null) {
            mo46179a(c0235a);
        }
    }

    C0234e(C0235a c0235a, Resources resources) {
        mo46179a(new C0235a(c0235a, this, resources));
        onStateChange(getState());
    }

    /* renamed from: a */
    public C0235a mo46178b() {
        return new C0235a(this.f686a, this, null);
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b
    /* renamed from: a */
    public void mo46179a(C0228b.AbstractC0231b abstractC0231b) {
        super.mo46179a(abstractC0231b);
        if (abstractC0231b instanceof C0235a) {
            this.f686a = (C0235a) abstractC0231b;
        }
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f687b && super.mutate() == this) {
            this.f686a.mo46177a();
            this.f687b = true;
        }
        return this;
    }

    @Override // androidx.appcompat.p019b.p020a.C0228b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int m46175b = this.f686a.m46175b(iArr);
        int i = m46175b;
        if (m46175b < 0) {
            i = this.f686a.m46175b(StateSet.WILD_CARD);
        }
        return m46197a(i) || onStateChange;
    }
}
