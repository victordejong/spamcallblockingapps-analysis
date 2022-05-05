package com.google.android.material.switchmaterial;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
/* loaded from: classes-dex2jar.jar:com/google/android/material/switchmaterial/SwitchMaterial.class */
public class SwitchMaterial extends SwitchCompat {

    /* renamed from: b0 */
    private static final int f11314b0 = C1027R.style.Widget_MaterialComponents_CompoundButton_Switch;

    /* renamed from: c0 */
    private static final int[][] f11315c0 = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    @NonNull

    /* renamed from: U */
    private final ElevationOverlayProvider f11316U;
    @Nullable

    /* renamed from: V */
    private ColorStateList f11317V;
    @Nullable

    /* renamed from: W */
    private ColorStateList f11318W;

    /* renamed from: a0 */
    private boolean f11319a0;

    public SwitchMaterial(@NonNull Context context) {
        this(context, null);
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1027R.attr.switchStyle);
    }

    public SwitchMaterial(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.m8698c(context, attributeSet, i, f11314b0), attributeSet, i);
        Context context2 = getContext();
        this.f11316U = new ElevationOverlayProvider(context2);
        TypedArray h = ThemeEnforcement.m9445h(context2, attributeSet, C1027R.styleable.SwitchMaterial, i, f11314b0, new int[0]);
        this.f11319a0 = h.getBoolean(C1027R.styleable.SwitchMaterial_useMaterialThemeColors, false);
        h.recycle();
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() {
        if (this.f11317V == null) {
            int c = MaterialColors.m10014c(this, C1027R.attr.colorSurface);
            int c2 = MaterialColors.m10014c(this, C1027R.attr.colorControlActivated);
            float dimension = getResources().getDimension(C1027R.dimen.mtrl_switch_thumb_elevation);
            float f = dimension;
            if (this.f11316U.m9792d()) {
                f = dimension + ViewUtils.m9429g(this);
            }
            int c3 = this.f11316U.m9793c(c, f);
            int[] iArr = new int[f11315c0.length];
            iArr[0] = MaterialColors.m10011f(c, c2, 1.0f);
            iArr[1] = c3;
            iArr[2] = MaterialColors.m10011f(c, c2, 0.38f);
            iArr[3] = c3;
            this.f11317V = new ColorStateList(f11315c0, iArr);
        }
        return this.f11317V;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.f11318W == null) {
            int[] iArr = new int[f11315c0.length];
            int c = MaterialColors.m10014c(this, C1027R.attr.colorSurface);
            int c2 = MaterialColors.m10014c(this, C1027R.attr.colorControlActivated);
            int c3 = MaterialColors.m10014c(this, C1027R.attr.colorOnSurface);
            iArr[0] = MaterialColors.m10011f(c, c2, 0.54f);
            iArr[1] = MaterialColors.m10011f(c, c3, 0.32f);
            iArr[2] = MaterialColors.m10011f(c, c2, 0.12f);
            iArr[3] = MaterialColors.m10011f(c, c3, 0.12f);
            this.f11318W = new ColorStateList(f11315c0, iArr);
        }
        return this.f11318W;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f11319a0 && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.f11319a0 && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f11319a0 = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
            return;
        }
        setThumbTintList(null);
        setTrackTintList(null);
    }
}
