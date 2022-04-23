package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.CompoundButtonCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/radiobutton/MaterialRadioButton.class */
public class MaterialRadioButton extends AppCompatRadioButton {

    /* renamed from: k */
    private static final int f10978k = C1027R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: l */
    private static final int[][] f10979l = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @Nullable

    /* renamed from: i */
    private ColorStateList f10980i;

    /* renamed from: j */
    private boolean f10981j;

    public MaterialRadioButton(@NonNull Context context) {
        this(context, null);
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.radioButtonStyle);
    }

    public MaterialRadioButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f10978k), attributeSet, i);
        Context context2 = getContext();
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.MaterialRadioButton, i, f10978k, new int[0]);
        if (h.hasValue(C1027R.styleable.MaterialRadioButton_buttonTint)) {
            CompoundButtonCompat.m18911c(this, MaterialResources.m9394a(context2, h, C1027R.styleable.MaterialRadioButton_buttonTint));
        }
        this.f10981j = h.getBoolean(C1027R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
        h.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f10980i == null) {
            int c = MaterialColors.m10014c(this, C1027R.attr.colorControlActivated);
            int c2 = MaterialColors.m10014c(this, C1027R.attr.colorOnSurface);
            int c3 = MaterialColors.m10014c(this, C1027R.attr.colorSurface);
            int[] iArr = new int[f10979l.length];
            iArr[0] = MaterialColors.m10011f(c3, c, 1.0f);
            iArr[1] = MaterialColors.m10011f(c3, c2, 0.54f);
            iArr[2] = MaterialColors.m10011f(c3, c2, 0.38f);
            iArr[3] = MaterialColors.m10011f(c3, c2, 0.38f);
            this.f10980i = new ColorStateList(f10979l, iArr);
        }
        return this.f10980i;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f10981j && CompoundButtonCompat.m18912b(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f10981j = z;
        if (z) {
            CompoundButtonCompat.m18911c(this, getMaterialThemeColorsTintList());
        } else {
            CompoundButtonCompat.m18911c(this, null);
        }
    }
}
