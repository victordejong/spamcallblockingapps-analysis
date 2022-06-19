package com.truecaller.messaging.views;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Locale;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p916i5.C15314a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010 \u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0011¨\u0006!"}, d2 = {"Lcom/truecaller/messaging/views/TransportSwitchView;", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "draw", "(Landroid/graphics/Canvas;)V", "", AnalyticsConstants.SELECTED, "dispatchSetSelected", "(Z)V", "Landroid/graphics/Rect;", "w", "Landroid/graphics/Rect;", "rect", "", "u", "I", "textColorSelectedState", "", "s", "Ljava/lang/String;", "getText", "()Ljava/lang/String;", "setText", "(Ljava/lang/String;)V", "text", "Landroid/text/TextPaint;", "v", "Landroid/text/TextPaint;", "paintText", "t", "textColor", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/views/TransportSwitchView.class */
public final class TransportSwitchView extends FloatingActionButton {

    /* renamed from: s */
    public String f13956s;

    /* renamed from: t */
    public int f13957t;

    /* renamed from: u */
    public int f13958u;

    /* renamed from: v */
    public final TextPaint f13959v;

    /* renamed from: w */
    public final Rect f13960w = new Rect();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    public TransportSwitchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f13956s = "";
        TextPaint textPaint = new TextPaint();
        this.f13959v = textPaint;
        TypedArray obtainStyledAttributes = C17422k.m16113E(context, true).getTheme().obtainStyledAttributes(attributeSet, C2752R.styleable.TransportSwitchView, 0, 0);
        try {
            String string = obtainStyledAttributes.getString(0);
            if (string != null) {
                l.d(string, "it");
                this.f13956s = string;
            }
            this.f13957t = obtainStyledAttributes.getColor(1, -16776961);
            this.f13958u = obtainStyledAttributes.getColor(2, -1);
            obtainStyledAttributes.recycle();
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C15314a c15314a = C15314a.f43582g;
                setForceDarkAllowed(!C15314a.m18933f());
            }
            String str = this.f13956s;
            Locale locale = Locale.US;
            l.d(locale, "Locale.US");
            Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
            String upperCase = str.toUpperCase(locale);
            l.d(upperCase, "(this as java.lang.String).toUpperCase(locale)");
            this.f13956s = upperCase;
            Typeface createFromAsset = Typeface.createFromAsset(context.getAssets(), "roboto_condensed_bold.ttf");
            textPaint.setAntiAlias(true);
            textPaint.setColor(this.f13957t);
            textPaint.setTypeface(i >= 28 ? Typeface.create(createFromAsset, 700, false) : createFromAsset);
            Resources resources = getResources();
            l.d(resources, "resources");
            textPaint.setTextSize(resources.getDisplayMetrics().density * 9.0f);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dispatchSetSelected(boolean z) {
        TransportSwitchView.super.dispatchSetSelected(z);
        if (z) {
            this.f13959v.setColor(this.f13958u);
        } else {
            this.f13959v.setColor(this.f13957t);
        }
        invalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void draw(Canvas canvas) {
        TransportSwitchView.super.draw(canvas);
        if (canvas != null) {
            TextPaint textPaint = this.f13959v;
            String str = this.f13956s;
            canvas.getClipBounds(this.f13960w);
            int height = this.f13960w.height();
            int width = this.f13960w.width();
            textPaint.setTextAlign(Paint.Align.LEFT);
            textPaint.getTextBounds(str, 0, str.length(), this.f13960w);
            float f = width / 2.0f;
            float width2 = this.f13960w.width() / 2.0f;
            Rect rect = this.f13960w;
            canvas.drawText(str, (f - width2) - rect.left, ((rect.height() / 2.0f) + (height / 2.0f)) - this.f13960w.bottom, textPaint);
        }
    }

    public final String getText() {
        return this.f13956s;
    }

    public final void setText(String str) {
        l.e(str, "<set-?>");
        this.f13956s = str;
    }
}
