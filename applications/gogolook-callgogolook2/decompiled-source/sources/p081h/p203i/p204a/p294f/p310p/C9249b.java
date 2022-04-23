package p081h.p203i.p204a.p294f.p310p;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.R$styleable;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.p.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/p/b.class */
public class C9249b {

    /* renamed from: a */
    public final float f21177a;
    @Nullable

    /* renamed from: b */
    public final ColorStateList f21178b;

    /* renamed from: c */
    public final int f21179c;

    /* renamed from: d */
    public final int f21180d;
    @Nullable

    /* renamed from: e */
    public final String f21181e;
    @Nullable

    /* renamed from: f */
    public final ColorStateList f21182f;

    /* renamed from: g */
    public final float f21183g;

    /* renamed from: h */
    public final float f21184h;

    /* renamed from: i */
    public final float f21185i;
    @FontRes

    /* renamed from: j */
    public final int f21186j;

    /* renamed from: k */
    public boolean f21187k = false;
    @Nullable

    /* renamed from: l */
    public Typeface f21188l;

    /* renamed from: h.i.a.f.p.b$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/f/p/b$a.class */
    public class C9250a extends ResourcesCompat.FontCallback {

        /* renamed from: a */
        public final /* synthetic */ TextPaint f21189a;

        /* renamed from: b */
        public final /* synthetic */ ResourcesCompat.FontCallback f21190b;

        public C9250a(TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
            this.f21189a = textPaint;
            this.f21190b = fontCallback;
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrievalFailed(int i) {
            C9249b.this.m15624a();
            C9249b.this.f21187k = true;
            this.f21190b.onFontRetrievalFailed(i);
        }

        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
        public void onFontRetrieved(@NonNull Typeface typeface) {
            C9249b bVar = C9249b.this;
            bVar.f21188l = Typeface.create(typeface, bVar.f21179c);
            C9249b.this.m15621a(this.f21189a, typeface);
            C9249b.this.f21187k = true;
            this.f21190b.onFontRetrieved(typeface);
        }
    }

    public C9249b(Context context, @StyleRes int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
        this.f21177a = obtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f);
        this.f21178b = C9248a.m15628a(context, obtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
        C9248a.m15628a(context, obtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
        C9248a.m15628a(context, obtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
        this.f21179c = obtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
        this.f21180d = obtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
        int a = C9248a.m15627a(obtainStyledAttributes, R$styleable.TextAppearance_fontFamily, R$styleable.TextAppearance_android_fontFamily);
        this.f21186j = obtainStyledAttributes.getResourceId(a, 0);
        this.f21181e = obtainStyledAttributes.getString(a);
        obtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
        this.f21182f = C9248a.m15628a(context, obtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
        this.f21183g = obtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f21184h = obtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f21185i = obtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public Typeface m15623a(Context context) {
        if (this.f21187k) {
            return this.f21188l;
        }
        if (!context.isRestricted()) {
            try {
                this.f21188l = ResourcesCompat.getFont(context, this.f21186j);
                if (this.f21188l != null) {
                    this.f21188l = Typeface.create(this.f21188l, this.f21179c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException e) {
            } catch (Exception e2) {
                String str = "Error loading font " + this.f21181e;
            }
        }
        m15624a();
        this.f21187k = true;
        return this.f21188l;
    }

    /* renamed from: a */
    public final void m15624a() {
        if (this.f21188l == null) {
            this.f21188l = Typeface.create(this.f21181e, this.f21179c);
        }
        if (this.f21188l == null) {
            int i = this.f21180d;
            if (i == 1) {
                this.f21188l = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.f21188l = Typeface.SERIF;
            } else if (i != 3) {
                this.f21188l = Typeface.DEFAULT;
            } else {
                this.f21188l = Typeface.MONOSPACE;
            }
            Typeface typeface = this.f21188l;
            if (typeface != null) {
                this.f21188l = Typeface.create(typeface, this.f21179c);
            }
        }
    }

    /* renamed from: a */
    public void m15622a(Context context, TextPaint textPaint, @NonNull ResourcesCompat.FontCallback fontCallback) {
        if (this.f21187k) {
            m15621a(textPaint, this.f21188l);
            return;
        }
        m15624a();
        if (context.isRestricted()) {
            this.f21187k = true;
            m15621a(textPaint, this.f21188l);
            return;
        }
        try {
            ResourcesCompat.getFont(context, this.f21186j, new C9250a(textPaint, fontCallback), null);
        } catch (Resources.NotFoundException | UnsupportedOperationException e) {
        } catch (Exception e2) {
            String str = "Error loading font " + this.f21181e;
        }
    }

    /* renamed from: a */
    public void m15621a(@NonNull TextPaint textPaint, @NonNull Typeface typeface) {
        textPaint.setTypeface(typeface);
        int style = (typeface.getStyle() ^ (-1)) & this.f21179c;
        textPaint.setFakeBoldText((style & 1) != 0);
        textPaint.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f21177a);
    }

    /* renamed from: b */
    public void m15617b(Context context, TextPaint textPaint, ResourcesCompat.FontCallback fontCallback) {
        m15616c(context, textPaint, fontCallback);
        ColorStateList colorStateList = this.f21178b;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.f21185i;
        float f2 = this.f21183g;
        float f3 = this.f21184h;
        ColorStateList colorStateList2 = this.f21182f;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* renamed from: c */
    public void m15616c(Context context, TextPaint textPaint, @Nullable ResourcesCompat.FontCallback fontCallback) {
        if (C9251c.m15615a()) {
            m15621a(textPaint, m15623a(context));
            return;
        }
        m15622a(context, textPaint, fontCallback);
        if (!this.f21187k) {
            m15621a(textPaint, this.f21188l);
        }
    }
}
