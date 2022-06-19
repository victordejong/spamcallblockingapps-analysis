package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.C0051a;
import androidx.appcompat.widget.C0311as;
import androidx.core.p019c.C0463a;
import androidx.core.p021e.C0487e;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0552u;
import com.google.android.flexbox.FlexItem;
import com.google.android.material.animation.AnimationUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/CollapsingTextHelper.class */
public final class CollapsingTextHelper {
    private static final boolean DEBUG_DRAW = false;
    private static final Paint DEBUG_DRAW_PAINT;
    private static final boolean USE_SCALING_TEXTURE;
    private boolean boundsChanged;
    private float collapsedDrawX;
    private float collapsedDrawY;
    private int collapsedShadowColor;
    private float collapsedShadowDx;
    private float collapsedShadowDy;
    private float collapsedShadowRadius;
    private ColorStateList collapsedTextColor;
    private Typeface collapsedTypeface;
    private float currentDrawX;
    private float currentDrawY;
    private float currentTextSize;
    private Typeface currentTypeface;
    private boolean drawTitle;
    private float expandedDrawX;
    private float expandedDrawY;
    private float expandedFraction;
    private int expandedShadowColor;
    private float expandedShadowDx;
    private float expandedShadowDy;
    private float expandedShadowRadius;
    private ColorStateList expandedTextColor;
    private Bitmap expandedTitleTexture;
    private Typeface expandedTypeface;
    private boolean isRtl;
    private TimeInterpolator positionInterpolator;
    private float scale;
    private int[] state;
    private CharSequence text;
    private TimeInterpolator textSizeInterpolator;
    private CharSequence textToDraw;
    private float textureAscent;
    private float textureDescent;
    private Paint texturePaint;
    private boolean useTexture;
    private final View view;
    private int expandedTextGravity = 16;
    private int collapsedTextGravity = 16;
    private float expandedTextSize = 15.0f;
    private float collapsedTextSize = 15.0f;
    private final TextPaint textPaint = new TextPaint(129);
    private final TextPaint tmpPaint = new TextPaint(this.textPaint);
    private final Rect collapsedBounds = new Rect();
    private final Rect expandedBounds = new Rect();
    private final RectF currentBounds = new RectF();

    static {
        USE_SCALING_TEXTURE = Build.VERSION.SDK_INT < 18;
        DEBUG_DRAW_PAINT = null;
        Paint paint = DEBUG_DRAW_PAINT;
        if (paint != null) {
            paint.setAntiAlias(true);
            DEBUG_DRAW_PAINT.setColor(-65281);
        }
    }

    public CollapsingTextHelper(View view) {
        this.view = view;
    }

