package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCompoundButtonHelper.class */
class AppCompatCompoundButtonHelper {
    @NonNull

    /* renamed from: a */
    private final CompoundButton f931a;

    /* renamed from: b */
    private ColorStateList f932b = null;

    /* renamed from: c */
    private PorterDuff.Mode f933c = null;

    /* renamed from: d */
    private boolean f934d = false;

    /* renamed from: e */
    private boolean f935e = false;

    /* renamed from: f */
    private boolean f936f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppCompatCompoundButtonHelper(@NonNull CompoundButton compoundButton) {
        this.f931a = compoundButton;
    }

    /* renamed from: a */
    void m21646a() {
        Drawable a = CompoundButtonCompat.m18913a(this.f931a);
        if (a == null) {
            return;
        }
        if (this.f934d || this.f935e) {
            Drawable mutate = DrawableCompat.m19495r(a).mutate();
            if (this.f934d) {
                DrawableCompat.m19498o(mutate, this.f932b);
            }
            if (this.f935e) {
                DrawableCompat.m19497p(mutate, this.f933c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f931a.getDrawableState());
            }
            this.f931a.setButtonDrawable(mutate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m21645b(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable a = CompoundButtonCompat.m18913a(this.f931a);
            i2 = i;
            if (a != null) {
                i2 = i + a.getIntrinsicWidth();
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public ColorStateList m21644c() {
        return this.f932b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public PorterDuff.Mode m21643d() {
        return this.f933c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0092 A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002b, B:5:0x0035, B:7:0x0042, B:12:0x005f, B:14:0x0069, B:16:0x0076, B:18:0x0089, B:20:0x0092, B:22:0x00a1, B:24:0x00aa), top: B:32:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa A[Catch: all -> 0x00c2, TryCatch #0 {all -> 0x00c2, blocks: (B:3:0x002b, B:5:0x0035, B:7:0x0042, B:12:0x005f, B:14:0x0069, B:16:0x0076, B:18:0x0089, B:20:0x0092, B:22:0x00a1, B:24:0x00aa), top: B:32:0x002b }] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m21642e(@androidx.annotation.Nullable android.util.AttributeSet r9, int r10) {
        /*
            r8 = this;
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a
            android.content.Context r0 = r0.getContext()
            r1 = r9
            int[] r2 = androidx.appcompat.C0042R.styleable.CompoundButton
            r3 = r10
            r4 = 0
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.m21244v(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a
            r12 = r0
            r0 = r12
            r1 = r12
            android.content.Context r1 = r1.getContext()
            int[] r2 = androidx.appcompat.C0042R.styleable.CompoundButton
            r3 = r9
            r4 = r11
            android.content.res.TypedArray r4 = r4.m21248r()
            r5 = r10
            r6 = 0
            androidx.core.view.ViewCompat.m19187l0(r0, r1, r2, r3, r4, r5, r6)
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x00c2
            boolean r0 = r0.m21247s(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x0059
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x00c2
            r2 = 0
            int r0 = r0.m21252n(r1, r2)     // Catch: all -> 0x00c2
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0059
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r1 = r8
            android.widget.CompoundButton r1 = r1.f931a     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r2 = r10
            android.graphics.drawable.Drawable r1 = androidx.appcompat.content.res.AppCompatResources.m22069d(r1, r2)     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00c2, NotFoundException -> 0x00c9
            r0 = 1
            r10 = r0
            goto L_0x005b
        L_0x0059:
            r0 = 0
            r10 = r0
        L_0x005b:
            r0 = r10
            if (r0 != 0) goto L_0x0088
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_android_button     // Catch: all -> 0x00c2
            boolean r0 = r0.m21247s(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x0088
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_android_button     // Catch: all -> 0x00c2
            r2 = 0
            int r0 = r0.m21252n(r1, r2)     // Catch: all -> 0x00c2
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0088
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a     // Catch: all -> 0x00c2
            r1 = r8
            android.widget.CompoundButton r1 = r1.f931a     // Catch: all -> 0x00c2
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00c2
            r2 = r10
            android.graphics.drawable.Drawable r1 = androidx.appcompat.content.res.AppCompatResources.m22069d(r1, r2)     // Catch: all -> 0x00c2
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00c2
        L_0x0088:
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x00c2
            boolean r0 = r0.m21247s(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x00a0
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a     // Catch: all -> 0x00c2
            r1 = r11
            int r2 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x00c2
            android.content.res.ColorStateList r1 = r1.m21263c(r2)     // Catch: all -> 0x00c2
            androidx.core.widget.CompoundButtonCompat.m18911c(r0, r1)     // Catch: all -> 0x00c2
        L_0x00a0:
            r0 = r11
            int r1 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x00c2
            boolean r0 = r0.m21247s(r1)     // Catch: all -> 0x00c2
            if (r0 == 0) goto L_0x00bd
            r0 = r8
            android.widget.CompoundButton r0 = r0.f931a     // Catch: all -> 0x00c2
            r1 = r11
            int r2 = androidx.appcompat.C0042R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x00c2
            r3 = -1
            int r1 = r1.m21255k(r2, r3)     // Catch: all -> 0x00c2
            r2 = 0
            android.graphics.PorterDuff$Mode r1 = androidx.appcompat.widget.DrawableUtils.m21501e(r1, r2)     // Catch: all -> 0x00c2
            androidx.core.widget.CompoundButtonCompat.m18910d(r0, r1)     // Catch: all -> 0x00c2
        L_0x00bd:
            r0 = r11
            r0.m21243w()
            return
        L_0x00c2:
            r9 = move-exception
            r0 = r11
            r0.m21243w()
            r0 = r9
            throw r0
        L_0x00c9:
            r9 = move-exception
            goto L_0x0059
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.m21642e(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m21641f() {
        if (this.f936f) {
            this.f936f = false;
            return;
        }
        this.f936f = true;
        m21646a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m21640g(ColorStateList colorStateList) {
        this.f932b = colorStateList;
        this.f934d = true;
        m21646a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m21639h(@Nullable PorterDuff.Mode mode) {
        this.f933c = mode;
        this.f935e = true;
        m21646a();
    }
}
