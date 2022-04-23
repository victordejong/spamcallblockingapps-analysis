package com.rey.material.util;

import android.annotation.SuppressLint;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import com.rey.material.C1686R;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/rey/material/util/ViewUtil.class */
public class ViewUtil {
    public static final long FRAME_DURATION = 16;
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);

    public static void applyFont(TextView textView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, new int[]{C1686R.C1687attr.tv_fontFamily}, i, i2);
        String string = obtainStyledAttributes.getString(0);
        if (string != null) {
            textView.setTypeface(TypefaceUtil.load(textView.getContext(), string, 0));
        }
        obtainStyledAttributes.recycle();
    }

    public static void applyStyle(View view, int i) {
        applyStyle(view, (AttributeSet) null, 0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x0798  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void applyStyle(android.view.View r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 3689
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.util.ViewUtil.applyStyle(android.view.View, android.util.AttributeSet, int, int):void");
    }

    private static void applyStyle(AutoCompleteTextView autoCompleteTextView, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = autoCompleteTextView.getContext().obtainStyledAttributes(attributeSet, C1686R.styleable.AutoCompleteTextView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == C1686R.styleable.AutoCompleteTextView_android_completionHint) {
                autoCompleteTextView.setCompletionHint(obtainStyledAttributes.getString(index));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_completionThreshold) {
                autoCompleteTextView.setThreshold(obtainStyledAttributes.getInteger(index, 0));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_dropDownAnchor) {
                autoCompleteTextView.setDropDownAnchor(obtainStyledAttributes.getResourceId(index, 0));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_dropDownHeight) {
                autoCompleteTextView.setDropDownHeight(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_dropDownWidth) {
                autoCompleteTextView.setDropDownWidth(obtainStyledAttributes.getLayoutDimension(index, -2));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_dropDownHorizontalOffset) {
                autoCompleteTextView.setDropDownHorizontalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_dropDownVerticalOffset) {
                autoCompleteTextView.setDropDownVerticalOffset(obtainStyledAttributes.getDimensionPixelSize(index, 0));
            } else if (index == C1686R.styleable.AutoCompleteTextView_android_popupBackground) {
                autoCompleteTextView.setDropDownBackgroundDrawable(obtainStyledAttributes.getDrawable(index));
            }
        }
        obtainStyledAttributes.recycle();
    }

    private static void applyStyle(TextView textView, AttributeSet attributeSet, int i, int i2) {
        int i3;
        float f;
        int i4;
        int i5;
        String str;
        float f2;
        float f3;
        Typeface typeface;
        TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(attributeSet, C1686R.styleable.TextViewAppearance, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.TextViewAppearance_android_textAppearance, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = resourceId != 0 ? textView.getContext().obtainStyledAttributes(resourceId, C1686R.styleable.TextAppearance) : null;
        if (obtainStyledAttributes2 != null) {
            int indexCount = obtainStyledAttributes2.getIndexCount();
            i4 = 0;
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
            str = null;
            i3 = -1;
            i5 = -1;
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = obtainStyledAttributes2.getIndex(i6);
                if (index == C1686R.styleable.TextAppearance_android_textColorHighlight) {
                    textView.setHighlightColor(obtainStyledAttributes2.getColor(index, 0));
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_textColor) {
                    textView.setTextColor(obtainStyledAttributes2.getColorStateList(index));
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_textColorHint) {
                    textView.setHintTextColor(obtainStyledAttributes2.getColorStateList(index));
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_textColorLink) {
                    textView.setLinkTextColor(obtainStyledAttributes2.getColorStateList(index));
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_textSize) {
                    textView.setTextSize(0, obtainStyledAttributes2.getDimensionPixelSize(index, 0));
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_typeface) {
                    i3 = obtainStyledAttributes2.getInt(index, -1);
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_fontFamily) {
                    str = obtainStyledAttributes2.getString(index);
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_tv_fontFamily) {
                    str = obtainStyledAttributes2.getString(index);
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_textStyle) {
                    i5 = obtainStyledAttributes2.getInt(index, -1);
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                } else if (index == C1686R.styleable.TextAppearance_android_textAllCaps) {
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 14) {
                        textView.setAllCaps(obtainStyledAttributes2.getBoolean(index, false));
                        i4 = i4;
                        f = f;
                        f2 = f2;
                        f3 = f3;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else if (index == C1686R.styleable.TextAppearance_android_shadowColor) {
                    i4 = obtainStyledAttributes2.getInt(index, 0);
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_shadowDx) {
                    f = obtainStyledAttributes2.getFloat(index, 0.0f);
                    i4 = i4;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_shadowDy) {
                    f2 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    i4 = i4;
                    f = f;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_shadowRadius) {
                    f3 = obtainStyledAttributes2.getFloat(index, 0.0f);
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                } else if (index == C1686R.styleable.TextAppearance_android_elegantTextHeight) {
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setElegantTextHeight(obtainStyledAttributes2.getBoolean(index, false));
                        i4 = i4;
                        f = f;
                        f2 = f2;
                        f3 = f3;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else if (index == C1686R.styleable.TextAppearance_android_letterSpacing) {
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (Build.VERSION.SDK_INT >= 21) {
                        textView.setLetterSpacing(obtainStyledAttributes2.getFloat(index, 0.0f));
                        i4 = i4;
                        f = f;
                        f2 = f2;
                        f3 = f3;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                    }
                } else {
                    i4 = i4;
                    f = f;
                    f2 = f2;
                    f3 = f3;
                    str = str;
                    i3 = i3;
                    i5 = i5;
                    if (index == C1686R.styleable.TextAppearance_android_fontFeatureSettings) {
                        i4 = i4;
                        f = f;
                        f2 = f2;
                        f3 = f3;
                        str = str;
                        i3 = i3;
                        i5 = i5;
                        if (Build.VERSION.SDK_INT >= 21) {
                            textView.setFontFeatureSettings(obtainStyledAttributes2.getString(index));
                            i5 = i5;
                            i3 = i3;
                            str = str;
                            f3 = f3;
                            f2 = f2;
                            f = f;
                            i4 = i4;
                        }
                    }
                }
            }
            obtainStyledAttributes2.recycle();
        } else {
            i4 = 0;
            f = 0.0f;
            f2 = 0.0f;
            f3 = 0.0f;
            str = null;
            i3 = -1;
            i5 = -1;
        }
        TypedArray obtainStyledAttributes3 = textView.getContext().obtainStyledAttributes(attributeSet, C1686R.styleable.TextView, i, i2);
        int indexCount2 = obtainStyledAttributes3.getIndexCount();
        boolean z = false;
        Drawable drawable = null;
        Drawable drawable2 = null;
        Drawable drawable3 = null;
        Drawable drawable4 = null;
        Drawable drawable5 = null;
        Drawable drawable6 = null;
        boolean z2 = false;
        for (int i7 = 0; i7 < indexCount2; i7++) {
            int index2 = obtainStyledAttributes3.getIndex(i7);
            if (index2 == C1686R.styleable.TextView_android_drawableLeft) {
                drawable2 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == C1686R.styleable.TextView_android_drawableTop) {
                drawable3 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == C1686R.styleable.TextView_android_drawableRight) {
                drawable5 = obtainStyledAttributes3.getDrawable(index2);
            } else if (index2 == C1686R.styleable.TextView_android_drawableBottom) {
                drawable6 = obtainStyledAttributes3.getDrawable(index2);
            } else {
                if (index2 == C1686R.styleable.TextView_android_drawableStart) {
                    drawable = obtainStyledAttributes3.getDrawable(index2);
                } else if (index2 == C1686R.styleable.TextView_android_drawableEnd) {
                    drawable4 = obtainStyledAttributes3.getDrawable(index2);
                } else {
                    if (index2 == C1686R.styleable.TextView_android_drawablePadding) {
                        textView.setCompoundDrawablePadding(obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                    } else if (index2 == C1686R.styleable.TextView_android_maxLines) {
                        textView.setMaxLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_maxHeight) {
                        textView.setMaxHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_lines) {
                        textView.setLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_height) {
                        textView.setHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_minLines) {
                        textView.setMinLines(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_minHeight) {
                        textView.setMinHeight(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_maxEms) {
                        textView.setMaxEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_maxWidth) {
                        textView.setMaxWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_ems) {
                        textView.setEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_width) {
                        textView.setWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_minEms) {
                        textView.setMinEms(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_minWidth) {
                        textView.setMinWidth(obtainStyledAttributes3.getDimensionPixelSize(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_gravity) {
                        textView.setGravity(obtainStyledAttributes3.getInt(index2, -1));
                    } else if (index2 == C1686R.styleable.TextView_android_scrollHorizontally) {
                        textView.setHorizontallyScrolling(obtainStyledAttributes3.getBoolean(index2, false));
                    } else if (index2 == C1686R.styleable.TextView_android_includeFontPadding) {
                        textView.setIncludeFontPadding(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == C1686R.styleable.TextView_android_cursorVisible) {
                        textView.setCursorVisible(obtainStyledAttributes3.getBoolean(index2, true));
                    } else if (index2 == C1686R.styleable.TextView_android_textScaleX) {
                        textView.setTextScaleX(obtainStyledAttributes3.getFloat(index2, 1.0f));
                    } else if (index2 == C1686R.styleable.TextView_android_shadowColor) {
                        i4 = obtainStyledAttributes3.getInt(index2, 0);
                    } else {
                        if (index2 == C1686R.styleable.TextView_android_shadowDx) {
                            f = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == C1686R.styleable.TextView_android_shadowDy) {
                            f2 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == C1686R.styleable.TextView_android_shadowRadius) {
                            f3 = obtainStyledAttributes3.getFloat(index2, 0.0f);
                        } else if (index2 == C1686R.styleable.TextView_android_textColorHighlight) {
                            textView.setHighlightColor(obtainStyledAttributes3.getColor(index2, 0));
                        } else if (index2 == C1686R.styleable.TextView_android_textColor) {
                            textView.setTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == C1686R.styleable.TextView_android_textColorHint) {
                            textView.setHintTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == C1686R.styleable.TextView_android_textColorLink) {
                            textView.setLinkTextColor(obtainStyledAttributes3.getColorStateList(index2));
                        } else if (index2 == C1686R.styleable.TextView_android_textSize) {
                            textView.setTextSize(0, obtainStyledAttributes3.getDimensionPixelSize(index2, 0));
                        } else if (index2 == C1686R.styleable.TextView_android_typeface) {
                            i3 = obtainStyledAttributes3.getInt(index2, -1);
                        } else if (index2 == C1686R.styleable.TextView_android_textStyle) {
                            i5 = obtainStyledAttributes3.getInt(index2, -1);
                        } else if (index2 == C1686R.styleable.TextView_android_fontFamily) {
                            str = obtainStyledAttributes3.getString(index2);
                        } else if (index2 == C1686R.styleable.TextView_tv_fontFamily) {
                            str = obtainStyledAttributes3.getString(index2);
                        } else if (index2 != C1686R.styleable.TextView_android_textAllCaps) {
                            if (index2 == C1686R.styleable.TextView_android_elegantTextHeight) {
                                i4 = i4;
                                str = str;
                                i3 = i3;
                                i5 = i5;
                                if (Build.VERSION.SDK_INT >= 21) {
                                    textView.setElegantTextHeight(obtainStyledAttributes3.getBoolean(index2, false));
                                    i4 = i4;
                                    str = str;
                                    i3 = i3;
                                    i5 = i5;
                                }
                            } else {
                                if (index2 == C1686R.styleable.TextView_android_letterSpacing) {
                                    i4 = i4;
                                    str = str;
                                    i3 = i3;
                                    i5 = i5;
                                    if (Build.VERSION.SDK_INT >= 21) {
                                        textView.setLetterSpacing(obtainStyledAttributes3.getFloat(index2, 0.0f));
                                        f3 = f3;
                                        z = z;
                                        drawable = drawable;
                                        i4 = i4;
                                        f = f;
                                        f2 = f2;
                                        drawable2 = drawable2;
                                        drawable3 = drawable3;
                                        drawable4 = drawable4;
                                        drawable5 = drawable5;
                                        drawable6 = drawable6;
                                        str = str;
                                        z2 = z2;
                                        i3 = i3;
                                        i5 = i5;
                                    }
                                } else {
                                    f3 = f3;
                                    z = z;
                                    drawable = drawable;
                                    i4 = i4;
                                    f = f;
                                    f2 = f2;
                                    drawable2 = drawable2;
                                    drawable3 = drawable3;
                                    drawable4 = drawable4;
                                    drawable5 = drawable5;
                                    drawable6 = drawable6;
                                    str = str;
                                    z2 = z2;
                                    i3 = i3;
                                    i5 = i5;
                                    if (index2 == C1686R.styleable.TextView_android_fontFeatureSettings) {
                                        f3 = f3;
                                        z = z;
                                        drawable = drawable;
                                        i4 = i4;
                                        f = f;
                                        f2 = f2;
                                        drawable2 = drawable2;
                                        drawable3 = drawable3;
                                        drawable4 = drawable4;
                                        drawable5 = drawable5;
                                        drawable6 = drawable6;
                                        str = str;
                                        z2 = z2;
                                        i3 = i3;
                                        i5 = i5;
                                        if (Build.VERSION.SDK_INT >= 21) {
                                            textView.setFontFeatureSettings(obtainStyledAttributes3.getString(index2));
                                            i5 = i5;
                                            i3 = i3;
                                            z2 = z2;
                                            str = str;
                                            drawable6 = drawable6;
                                            drawable5 = drawable5;
                                            drawable4 = drawable4;
                                            drawable3 = drawable3;
                                            drawable2 = drawable2;
                                            f2 = f2;
                                            f = f;
                                            i4 = i4;
                                            drawable = drawable;
                                            z = z;
                                            f3 = f3;
                                        }
                                    }
                                }
                            }
                            f3 = f3;
                            z = z;
                            drawable = drawable;
                            f = f;
                            f2 = f2;
                            drawable2 = drawable2;
                            drawable3 = drawable3;
                            drawable4 = drawable4;
                            drawable5 = drawable5;
                            drawable6 = drawable6;
                            z2 = z2;
                        } else if (Build.VERSION.SDK_INT >= 14) {
                            textView.setAllCaps(obtainStyledAttributes3.getBoolean(index2, false));
                        }
                        z = z;
                        drawable = drawable;
                        i4 = i4;
                        drawable2 = drawable2;
                        drawable3 = drawable3;
                        drawable4 = drawable4;
                        drawable5 = drawable5;
                        drawable6 = drawable6;
                        str = str;
                        z2 = z2;
                        i3 = i3;
                        i5 = i5;
                    }
                    f3 = f3;
                    z = z;
                    drawable = drawable;
                    f = f;
                    f2 = f2;
                    drawable2 = drawable2;
                    drawable3 = drawable3;
                    drawable4 = drawable4;
                    drawable5 = drawable5;
                    drawable6 = drawable6;
                    z2 = z2;
                }
                z2 = true;
                f3 = f3;
                z = z;
                i4 = i4;
                f = f;
                f2 = f2;
                drawable2 = drawable2;
                drawable3 = drawable3;
                drawable5 = drawable5;
                drawable6 = drawable6;
                str = str;
                i3 = i3;
                i5 = i5;
            }
            z = true;
            f3 = f3;
            drawable = drawable;
            i4 = i4;
            f = f;
            f2 = f2;
            drawable4 = drawable4;
            str = str;
            z2 = z2;
            i3 = i3;
            i5 = i5;
        }
        obtainStyledAttributes3.recycle();
        if (i4 != 0) {
            textView.setShadowLayer(f3, f, f2, i4);
        }
        if (z) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            if (drawable != null) {
                compoundDrawables[0] = drawable;
            } else if (drawable2 != null) {
                compoundDrawables[0] = drawable2;
            }
            if (drawable3 != null) {
                compoundDrawables[1] = drawable3;
            }
            if (drawable4 != null) {
                compoundDrawables[2] = drawable4;
            } else if (drawable5 != null) {
                compoundDrawables[2] = drawable5;
            }
            if (drawable6 != null) {
                compoundDrawables[3] = drawable6;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
        }
        if (z2 && Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawable != null) {
                compoundDrawablesRelative[0] = drawable;
            }
            if (drawable4 != null) {
                compoundDrawablesRelative[2] = drawable4;
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(compoundDrawablesRelative[0], compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
        }
        if (str != null) {
            typeface = TypefaceUtil.load(textView.getContext(), str, i5);
            if (typeface != null) {
                textView.setTypeface(typeface);
            }
        } else {
            typeface = null;
        }
        if (typeface != null) {
            switch (i3) {
                case 1:
                    typeface = Typeface.SANS_SERIF;
                    break;
                case 2:
                    typeface = Typeface.SERIF;
                    break;
                case 3:
                    typeface = Typeface.MONOSPACE;
                    break;
            }
            textView.setTypeface(typeface, i5);
        }
        if (textView instanceof AutoCompleteTextView) {
            applyStyle((AutoCompleteTextView) textView, attributeSet, i, i2);
        }
    }

    public static void applyTextAppearance(TextView textView, int i) {
        int i2;
        float f;
        float f2;
        String str;
        int i3;
        Typeface typeface;
        if (i != 0) {
            TypedArray obtainStyledAttributes = textView.getContext().obtainStyledAttributes(i, C1686R.styleable.TextAppearance);
            float f3 = 0.0f;
            int i4 = 0;
            if (obtainStyledAttributes != null) {
                int indexCount = obtainStyledAttributes.getIndexCount();
                i4 = 0;
                str = null;
                f3 = 0.0f;
                f2 = 0.0f;
                f = 0.0f;
                i2 = -1;
                i3 = -1;
                for (int i5 = 0; i5 < indexCount; i5++) {
                    int index = obtainStyledAttributes.getIndex(i5);
                    if (index == C1686R.styleable.TextAppearance_android_textColorHighlight) {
                        textView.setHighlightColor(obtainStyledAttributes.getColor(index, 0));
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textColor) {
                        textView.setTextColor(obtainStyledAttributes.getColorStateList(index));
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textColorHint) {
                        textView.setHintTextColor(obtainStyledAttributes.getColorStateList(index));
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textColorLink) {
                        textView.setLinkTextColor(obtainStyledAttributes.getColorStateList(index));
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textSize) {
                        textView.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(index, 0));
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_typeface) {
                        i3 = obtainStyledAttributes.getInt(index, -1);
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                    } else if (index == C1686R.styleable.TextAppearance_android_fontFamily) {
                        str = obtainStyledAttributes.getString(index);
                        i4 = i4;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_tv_fontFamily) {
                        str = obtainStyledAttributes.getString(index);
                        i4 = i4;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textStyle) {
                        i2 = obtainStyledAttributes.getInt(index, -1);
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_textAllCaps) {
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                        if (Build.VERSION.SDK_INT >= 14) {
                            textView.setAllCaps(obtainStyledAttributes.getBoolean(index, false));
                            i4 = i4;
                            str = str;
                            f3 = f3;
                            f2 = f2;
                            f = f;
                            i2 = i2;
                            i3 = i3;
                        }
                    } else if (index == C1686R.styleable.TextAppearance_android_shadowColor) {
                        i4 = obtainStyledAttributes.getInt(index, 0);
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_shadowDx) {
                        f3 = obtainStyledAttributes.getFloat(index, 0.0f);
                        i4 = i4;
                        str = str;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_shadowDy) {
                        f2 = obtainStyledAttributes.getFloat(index, 0.0f);
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_shadowRadius) {
                        f = obtainStyledAttributes.getFloat(index, 0.0f);
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        i2 = i2;
                        i3 = i3;
                    } else if (index == C1686R.styleable.TextAppearance_android_elegantTextHeight) {
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                        if (Build.VERSION.SDK_INT >= 21) {
                            textView.setElegantTextHeight(obtainStyledAttributes.getBoolean(index, false));
                            i4 = i4;
                            str = str;
                            f3 = f3;
                            f2 = f2;
                            f = f;
                            i2 = i2;
                            i3 = i3;
                        }
                    } else if (index == C1686R.styleable.TextAppearance_android_letterSpacing) {
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                        if (Build.VERSION.SDK_INT >= 21) {
                            textView.setLetterSpacing(obtainStyledAttributes.getFloat(index, 0.0f));
                            i4 = i4;
                            str = str;
                            f3 = f3;
                            f2 = f2;
                            f = f;
                            i2 = i2;
                            i3 = i3;
                        }
                    } else {
                        i4 = i4;
                        str = str;
                        f3 = f3;
                        f2 = f2;
                        f = f;
                        i2 = i2;
                        i3 = i3;
                        if (index == C1686R.styleable.TextAppearance_android_fontFeatureSettings) {
                            i4 = i4;
                            str = str;
                            f3 = f3;
                            f2 = f2;
                            f = f;
                            i2 = i2;
                            i3 = i3;
                            if (Build.VERSION.SDK_INT >= 21) {
                                textView.setFontFeatureSettings(obtainStyledAttributes.getString(index));
                                i3 = i3;
                                i2 = i2;
                                f = f;
                                f2 = f2;
                                f3 = f3;
                                str = str;
                                i4 = i4;
                            }
                        }
                    }
                }
                obtainStyledAttributes.recycle();
            } else {
                str = null;
                f2 = 0.0f;
                f = 0.0f;
                i2 = -1;
                i3 = -1;
            }
            if (i4 != 0) {
                textView.setShadowLayer(f, f3, f2, i4);
            }
            if (str != null) {
                typeface = TypefaceUtil.load(textView.getContext(), str, i2);
                if (typeface != null) {
                    textView.setTypeface(typeface);
                }
            } else {
                typeface = null;
            }
            if (typeface != null) {
                switch (i3) {
                    case 1:
                        typeface = Typeface.SANS_SERIF;
                        break;
                    case 2:
                        typeface = Typeface.SERIF;
                        break;
                    case 3:
                        typeface = Typeface.MONOSPACE;
                        break;
                }
                textView.setTypeface(typeface, i2);
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static int generateViewId() {
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            i = sNextGeneratedId.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!sNextGeneratedId.compareAndSet(i, i2));
        return i;
    }

    public static boolean hasState(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static void setBackground(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.setBackground(drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }
}