    private static int blendColors(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    private void calculateBaseOffsets() {
        float f = this.currentTextSize;
        calculateUsingTextSize(this.collapsedTextSize);
        CharSequence charSequence = this.textToDraw;
        float measureText = charSequence != null ? this.textPaint.measureText(charSequence, 0, charSequence.length()) : 0.0f;
        int m6344a = C0533c.m6344a(this.collapsedTextGravity, this.isRtl ? 1 : 0);
        int i = m6344a & 112;
        if (i == 48) {
            this.collapsedDrawY = this.collapsedBounds.top - this.textPaint.ascent();
        } else if (i != 80) {
            this.collapsedDrawY = this.collapsedBounds.centerY() + (((this.textPaint.descent() - this.textPaint.ascent()) / 2.0f) - this.textPaint.descent());
        } else {
            this.collapsedDrawY = this.collapsedBounds.bottom;
        }
        int i2 = m6344a & 8388615;
        if (i2 == 1) {
            this.collapsedDrawX = this.collapsedBounds.centerX() - (measureText / 2.0f);
        } else if (i2 != 5) {
            this.collapsedDrawX = this.collapsedBounds.left;
        } else {
            this.collapsedDrawX = this.collapsedBounds.right - measureText;
        }
        calculateUsingTextSize(this.expandedTextSize);
        CharSequence charSequence2 = this.textToDraw;
        float f2 = 0.0f;
        if (charSequence2 != null) {
            f2 = this.textPaint.measureText(charSequence2, 0, charSequence2.length());
        }
        int m6344a2 = C0533c.m6344a(this.expandedTextGravity, this.isRtl ? 1 : 0);
        int i3 = m6344a2 & 112;
        if (i3 == 48) {
            this.expandedDrawY = this.expandedBounds.top - this.textPaint.ascent();
        } else if (i3 != 80) {
            this.expandedDrawY = this.expandedBounds.centerY() + (((this.textPaint.descent() - this.textPaint.ascent()) / 2.0f) - this.textPaint.descent());
        } else {
            this.expandedDrawY = this.expandedBounds.bottom;
        }
        int i4 = m6344a2 & 8388615;
        if (i4 == 1) {
            this.expandedDrawX = this.expandedBounds.centerX() - (f2 / 2.0f);
        } else if (i4 != 5) {
            this.expandedDrawX = this.expandedBounds.left;
        } else {
            this.expandedDrawX = this.expandedBounds.right - f2;
        }
        clearTexture();
        setInterpolatedTextSize(f);
    }

    private void calculateCurrentOffsets() {
        calculateOffsets(this.expandedFraction);
    }

    private boolean calculateIsRtl(CharSequence charSequence) {
        boolean z = true;
        if (C0552u.m6245f(this.view) != 1) {
            z = false;
        }
        return (z ? C0487e.f1791d : C0487e.f1790c).mo6475a(charSequence, 0, charSequence.length());
    }

    private void calculateOffsets(float f) {
        interpolateBounds(f);
        this.currentDrawX = lerp(this.expandedDrawX, this.collapsedDrawX, f, this.positionInterpolator);
        this.currentDrawY = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
        setInterpolatedTextSize(lerp(this.expandedTextSize, this.collapsedTextSize, f, this.textSizeInterpolator));
        if (this.collapsedTextColor != this.expandedTextColor) {
            this.textPaint.setColor(blendColors(getCurrentExpandedTextColor(), getCurrentCollapsedTextColor(), f));
        } else {
            this.textPaint.setColor(getCurrentCollapsedTextColor());
        }
        this.textPaint.setShadowLayer(lerp(this.expandedShadowRadius, this.collapsedShadowRadius, f, null), lerp(this.expandedShadowDx, this.collapsedShadowDx, f, null), lerp(this.expandedShadowDy, this.collapsedShadowDy, f, null), blendColors(this.expandedShadowColor, this.collapsedShadowColor, f));
        C0552u.m6249d(this.view);
    }

    private void calculateUsingTextSize(float f) {
        boolean z;
        float f2;
        float f3;
        if (this.text == null) {
            return;
        }
        float width = this.collapsedBounds.width();
        float width2 = this.expandedBounds.width();
        boolean z2 = true;
        if (isClose(f, this.collapsedTextSize)) {
            f2 = this.collapsedTextSize;
            this.scale = 1.0f;
            Typeface typeface = this.currentTypeface;
            Typeface typeface2 = this.collapsedTypeface;
            if (typeface != typeface2) {
                this.currentTypeface = typeface2;
                z = true;
            } else {
                z = false;
            }
            f3 = width;
        } else {
            f2 = this.expandedTextSize;
            Typeface typeface3 = this.currentTypeface;
            Typeface typeface4 = this.expandedTypeface;
            if (typeface3 != typeface4) {
                this.currentTypeface = typeface4;
                z = true;
            } else {
                z = false;
            }
            if (isClose(f, this.expandedTextSize)) {
                this.scale = 1.0f;
            } else {
                this.scale = f / this.expandedTextSize;
            }
            float f4 = this.collapsedTextSize / this.expandedTextSize;
            f3 = width2 * f4 > width ? Math.min(width / f4, width2) : width2;
        }
        boolean z3 = z;
        if (f3 > FlexItem.FLEX_GROW_DEFAULT) {
            boolean z4 = this.currentTextSize != f2 || this.boundsChanged || z;
            this.currentTextSize = f2;
            this.boundsChanged = false;
            z3 = z4;
        }
        if (this.textToDraw != null && !z3) {
            return;
        }
        this.textPaint.setTextSize(this.currentTextSize);
        this.textPaint.setTypeface(this.currentTypeface);
        TextPaint textPaint = this.textPaint;
        if (this.scale == 1.0f) {
            z2 = false;
        }
        textPaint.setLinearText(z2);
        CharSequence ellipsize = TextUtils.ellipsize(this.text, this.textPaint, f3, TextUtils.TruncateAt.END);
        if (TextUtils.equals(ellipsize, this.textToDraw)) {
            return;
        }
        this.textToDraw = ellipsize;
        this.isRtl = calculateIsRtl(this.textToDraw);
    }

    private void clearTexture() {
        Bitmap bitmap = this.expandedTitleTexture;
        if (bitmap != null) {
            bitmap.recycle();
            this.expandedTitleTexture = null;
        }
    }

    private void ensureExpandedTexture() {
        if (this.expandedTitleTexture != null || this.expandedBounds.isEmpty() || TextUtils.isEmpty(this.textToDraw)) {
            return;
        }
        calculateOffsets(FlexItem.FLEX_GROW_DEFAULT);
        this.textureAscent = this.textPaint.ascent();
        this.textureDescent = this.textPaint.descent();
        TextPaint textPaint = this.textPaint;
        CharSequence charSequence = this.textToDraw;
        int round = Math.round(textPaint.measureText(charSequence, 0, charSequence.length()));
        int round2 = Math.round(this.textureDescent - this.textureAscent);
        if (round <= 0 || round2 <= 0) {
            return;
        }
        this.expandedTitleTexture = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(this.expandedTitleTexture);
        CharSequence charSequence2 = this.textToDraw;
        canvas.drawText(charSequence2, 0, charSequence2.length(), FlexItem.FLEX_GROW_DEFAULT, round2 - this.textPaint.descent(), this.textPaint);
        if (this.texturePaint != null) {
            return;
        }
        this.texturePaint = new Paint(3);
    }

    private int getCurrentExpandedTextColor() {
        int[] iArr = this.state;
        return iArr != null ? this.expandedTextColor.getColorForState(iArr, 0) : this.expandedTextColor.getDefaultColor();
    }

    private void getTextPaintCollapsed(TextPaint textPaint) {
        textPaint.setTextSize(this.collapsedTextSize);
        textPaint.setTypeface(this.collapsedTypeface);
    }

    private void interpolateBounds(float f) {
        this.currentBounds.left = lerp(this.expandedBounds.left, this.collapsedBounds.left, f, this.positionInterpolator);
        this.currentBounds.top = lerp(this.expandedDrawY, this.collapsedDrawY, f, this.positionInterpolator);
        this.currentBounds.right = lerp(this.expandedBounds.right, this.collapsedBounds.right, f, this.positionInterpolator);
        this.currentBounds.bottom = lerp(this.expandedBounds.bottom, this.collapsedBounds.bottom, f, this.positionInterpolator);
    }

    private static boolean isClose(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    private static float lerp(float f, float f2, float f3, TimeInterpolator timeInterpolator) {
        float f4 = f3;
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f3);
        }
        return AnimationUtils.lerp(f, f2, f4);
    }

