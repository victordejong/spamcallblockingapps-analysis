package androidx.appcompat.b.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import androidx.appcompat.b.a.b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e.class */
class e extends b {

    /* renamed from: a  reason: collision with root package name */
    private a f726a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f727b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/e$a.class */
    public static class a extends b.AbstractC0022b {
        int[][] L;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Type inference failed for: r1v4, types: [int[], int[][]] */
        public a(a aVar, e eVar, Resources resources) {
            super(aVar, eVar, resources);
            if (aVar != null) {
                this.L = aVar.L;
            } else {
                this.L = new int[this.i.length];
            }
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [int[], int[][]] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.b.a.b.AbstractC0022b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void a() {
            /*
                r4 = this;
                r0 = r4
                int[][] r0 = r0.L
                r5 = r0
                r0 = r5
                int r0 = r0.length
                int[] r0 = new int[r0]
                r6 = r0
                r0 = r5
                int r0 = r0.length
                r1 = 1
                int r0 = r0 - r1
                r7 = r0
            L_0x0010:
                r0 = r7
                if (r0 < 0) goto L_0x0038
                r0 = r4
                int[][] r0 = r0.L
                r5 = r0
                r0 = r5
                r1 = r7
                r0 = r0[r1]
                if (r0 == 0) goto L_0x002c
                r0 = r5
                r1 = r7
                r0 = r0[r1]
                java.lang.Object r0 = r0.clone()
                int[] r0 = (int[]) r0
                r5 = r0
                goto L_0x002e
            L_0x002c:
                r0 = 0
                r5 = r0
            L_0x002e:
                r0 = r6
                r1 = r7
                r2 = r5
                r0[r1] = r2
                int r7 = r7 + (-1)
                goto L_0x0010
            L_0x0038:
                r0 = r4
                r1 = r6
                r0.L = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.e.a.a():void");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final int b(int[] iArr) {
            int[][] iArr2 = this.L;
            int i = this.j;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [int[], int[][], java.lang.Object] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.appcompat.b.a.b.AbstractC0022b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void b(int r7, int r8) {
            /*
                r6 = this;
                r0 = r6
                r1 = r7
                r2 = r8
                super.b(r1, r2)
                r0 = r8
                int[] r0 = new int[r0]
                r9 = r0
                r0 = r6
                int[][] r0 = r0.L
                r1 = 0
                r2 = r9
                r3 = 0
                r4 = r7
                java.lang.System.arraycopy(r0, r1, r2, r3, r4)
                r0 = r6
                r1 = r9
                r0.L = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.b.a.e.a.b(int, int):void");
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new e(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new e(this, resources);
        }
    }

    e() {
        this(null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        if (aVar != null) {
            a(aVar);
        }
    }

    e(a aVar, Resources resources) {
        a(new a(aVar, this, resources));
        onStateChange(getState());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public a b() {
        return new a(this.f726a, this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.b.a.b
    public void a(b.AbstractC0022b bVar) {
        super.a(bVar);
        if (bVar instanceof a) {
            this.f726a = (a) bVar;
        }
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f727b && super.mutate() == this) {
            this.f726a.a();
            this.f727b = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.b.a.b, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean onStateChange = super.onStateChange(iArr);
        int b2 = this.f726a.b(iArr);
        int i = b2;
        if (b2 < 0) {
            i = this.f726a.b(StateSet.WILD_CARD);
        }
        return a(i) || onStateChange;
    }
}
