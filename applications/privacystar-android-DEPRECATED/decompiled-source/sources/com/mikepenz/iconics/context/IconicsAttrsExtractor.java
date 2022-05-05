package com.mikepenz.iconics.context;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.StyleableRes;
import android.text.TextUtils;
import com.mikepenz.iconics.IconicsDrawable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsAttrsExtractor.class */
public class IconicsAttrsExtractor {
    private static final int DEF_COLOR = Integer.MIN_VALUE;
    private static final int DEF_SIZE = -1;
    @StyleableRes
    private int mBackgroundColorId;
    @StyleableRes
    private int mBackgroundContourColorId;
    @StyleableRes
    private int mBackgroundContourWidthId;
    @StyleableRes
    private int mColorsId;
    @NonNull
    private final Context mContext;
    @StyleableRes
    private int mContourColorId;
    @StyleableRes
    private int mContourWidthId;
    @StyleableRes
    private int mCornerRadiusId;
    @StyleableRes
    private int mIconId;
    @StyleableRes
    private int mOffsetXId;
    @StyleableRes
    private int mOffsetYId;
    @StyleableRes
    private int mPaddingId;
    @StyleableRes
    private int mSizeId;
    @NonNull
    private final TypedArray mTypedArray;

    public IconicsAttrsExtractor(@NonNull Context context, @NonNull TypedArray typedArray) {
        this.mContext = context;
        this.mTypedArray = typedArray;
    }

    @Nullable
    private static IconicsDrawable copyIfCan(@Nullable IconicsDrawable iconicsDrawable) {
        if (iconicsDrawable != null) {
            return iconicsDrawable.clone();
        }
        return null;
    }

    @NonNull
    private static IconicsDrawable createIfNeeds(@Nullable IconicsDrawable iconicsDrawable, Context context) {
        IconicsDrawable iconicsDrawable2 = iconicsDrawable;
        if (iconicsDrawable == null) {
            iconicsDrawable2 = new IconicsDrawable(context);
        }
        return iconicsDrawable2;
    }

    private IconicsDrawable extract(@Nullable IconicsDrawable iconicsDrawable, boolean z, boolean z2) {
        IconicsDrawable copyIfCan = copyIfCan(iconicsDrawable);
        String string = this.mTypedArray.getString(this.mIconId);
        IconicsDrawable iconicsDrawable2 = copyIfCan;
        if (!TextUtils.isEmpty(string)) {
            iconicsDrawable2 = createIfNeeds(copyIfCan, this.mContext).icon(string);
        }
        ColorStateList colorStateList = this.mTypedArray.getColorStateList(this.mColorsId);
        IconicsDrawable iconicsDrawable3 = iconicsDrawable2;
        if (colorStateList != null) {
            iconicsDrawable3 = createIfNeeds(iconicsDrawable2, this.mContext).color(colorStateList);
        }
        int dimensionPixelSize = this.mTypedArray.getDimensionPixelSize(this.mSizeId, -1);
        IconicsDrawable iconicsDrawable4 = iconicsDrawable3;
        if (dimensionPixelSize != -1) {
            iconicsDrawable4 = createIfNeeds(iconicsDrawable3, this.mContext).sizePx(dimensionPixelSize);
        }
        int dimensionPixelSize2 = this.mTypedArray.getDimensionPixelSize(this.mPaddingId, -1);
        IconicsDrawable iconicsDrawable5 = iconicsDrawable4;
        if (dimensionPixelSize2 != -1) {
            iconicsDrawable5 = createIfNeeds(iconicsDrawable4, this.mContext).paddingPx(dimensionPixelSize2);
        }
        int color = this.mTypedArray.getColor(this.mContourColorId, Integer.MIN_VALUE);
        IconicsDrawable iconicsDrawable6 = iconicsDrawable5;
        if (color != Integer.MIN_VALUE) {
            iconicsDrawable6 = createIfNeeds(iconicsDrawable5, this.mContext).contourColor(color);
        }
        int dimensionPixelSize3 = this.mTypedArray.getDimensionPixelSize(this.mContourWidthId, -1);
        IconicsDrawable iconicsDrawable7 = iconicsDrawable6;
        if (dimensionPixelSize3 != -1) {
            iconicsDrawable7 = createIfNeeds(iconicsDrawable6, this.mContext).contourWidthPx(dimensionPixelSize3);
        }
        int color2 = this.mTypedArray.getColor(this.mBackgroundColorId, Integer.MIN_VALUE);
        IconicsDrawable iconicsDrawable8 = iconicsDrawable7;
        if (color2 != Integer.MIN_VALUE) {
            iconicsDrawable8 = createIfNeeds(iconicsDrawable7, this.mContext).backgroundColor(color2);
        }
        int dimensionPixelSize4 = this.mTypedArray.getDimensionPixelSize(this.mCornerRadiusId, -1);
        IconicsDrawable iconicsDrawable9 = iconicsDrawable8;
        if (dimensionPixelSize4 != -1) {
            iconicsDrawable9 = createIfNeeds(iconicsDrawable8, this.mContext).roundedCornersPx(dimensionPixelSize4);
        }
        int color3 = this.mTypedArray.getColor(this.mBackgroundContourColorId, Integer.MIN_VALUE);
        IconicsDrawable iconicsDrawable10 = iconicsDrawable9;
        if (color3 != Integer.MIN_VALUE) {
            iconicsDrawable10 = createIfNeeds(iconicsDrawable9, this.mContext).backgroundContourColor(color3);
        }
        int dimensionPixelSize5 = this.mTypedArray.getDimensionPixelSize(this.mBackgroundContourWidthId, -1);
        IconicsDrawable iconicsDrawable11 = iconicsDrawable10;
        if (dimensionPixelSize5 != -1) {
            iconicsDrawable11 = createIfNeeds(iconicsDrawable10, this.mContext).backgroundContourWidthPx(dimensionPixelSize5);
        }
        IconicsDrawable iconicsDrawable12 = iconicsDrawable11;
        if (z) {
            int dimensionPixelSize6 = this.mTypedArray.getDimensionPixelSize(this.mOffsetYId, -1);
            IconicsDrawable iconicsDrawable13 = iconicsDrawable11;
            if (dimensionPixelSize6 != -1) {
                iconicsDrawable13 = createIfNeeds(iconicsDrawable11, this.mContext).iconOffsetYPx(dimensionPixelSize6);
            }
            int dimensionPixelSize7 = this.mTypedArray.getDimensionPixelSize(this.mOffsetXId, -1);
            iconicsDrawable12 = iconicsDrawable13;
            if (dimensionPixelSize7 != -1) {
                iconicsDrawable12 = createIfNeeds(iconicsDrawable13, this.mContext).iconOffsetXPx(dimensionPixelSize7);
            }
        }
        IconicsDrawable iconicsDrawable14 = iconicsDrawable12;
        if (z2) {
            iconicsDrawable14 = createIfNeeds(iconicsDrawable12, this.mContext);
        }
        return iconicsDrawable14;
    }

