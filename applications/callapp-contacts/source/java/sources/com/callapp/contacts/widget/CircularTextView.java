package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.callapp.contacts.util.ImageUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CircularTextView.class */
public class CircularTextView extends AppCompatTextView {

    /* renamed from: a */
    Drawable f28640a;

    /* renamed from: b */
    int f28641b;

    /* renamed from: c */
    int f28642c;

    /* renamed from: e */
    TextPaint f28643e;

    /* renamed from: f */
    private int f28644f;

    /* renamed from: g */
    private int f28645g;

    /* renamed from: h */
    private Paint f28646h;

    /* renamed from: i */
    private Paint f28647i;

    public CircularTextView(Context context) {
        this(context, null);
    }

    public CircularTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28646h = new Paint(1);
        this.f28647i = new Paint(1);
        this.f28643e = new TextPaint(1);
    }

    /* renamed from: a */
    static /* synthetic */ int m26789a(String str) {
        TypedArray initialsColors = ImageUtils.getInitialsColors();
        return initialsColors.getColor(Math.abs(str.hashCode()) % (initialsColors.length() - 1), -7829368);
    }

    /* renamed from: a */
    private void m26792a() {
        Drawable drawable = this.f28640a;
        if (drawable != null) {
            drawable.invalidateSelf();
        }
    }

    public Drawable getDrawable() {
        return this.f28640a;
    }

    public void setBorder(int i, int i2) {
        this.f28644f = i;
        this.f28645g = i2;
        m26792a();
    }

    public void setLetterText(CharSequence charSequence) {
        setText(charSequence);
        m26792a();
    }
}
