package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import java.lang.ref.WeakReference;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/TextDrawableHelper.class */
public class TextDrawableHelper {

    /* renamed from: c */
    private float f10937c;
    @Nullable

    /* renamed from: f */
    private TextAppearance f10940f;

    /* renamed from: a */
    private final TextPaint f10935a = new TextPaint(1);

    /* renamed from: b */
    private final TextAppearanceFontCallback f10936b = new TextAppearanceFontCallback() { // from class: com.google.android.material.internal.TextDrawableHelper.1
        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        /* renamed from: a */
        public void mo9374a(int i) {
            TextDrawableHelper.this.f10938d = true;
            TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f10939e.get();
            if (textDrawableDelegate != null) {
                textDrawableDelegate.mo8696a();
            }
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        /* renamed from: b */
        public void mo9373b(@NonNull Typeface typeface, boolean z) {
            if (!z) {
                TextDrawableHelper.this.f10938d = true;
                TextDrawableDelegate textDrawableDelegate = (TextDrawableDelegate) TextDrawableHelper.this.f10939e.get();
                if (textDrawableDelegate != null) {
                    textDrawableDelegate.mo8696a();
                }
            }
        }
    };

    /* renamed from: d */
    private boolean f10938d = true;
    @Nullable

    /* renamed from: e */
    private WeakReference<TextDrawableDelegate> f10939e = new WeakReference<>(null);

    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate.class */
    public interface TextDrawableDelegate {
        /* renamed from: a */
        void mo8696a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public TextDrawableHelper(@Nullable TextDrawableDelegate textDrawableDelegate) {
        m9457g(textDrawableDelegate);
    }

    /* renamed from: c */
    private float m9461c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f10935a.measureText(charSequence, 0, charSequence.length());
    }

    @Nullable
    /* renamed from: d */
    public TextAppearance m9460d() {
        return this.f10940f;
    }

    @NonNull
    /* renamed from: e */
    public TextPaint m9459e() {
        return this.f10935a;
    }

    /* renamed from: f */
    public float m9458f(String str) {
        if (!this.f10938d) {
            return this.f10937c;
        }
        float c = m9461c(str);
        this.f10937c = c;
        this.f10938d = false;
        return c;
    }

    /* renamed from: g */
    public void m9457g(@Nullable TextDrawableDelegate textDrawableDelegate) {
        this.f10939e = new WeakReference<>(textDrawableDelegate);
    }

    /* renamed from: h */
    public void m9456h(@Nullable TextAppearance textAppearance, Context context) {
        if (this.f10940f != textAppearance) {
            this.f10940f = textAppearance;
            if (textAppearance != null) {
                textAppearance.m9379j(context, this.f10935a, this.f10936b);
                TextDrawableDelegate textDrawableDelegate = this.f10939e.get();
                if (textDrawableDelegate != null) {
                    this.f10935a.drawableState = textDrawableDelegate.getState();
                }
                textAppearance.m9380i(context, this.f10935a, this.f10936b);
                this.f10938d = true;
            }
            TextDrawableDelegate textDrawableDelegate2 = this.f10939e.get();
            if (textDrawableDelegate2 != null) {
                textDrawableDelegate2.mo8696a();
                textDrawableDelegate2.onStateChange(textDrawableDelegate2.getState());
            }
        }
    }

    /* renamed from: i */
    public void m9455i(boolean z) {
        this.f10938d = z;
    }

    /* renamed from: j */
    public void m9454j(Context context) {
        this.f10940f.m9380i(context, this.f10935a, this.f10936b);
    }
}