    private Typeface readFontFamilyTypeface(int i) {
        TypedArray obtainStyledAttributes = this.view.getContext().obtainStyledAttributes(i, new int[]{16843692});
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                return Typeface.create(string, 0);
            }
            obtainStyledAttributes.recycle();
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private static boolean rectEquals(Rect rect, int i, int i2, int i3, int i4) {
        return rect.left == i && rect.top == i2 && rect.right == i3 && rect.bottom == i4;
    }

    private void setInterpolatedTextSize(float f) {
        calculateUsingTextSize(f);
        this.useTexture = USE_SCALING_TEXTURE && this.scale != 1.0f;
        if (this.useTexture) {
            ensureExpandedTexture();
        }
        C0552u.m6249d(this.view);
    }

    public float calculateCollapsedTextWidth() {
        if (this.text == null) {
            return FlexItem.FLEX_GROW_DEFAULT;
        }
        getTextPaintCollapsed(this.tmpPaint);
        TextPaint textPaint = this.tmpPaint;
        CharSequence charSequence = this.text;
        return textPaint.measureText(charSequence, 0, charSequence.length());
    }

    public void draw(Canvas canvas) {
        float f;
        int save = canvas.save();
        if (this.textToDraw != null && this.drawTitle) {
            float f2 = this.currentDrawX;
            float f3 = this.currentDrawY;
            boolean z = this.useTexture && this.expandedTitleTexture != null;
            if (z) {
                f = this.textureAscent * this.scale;
                float f4 = this.textureDescent;
            } else {
                f = this.textPaint.ascent() * this.scale;
                this.textPaint.descent();
                float f5 = this.scale;
            }
            float f6 = f3;
            if (z) {
                f6 = f3 + f;
            }
            float f7 = this.scale;
            if (f7 != 1.0f) {
                canvas.scale(f7, f7, f2, f6);
            }
            if (z) {
                canvas.drawBitmap(this.expandedTitleTexture, f2, f6, this.texturePaint);
            } else {
                CharSequence charSequence = this.textToDraw;
                canvas.drawText(charSequence, 0, charSequence.length(), f2, f6, this.textPaint);
            }
        }
        canvas.restoreToCount(save);
    }

