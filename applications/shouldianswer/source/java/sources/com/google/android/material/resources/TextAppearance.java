package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import androidx.core.p015a.p016a.C0420f;
import com.google.android.flexbox.FlexItem;
import com.google.android.material.C1284R;
/* loaded from: classes-dex2jar.jar:com/google/android/material/resources/TextAppearance.class */
public class TextAppearance {
    private static final String TAG = "TextAppearance";
    private static final int TYPEFACE_MONOSPACE = 3;
    private static final int TYPEFACE_SANS = 1;
    private static final int TYPEFACE_SERIF = 2;
    private Typeface font;
    public final String fontFamily;
    private final int fontFamilyResourceId;
    private boolean fontResolved = false;
    public final ColorStateList shadowColor;
    public final float shadowDx;
    public final float shadowDy;
    public final float shadowRadius;
    public final boolean textAllCaps;
    public final ColorStateList textColor;
    public final ColorStateList textColorHint;
    public final ColorStateList textColorLink;
    public final float textSize;
    public final int textStyle;
    public final int typeface;

    public TextAppearance(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C1284R.styleable.TextAppearance);
        this.textSize = obtainStyledAttributes.getDimension(C1284R.styleable.TextAppearance_android_textSize, FlexItem.FLEX_GROW_DEFAULT);
        this.textColor = MaterialResources.getColorStateList(context, obtainStyledAttributes, C1284R.styleable.TextAppearance_android_textColor);
        this.textColorHint = MaterialResources.getColorStateList(context, obtainStyledAttributes, C1284R.styleable.TextAppearance_android_textColorHint);
        this.textColorLink = MaterialResources.getColorStateList(context, obtainStyledAttributes, C1284R.styleable.TextAppearance_android_textColorLink);
        this.textStyle = obtainStyledAttributes.getInt(C1284R.styleable.TextAppearance_android_textStyle, 0);
        this.typeface = obtainStyledAttributes.getInt(C1284R.styleable.TextAppearance_android_typeface, 1);
        int indexWithValue = MaterialResources.getIndexWithValue(obtainStyledAttributes, C1284R.styleable.TextAppearance_fontFamily, C1284R.styleable.TextAppearance_android_fontFamily);
        this.fontFamilyResourceId = obtainStyledAttributes.getResourceId(indexWithValue, 0);
        this.fontFamily = obtainStyledAttributes.getString(indexWithValue);
        this.textAllCaps = obtainStyledAttributes.getBoolean(C1284R.styleable.TextAppearance_textAllCaps, false);
        this.shadowColor = MaterialResources.getColorStateList(context, obtainStyledAttributes, C1284R.styleable.TextAppearance_android_shadowColor);
        this.shadowDx = obtainStyledAttributes.getFloat(C1284R.styleable.TextAppearance_android_shadowDx, FlexItem.FLEX_GROW_DEFAULT);
        this.shadowDy = obtainStyledAttributes.getFloat(C1284R.styleable.TextAppearance_android_shadowDy, FlexItem.FLEX_GROW_DEFAULT);
        this.shadowRadius = obtainStyledAttributes.getFloat(C1284R.styleable.TextAppearance_android_shadowRadius, FlexItem.FLEX_GROW_DEFAULT);
        obtainStyledAttributes.recycle();
    }

    public void createFallbackTypeface() {
        if (this.font == null) {
            this.font = Typeface.create(this.fontFamily, this.textStyle);
        }
        if (this.font == null) {
            int i = this.typeface;
            if (i == 1) {
                this.font = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.font = Typeface.SERIF;
            } else if (i != 3) {
                this.font = Typeface.DEFAULT;
            } else {
                this.font = Typeface.MONOSPACE;
            }
            Typeface typeface = this.font;
            if (typeface == null) {
                return;
            }
            this.font = Typeface.create(typeface, this.textStyle);
        }
    }

    public Typeface getFont(Context context) {
        if (this.fontResolved) {
            return this.font;
        }
        if (!context.isRestricted()) {
            try {
                this.font = C0420f.m6702a(context, this.fontFamilyResourceId);
                if (this.font != null) {
                    this.font = Typeface.create(this.font, this.textStyle);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                Log.d(TAG, "Error loading font " + this.fontFamily, e2);
            }
        }
        createFallbackTypeface();
        this.fontResolved = true;
        return this.font;
    }

    public void getFontAsync(Context context, final TextPaint textPaint, final C0420f.AbstractC0421a abstractC0421a) {
        if (this.fontResolved) {
            updateTextPaintMeasureState(textPaint, this.font);
            return;
        }
        createFallbackTypeface();
        if (context.isRestricted()) {
            this.fontResolved = true;
            updateTextPaintMeasureState(textPaint, this.font);
            return;
        }
        try {
            C0420f.m6699a(context, this.fontFamilyResourceId, new C0420f.AbstractC0421a() { // from class: com.google.android.material.resources.TextAppearance.1
                @Override // androidx.core.p015a.p016a.C0420f.AbstractC0421a
                public void onFontRetrievalFailed(int i) {
                    TextAppearance.this.createFallbackTypeface();
                    TextAppearance.this.fontResolved = true;
                    abstractC0421a.onFontRetrievalFailed(i);
                }

                @Override // androidx.core.p015a.p016a.C0420f.AbstractC0421a
                public void onFontRetrieved(Typeface typeface) {
                    TextAppearance textAppearance = TextAppearance.this;
                    textAppearance.font = Typeface.create(typeface, textAppearance.textStyle);
                    TextAppearance.this.updateTextPaintMeasureState(textPaint, typeface);
                    TextAppearance.this.fontResolved = true;
                    abstractC0421a.onFontRetrieved(typeface);
                }
            }, null);
        } catch (Resources.NotFoundException | UnsupportedOperationException e) {
        } catch (Exception e2) {
            Log.d(TAG, "Error loading font " + this.fontFamily, e2);
        }
    }

    public void updateDrawState(Context context, TextPaint textPaint, C0420f.AbstractC0421a abstractC0421a) {
        updateMeasureState(context, textPaint, abstractC0421a);
        ColorStateList colorStateList = this.textColor;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, this.textColor.getDefaultColor()) : -16777216);
        float f = this.shadowRadius;
        float f2 = this.shadowDx;
        float f3 = this.shadowDy;
        ColorStateList colorStateList2 = this.shadowColor;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, this.shadowColor.getDefaultColor()) : 0);
    }

    public void updateMeasureState(Context context, TextPaint textPaint, C0420f.AbstractC0421a abstractC0421a) {
        if (TextAppearanceConfig.shouldLoadFontSynchronously()) {
            updateTextPaintMeasureState(textPaint, getFont(context));
            return;
        }
        getFontAsync(context, textPaint, abstractC0421a);
        if (this.fontResolved) {
            return;
        }
        updateTextPaintMeasureState(textPaint, this.font);
    }

    public void updateTextPaintMeasureState(TextPaint textPaint, Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.textStyle;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.textSize);
    }
}
