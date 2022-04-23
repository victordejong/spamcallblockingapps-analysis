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

    /* renamed from: a  reason: collision with root package name */
    Drawable f16453a;

    /* renamed from: b  reason: collision with root package name */
    int f16454b;

    /* renamed from: c  reason: collision with root package name */
    int f16455c;
    TextPaint e;
    private int f;
    private int g;
    private Paint h;
    private Paint i;

    public CircularTextView(Context context) {
        this(context, null);
    }

    public CircularTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircularTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.h = new Paint(1);
        this.i = new Paint(1);
        this.e = new TextPaint(1);
    }

    static /* synthetic */ int a(String str) {
        TypedArray initialsColors = ImageUtils.getInitialsColors();
        return initialsColors.getColor(Math.abs(str.hashCode()) % (initialsColors.length() - 1), -7829368);
    }

    private void a() {
        Drawable drawable = this.f16453a;
        if (drawable != null) {
            drawable.invalidateSelf();
        }
    }

    public Drawable getDrawable() {
        return this.f16453a;
    }

    public void setBorder(int i, int i2) {
        this.f = i;
        this.g = i2;
        a();
    }

    public void setLetterText(CharSequence charSequence) {
        setText(charSequence);
        a();
    }
}
