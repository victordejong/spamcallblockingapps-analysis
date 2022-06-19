package com.truecaller.android.truemoji.widget;

import android.content.Context;
import android.graphics.Paint;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.razorpay.AnalyticsConstants;
import e.m.d.y.n;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/truecaller/android/truemoji/widget/EmojiTextView;", "Landroidx/appcompat/widget/AppCompatTextView;", "", "text", "Landroid/widget/TextView$BufferType;", "type", "Ls1/s;", "setText", "(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V", "", "scale", "setEmojiScale", "(F)V", "f", "F", "emojiScale", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "truemoji_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/android/truemoji/widget/EmojiTextView.class */
public class EmojiTextView extends AppCompatTextView {

    /* renamed from: f */
    public float f10072f = 1.0f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmojiTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    public final void setEmojiScale(float f) {
        this.f10072f = f;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (isInEditMode()) {
            super.setText(charSequence, bufferType);
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        TextPaint paint = getPaint();
        l.d(paint, "paint");
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        l.d(fontMetrics, "paint.fontMetrics");
        n.Y0(spannableStringBuilder, context, fontMetrics, this.f10072f);
        super.setText(spannableStringBuilder, bufferType);
    }
}
