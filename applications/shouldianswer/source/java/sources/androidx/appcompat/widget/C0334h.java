package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.core.graphics.drawable.C0575a;
import androidx.core.widget.C0599c;
/* renamed from: androidx.appcompat.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h.class */
class C0334h {

    /* renamed from: a */
    private final CompoundButton f1363a;

    /* renamed from: b */
    private ColorStateList f1364b = null;

    /* renamed from: c */
    private PorterDuff.Mode f1365c = null;

    /* renamed from: d */
    private boolean f1366d = false;

    /* renamed from: e */
    private boolean f1367e = false;

    /* renamed from: f */
    private boolean f1368f;

    public C0334h(CompoundButton compoundButton) {
        this.f1363a = compoundButton;
    }

    /* renamed from: a */
    public int m7081a(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable m5996a = C0599c.m5996a(this.f1363a);
            i2 = i;
            if (m5996a != null) {
                i2 = i + m5996a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* renamed from: a */
    public ColorStateList m7082a() {
        return this.f1364b;
    }

    /* renamed from: a */
    public void m7080a(ColorStateList colorStateList) {
        this.f1364b = colorStateList;
        this.f1366d = true;
        m7075d();
    }

    /* renamed from: a */
    public void m7079a(PorterDuff.Mode mode) {
        this.f1365c = mode;
        this.f1367e = true;
        m7075d();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0078 A[Catch: all -> 0x00a8, TryCatch #0 {all -> 0x00a8, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x0087, B:24:0x0090), top: B:32:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090 A[Catch: all -> 0x00a8, TryCatch #0 {all -> 0x00a8, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x0087, B:24:0x0090), top: B:32:0x0011 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m7078a(android.util.AttributeSet r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            android.widget.CompoundButton r0 = r0.f1363a
            android.content.Context r0 = r0.getContext()
            r1 = r7
            int[] r2 = androidx.appcompat.C0051a.C0061j.CompoundButton
            r3 = r8
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> La8
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto L3f
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> La8
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> La8
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L3f
            r0 = r6
            android.widget.CompoundButton r0 = r0.f1363a     // Catch: java.lang.Throwable -> La8 android.content.res.Resources.NotFoundException -> Laf
            r1 = r6
            android.widget.CompoundButton r1 = r1.f1363a     // Catch: java.lang.Throwable -> La8 android.content.res.Resources.NotFoundException -> Laf
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> La8 android.content.res.Resources.NotFoundException -> Laf
            r2 = r8
            android.graphics.drawable.Drawable r1 = androidx.appcompat.p006a.p007a.C0062a.m7983b(r1, r2)     // Catch: java.lang.Throwable -> La8 android.content.res.Resources.NotFoundException -> Laf
            r0.setButtonDrawable(r1)     // Catch: java.lang.Throwable -> La8 android.content.res.Resources.NotFoundException -> Laf
            r0 = 1
            r8 = r0
            goto L41
        L3f:
            r0 = 0
            r8 = r0
        L41:
            r0 = r8
            if (r0 != 0) goto L6e
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_android_button     // Catch: java.lang.Throwable -> La8
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto L6e
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_android_button     // Catch: java.lang.Throwable -> La8
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: java.lang.Throwable -> La8
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6e
            r0 = r6
            android.widget.CompoundButton r0 = r0.f1363a     // Catch: java.lang.Throwable -> La8
            r1 = r6
            android.widget.CompoundButton r1 = r1.f1363a     // Catch: java.lang.Throwable -> La8
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> La8
            r2 = r8
            android.graphics.drawable.Drawable r1 = androidx.appcompat.p006a.p007a.C0062a.m7983b(r1, r2)     // Catch: java.lang.Throwable -> La8
            r0.setButtonDrawable(r1)     // Catch: java.lang.Throwable -> La8
        L6e:
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> La8
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto L86
            r0 = r6
            android.widget.CompoundButton r0 = r0.f1363a     // Catch: java.lang.Throwable -> La8
            r1 = r7
            int r2 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> La8
            android.content.res.ColorStateList r1 = r1.getColorStateList(r2)     // Catch: java.lang.Throwable -> La8
            androidx.core.widget.C0599c.m5995a(r0, r1)     // Catch: java.lang.Throwable -> La8
        L86:
            r0 = r7
            int r1 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> La8
            boolean r0 = r0.hasValue(r1)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto La3
            r0 = r6
            android.widget.CompoundButton r0 = r0.f1363a     // Catch: java.lang.Throwable -> La8
            r1 = r7
            int r2 = androidx.appcompat.C0051a.C0061j.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> La8
            r3 = -1
            int r1 = r1.getInt(r2, r3)     // Catch: java.lang.Throwable -> La8
            r2 = 0
            android.graphics.PorterDuff$Mode r1 = androidx.appcompat.widget.C0268aa.m7306a(r1, r2)     // Catch: java.lang.Throwable -> La8
            androidx.core.widget.C0599c.m5994a(r0, r1)     // Catch: java.lang.Throwable -> La8
        La3:
            r0 = r7
            r0.recycle()
            return
        La8:
            r9 = move-exception
            r0 = r7
            r0.recycle()
            r0 = r9
            throw r0
        Laf:
            r9 = move-exception
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0334h.m7078a(android.util.AttributeSet, int):void");
    }

    /* renamed from: b */
    public PorterDuff.Mode m7077b() {
        return this.f1365c;
    }

    /* renamed from: c */
    public void m7076c() {
        if (this.f1368f) {
            this.f1368f = false;
            return;
        }
        this.f1368f = true;
        m7075d();
    }

    /* renamed from: d */
    void m7075d() {
        Drawable m5996a = C0599c.m5996a(this.f1363a);
        if (m5996a != null) {
            if (!this.f1366d && !this.f1367e) {
                return;
            }
            Drawable mutate = C0575a.m6122g(m5996a).mutate();
            if (this.f1366d) {
                C0575a.m6133a(mutate, this.f1364b);
            }
            if (this.f1367e) {
                C0575a.m6130a(mutate, this.f1365c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f1363a.getDrawableState());
            }
            this.f1363a.setButtonDrawable(mutate);
        }
    }
}
