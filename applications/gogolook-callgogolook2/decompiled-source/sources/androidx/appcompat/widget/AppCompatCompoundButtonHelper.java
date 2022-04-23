package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.widget.CompoundButtonCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCompoundButtonHelper.class */
public class AppCompatCompoundButtonHelper {
    public ColorStateList mButtonTintList = null;
    public PorterDuff.Mode mButtonTintMode = null;
    public boolean mHasButtonTint = false;
    public boolean mHasButtonTintMode = false;
    public boolean mSkipNextApply;
    public final CompoundButton mView;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatCompoundButtonHelper$DirectSetButtonDrawableInterface.class */
    public interface DirectSetButtonDrawableInterface {
        void setButtonDrawable(Drawable drawable);
    }

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.mView = compoundButton;
    }

    public void applyButtonTint() {
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
        if (buttonDrawable == null) {
            return;
        }
        if (this.mHasButtonTint || this.mHasButtonTintMode) {
            Drawable mutate = DrawableCompat.wrap(buttonDrawable).mutate();
            if (this.mHasButtonTint) {
                DrawableCompat.setTintList(mutate, this.mButtonTintList);
            }
            if (this.mHasButtonTintMode) {
                DrawableCompat.setTintMode(mutate, this.mButtonTintMode);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.mView.getDrawableState());
            }
            this.mView.setButtonDrawable(mutate);
        }
    }

    public int getCompoundPaddingLeft(int i) {
        int i2 = i;
        if (Build.VERSION.SDK_INT < 17) {
            Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(this.mView);
            i2 = i;
            if (buttonDrawable != null) {
                i2 = i + buttonDrawable.getIntrinsicWidth();
            }
        }
        return i2;
    }

    public ColorStateList getSupportButtonTintList() {
        return this.mButtonTintList;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        return this.mButtonTintMode;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0078 A[Catch: all -> 0x00a8, TryCatch #0 {all -> 0x00a8, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x0087, B:24:0x0090), top: B:32:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0090 A[Catch: all -> 0x00a8, TryCatch #0 {all -> 0x00a8, blocks: (B:3:0x0011, B:5:0x001b, B:7:0x0028, B:12:0x0045, B:14:0x004f, B:16:0x005c, B:18:0x006f, B:20:0x0078, B:22:0x0087, B:24:0x0090), top: B:32:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadFromAttributes(android.util.AttributeSet r7, int r8) {
        /*
            r6 = this;
            r0 = r6
            android.widget.CompoundButton r0 = r0.mView
            android.content.Context r0 = r0.getContext()
            r1 = r7
            int[] r2 = androidx.appcompat.C0054R.styleable.CompoundButton
            r3 = r8
            r4 = 0
            android.content.res.TypedArray r0 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r7 = r0
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x00a8
            boolean r0 = r0.hasValue(r1)     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x003f
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonCompat     // Catch: all -> 0x00a8
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: all -> 0x00a8
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003f
            r0 = r6
            android.widget.CompoundButton r0 = r0.mView     // Catch: all -> 0x00a8, NotFoundException -> 0x00af
            r1 = r6
            android.widget.CompoundButton r1 = r1.mView     // Catch: all -> 0x00a8, NotFoundException -> 0x00af
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00a8, NotFoundException -> 0x00af
            r2 = r8
            android.graphics.drawable.Drawable r1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r2)     // Catch: all -> 0x00a8, NotFoundException -> 0x00af
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00a8, NotFoundException -> 0x00af
            r0 = 1
            r8 = r0
            goto L_0x0041
        L_0x003f:
            r0 = 0
            r8 = r0
        L_0x0041:
            r0 = r8
            if (r0 != 0) goto L_0x006e
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_android_button     // Catch: all -> 0x00a8
            boolean r0 = r0.hasValue(r1)     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x006e
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_android_button     // Catch: all -> 0x00a8
            r2 = 0
            int r0 = r0.getResourceId(r1, r2)     // Catch: all -> 0x00a8
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006e
            r0 = r6
            android.widget.CompoundButton r0 = r0.mView     // Catch: all -> 0x00a8
            r1 = r6
            android.widget.CompoundButton r1 = r1.mView     // Catch: all -> 0x00a8
            android.content.Context r1 = r1.getContext()     // Catch: all -> 0x00a8
            r2 = r8
            android.graphics.drawable.Drawable r1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r1, r2)     // Catch: all -> 0x00a8
            r0.setButtonDrawable(r1)     // Catch: all -> 0x00a8
        L_0x006e:
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x00a8
            boolean r0 = r0.hasValue(r1)     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x0086
            r0 = r6
            android.widget.CompoundButton r0 = r0.mView     // Catch: all -> 0x00a8
            r1 = r7
            int r2 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonTint     // Catch: all -> 0x00a8
            android.content.res.ColorStateList r1 = r1.getColorStateList(r2)     // Catch: all -> 0x00a8
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(r0, r1)     // Catch: all -> 0x00a8
        L_0x0086:
            r0 = r7
            int r1 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x00a8
            boolean r0 = r0.hasValue(r1)     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x00a3
            r0 = r6
            android.widget.CompoundButton r0 = r0.mView     // Catch: all -> 0x00a8
            r1 = r7
            int r2 = androidx.appcompat.C0054R.styleable.CompoundButton_buttonTintMode     // Catch: all -> 0x00a8
            r3 = -1
            int r1 = r1.getInt(r2, r3)     // Catch: all -> 0x00a8
            r2 = 0
            android.graphics.PorterDuff$Mode r1 = androidx.appcompat.widget.DrawableUtils.parseTintMode(r1, r2)     // Catch: all -> 0x00a8
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(r0, r1)     // Catch: all -> 0x00a8
        L_0x00a3:
            r0 = r7
            r0.recycle()
            return
        L_0x00a8:
            r9 = move-exception
            r0 = r7
            r0.recycle()
            r0 = r9
            throw r0
        L_0x00af:
            r9 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatCompoundButtonHelper.loadFromAttributes(android.util.AttributeSet, int):void");
    }

    public void onSetButtonDrawable() {
        if (this.mSkipNextApply) {
            this.mSkipNextApply = false;
            return;
        }
        this.mSkipNextApply = true;
        applyButtonTint();
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        this.mButtonTintList = colorStateList;
        this.mHasButtonTint = true;
        applyButtonTint();
    }

    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        this.mButtonTintMode = mode;
        this.mHasButtonTintMode = true;
        applyButtonTint();
    }
}
