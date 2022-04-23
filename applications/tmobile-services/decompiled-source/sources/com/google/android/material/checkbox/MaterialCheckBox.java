package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/checkbox/MaterialCheckBox.class */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* renamed from: k */
    private static final int f10361k = C1027R.style.Widget_MaterialComponents_CompoundButton_CheckBox;

    /* renamed from: l */
    private static final int[][] f10362l = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @Nullable

    /* renamed from: i */
    private ColorStateList f10363i;

    /* renamed from: j */
    private boolean f10364j;

    public MaterialCheckBox(Context context) {
        this(context, null);
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.checkboxStyle);
    }

    public MaterialCheckBox(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10361k), attributeSet, i);
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.MaterialCheckBox, i, f10361k, new int[0]);
        if (h.hasValue(C1027R.styleable.MaterialCheckBox_buttonTint)) {
            CompoundButtonCompat.m18911c(this, MaterialResources.m9394a(context2, h, C1027R.styleable.MaterialCheckBox_buttonTint));
        }
        this.f10364j = h.getBoolean(C1027R.styleable.MaterialCheckBox_useMaterialThemeColors, false);
        h.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f10363i == null) {
            int[] iArr = new int[f10362l.length];
            int c = MaterialColors.m10014c(this, C1027R.attr.colorControlActivated);
            int c2 = MaterialColors.m10014c(this, C1027R.attr.colorSurface);
            int c3 = MaterialColors.m10014c(this, C1027R.attr.colorOnSurface);
            iArr[0] = MaterialColors.m10011f(c2, c, 1.0f);
            iArr[1] = MaterialColors.m10011f(c2, c3, 0.54f);
            iArr[2] = MaterialColors.m10011f(c2, c3, 0.38f);
            iArr[3] = MaterialColors.m10011f(c2, c3, 0.38f);
            this.f10363i = new ColorStateList(f10362l, iArr);
        }
        return this.f10363i;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f10364j && CompoundButtonCompat.m18912b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f10364j = z;
        if (z) {
            CompoundButtonCompat.m18911c(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.m18911c(this, null);
        }
    }
}
