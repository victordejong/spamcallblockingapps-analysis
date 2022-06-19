package p000;

import androidx.viewpager.widget.ViewPager;
/* renamed from: yi1 */
/* loaded from: classes3-dex2jar.jar:yi1.class */
public abstract class yi1 implements ViewPager.AbstractC0208i {

    /* renamed from: a */
    public int f8741a;

    /* renamed from: b */
    public int f8742b;

    /* renamed from: a */
    public abstract int mo78a();

    /* renamed from: b */
    public abstract void mo77b(int i, int i2, float f);

    /* renamed from: c */
    public abstract void mo76c(int i);

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
    public final void onPageScrollStateChanged(int i) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        if (r0 < r6) goto L8;
     */
    @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPageScrolled(int r6, float r7, int r8) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f8741a
            r9 = r0
            r0 = r6
            r1 = r9
            if (r0 == r1) goto L12
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L1b
        L12:
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r6
            if (r0 >= r1) goto L28
        L1b:
            r0 = r5
            r1 = r9
            r0.mo76c(r1)
            r0 = r5
            r1 = r6
            r0.f8741a = r1
            r0 = r6
            r8 = r0
        L28:
            r0 = r5
            int r0 = r0.f8741a
            r1 = r6
            int r0 = r0 - r1
            int r0 = java.lang.Math.abs(r0)
            r1 = 1
            if (r0 <= r1) goto L42
            r0 = r5
            r1 = r8
            r0.mo76c(r1)
            r0 = r5
            r1 = r5
            int r1 = r1.f8742b
            r0.f8741a = r1
        L42:
            r0 = -1
            r9 = r0
            r0 = r5
            int r0 = r0.f8741a
            r10 = r0
            r0 = r10
            r1 = r6
            if (r0 != r1) goto L6a
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r1 = r5
            int r1 = r1.mo78a()
            if (r0 >= r1) goto L6a
            r0 = r5
            int r0 = r0.f8741a
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r8
            r10 = r0
            goto L82
        L6a:
            r0 = r5
            int r0 = r0.f8741a
            r11 = r0
            r0 = r8
            r10 = r0
            r0 = r11
            r1 = r6
            if (r0 <= r1) goto L82
            r0 = r11
            r1 = 1
            int r0 = r0 - r1
            r10 = r0
            r0 = r8
            r9 = r0
        L82:
            r0 = r5
            r1 = r10
            r2 = r9
            r3 = r7
            r0.mo77b(r1, r2, r3)
            r0 = r5
            r1 = r6
            r0.f8742b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.yi1.onPageScrolled(int, float, int):void");
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC0208i
    public final void onPageSelected(int i) {
        this.f8741a = i;
    }
}