    public IconicsAttrsExtractor backgroundColorId(@StyleableRes int i) {
        this.mBackgroundColorId = i;
        return this;
    }

    public IconicsAttrsExtractor backgroundContourColorId(@StyleableRes int i) {
        this.mBackgroundContourColorId = i;
        return this;
    }

    public IconicsAttrsExtractor backgroundContourWidthId(@StyleableRes int i) {
        this.mBackgroundContourWidthId = i;
        return this;
    }

    public IconicsAttrsExtractor colorsId(@StyleableRes int i) {
        this.mColorsId = i;
        return this;
    }

    public IconicsAttrsExtractor contourColorId(@StyleableRes int i) {
        this.mContourColorId = i;
        return this;
    }

    public IconicsAttrsExtractor contourWidthId(@StyleableRes int i) {
        this.mContourWidthId = i;
        return this;
    }

    public IconicsAttrsExtractor cornerRadiusId(@StyleableRes int i) {
        this.mCornerRadiusId = i;
        return this;
    }

    @Nullable
    public IconicsDrawable extract() {
        return extract(null, false, false);
    }

    @Nullable
    public IconicsDrawable extract(@Nullable IconicsDrawable iconicsDrawable) {
        return extract(iconicsDrawable, false, false);
    }

    @NonNull
    public IconicsDrawable extractNonNull() {
        return extract(null, false, true);
    }

    @Nullable
    public IconicsDrawable extractWithOffsets() {
        return extract(null, true, false);
    }

    public IconicsAttrsExtractor iconId(@StyleableRes int i) {
        this.mIconId = i;
        return this;
    }

    public IconicsAttrsExtractor offsetXId(@StyleableRes int i) {
        this.mOffsetXId = i;
        return this;
    }

    public IconicsAttrsExtractor offsetYId(@StyleableRes int i) {
        this.mOffsetYId = i;
        return this;
    }

    public IconicsAttrsExtractor paddingId(@StyleableRes int i) {
        this.mPaddingId = i;
        return this;
    }

    public IconicsAttrsExtractor sizeId(@StyleableRes int i) {
        this.mSizeId = i;
        return this;
    }
}