    public void getCollapsedTextActualBounds(RectF rectF) {
        boolean calculateIsRtl = calculateIsRtl(this.text);
        Rect rect = this.collapsedBounds;
        rectF.left = !calculateIsRtl ? rect.left : rect.right - calculateCollapsedTextWidth();
        rectF.top = this.collapsedBounds.top;
        rectF.right = !calculateIsRtl ? rectF.left + calculateCollapsedTextWidth() : this.collapsedBounds.right;
        rectF.bottom = this.collapsedBounds.top + getCollapsedTextHeight();
    }

    public ColorStateList getCollapsedTextColor() {
        return this.collapsedTextColor;
    }

    public int getCollapsedTextGravity() {
        return this.collapsedTextGravity;
    }

    public float getCollapsedTextHeight() {
        getTextPaintCollapsed(this.tmpPaint);
        return -this.tmpPaint.ascent();
    }

    public float getCollapsedTextSize() {
        return this.collapsedTextSize;
    }

    public Typeface getCollapsedTypeface() {
        Typeface typeface = this.collapsedTypeface;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    public int getCurrentCollapsedTextColor() {
        int[] iArr = this.state;
        return iArr != null ? this.collapsedTextColor.getColorForState(iArr, 0) : this.collapsedTextColor.getDefaultColor();
    }

    public ColorStateList getExpandedTextColor() {
        return this.expandedTextColor;
    }

    public int getExpandedTextGravity() {
        return this.expandedTextGravity;
    }

    public float getExpandedTextSize() {
        return this.expandedTextSize;
    }

    public Typeface getExpandedTypeface() {
        Typeface typeface = this.expandedTypeface;
        if (typeface == null) {
            typeface = Typeface.DEFAULT;
        }
        return typeface;
    }

    public float getExpansionFraction() {
        return this.expandedFraction;
    }

    public CharSequence getText() {
        return this.text;
    }

    public final boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.collapsedTextColor;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.expandedTextColor) != null && colorStateList.isStateful());
    }

    void onBoundsChanged() {
        this.drawTitle = this.collapsedBounds.width() > 0 && this.collapsedBounds.height() > 0 && this.expandedBounds.width() > 0 && this.expandedBounds.height() > 0;
    }

    public void recalculate() {
        if (this.view.getHeight() <= 0 || this.view.getWidth() <= 0) {
            return;
        }
        calculateBaseOffsets();
        calculateCurrentOffsets();
    }

    public void setCollapsedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.collapsedBounds, i, i2, i3, i4)) {
            this.collapsedBounds.set(i, i2, i3, i4);
            this.boundsChanged = true;
            onBoundsChanged();
        }
    }

    public void setCollapsedTextAppearance(int i) {
        C0311as m7158a = C0311as.m7158a(this.view.getContext(), i, C0051a.C0061j.TextAppearance);
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textColor)) {
            this.collapsedTextColor = m7158a.m7148e(C0051a.C0061j.TextAppearance_android_textColor);
        }
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textSize)) {
            this.collapsedTextSize = m7158a.m7147e(C0051a.C0061j.TextAppearance_android_textSize, (int) this.collapsedTextSize);
        }
        this.collapsedShadowColor = m7158a.m7161a(C0051a.C0061j.TextAppearance_android_shadowColor, 0);
        this.collapsedShadowDx = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowDx, FlexItem.FLEX_GROW_DEFAULT);
        this.collapsedShadowDy = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowDy, FlexItem.FLEX_GROW_DEFAULT);
        this.collapsedShadowRadius = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowRadius, FlexItem.FLEX_GROW_DEFAULT);
        m7158a.m7164a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.collapsedTypeface = readFontFamilyTypeface(i);
        }
        recalculate();
    }

    public void setCollapsedTextColor(ColorStateList colorStateList) {
        if (this.collapsedTextColor != colorStateList) {
            this.collapsedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setCollapsedTextGravity(int i) {
        if (this.collapsedTextGravity != i) {
            this.collapsedTextGravity = i;
            recalculate();
        }
    }

    public void setCollapsedTextSize(float f) {
        if (this.collapsedTextSize != f) {
            this.collapsedTextSize = f;
            recalculate();
        }
    }

    public void setCollapsedTypeface(Typeface typeface) {
        if (this.collapsedTypeface != typeface) {
            this.collapsedTypeface = typeface;
            recalculate();
        }
    }

    public void setExpandedBounds(int i, int i2, int i3, int i4) {
        if (!rectEquals(this.expandedBounds, i, i2, i3, i4)) {
            this.expandedBounds.set(i, i2, i3, i4);
            this.boundsChanged = true;
            onBoundsChanged();
        }
    }

    public void setExpandedTextAppearance(int i) {
        C0311as m7158a = C0311as.m7158a(this.view.getContext(), i, C0051a.C0061j.TextAppearance);
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textColor)) {
            this.expandedTextColor = m7158a.m7148e(C0051a.C0061j.TextAppearance_android_textColor);
        }
        if (m7158a.m7144g(C0051a.C0061j.TextAppearance_android_textSize)) {
            this.expandedTextSize = m7158a.m7147e(C0051a.C0061j.TextAppearance_android_textSize, (int) this.expandedTextSize);
        }
        this.expandedShadowColor = m7158a.m7161a(C0051a.C0061j.TextAppearance_android_shadowColor, 0);
        this.expandedShadowDx = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowDx, FlexItem.FLEX_GROW_DEFAULT);
        this.expandedShadowDy = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowDy, FlexItem.FLEX_GROW_DEFAULT);
        this.expandedShadowRadius = m7158a.m7162a(C0051a.C0061j.TextAppearance_android_shadowRadius, FlexItem.FLEX_GROW_DEFAULT);
        m7158a.m7164a();
        if (Build.VERSION.SDK_INT >= 16) {
            this.expandedTypeface = readFontFamilyTypeface(i);
        }
        recalculate();
    }

    public void setExpandedTextColor(ColorStateList colorStateList) {
        if (this.expandedTextColor != colorStateList) {
            this.expandedTextColor = colorStateList;
            recalculate();
        }
    }

    public void setExpandedTextGravity(int i) {
        if (this.expandedTextGravity != i) {
            this.expandedTextGravity = i;
            recalculate();
        }
    }

    public void setExpandedTextSize(float f) {
        if (this.expandedTextSize != f) {
            this.expandedTextSize = f;
            recalculate();
        }
    }

    public void setExpandedTypeface(Typeface typeface) {
        if (this.expandedTypeface != typeface) {
            this.expandedTypeface = typeface;
            recalculate();
        }
    }

    public void setExpansionFraction(float f) {
        float m6546a = C0463a.m6546a(f, (float) FlexItem.FLEX_GROW_DEFAULT, 1.0f);
        if (m6546a != this.expandedFraction) {
            this.expandedFraction = m6546a;
            calculateCurrentOffsets();
        }
    }

    public void setPositionInterpolator(TimeInterpolator timeInterpolator) {
        this.positionInterpolator = timeInterpolator;
        recalculate();
    }

    public final boolean setState(int[] iArr) {
        this.state = iArr;
        if (isStateful()) {
            recalculate();
            return true;
        }
        return false;
    }

    public void setText(CharSequence charSequence) {
        if (charSequence == null || !charSequence.equals(this.text)) {
            this.text = charSequence;
            this.textToDraw = null;
            clearTexture();
            recalculate();
        }
    }

    public void setTextSizeInterpolator(TimeInterpolator timeInterpolator) {
        this.textSizeInterpolator = timeInterpolator;
        recalculate();
    }

    public void setTypefaces(Typeface typeface) {
        this.expandedTypeface = typeface;
        this.collapsedTypeface = typeface;
        recalculate();
    }
}
