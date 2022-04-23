package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.TextView;
import com.callapp.contacts.R;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ResizingTextEditText.class */
public class ResizingTextEditText extends EditText {
    private static final Typeface f = Typeface.create("sans-serif-regular", 0);
    private static final Typeface g = Typeface.create("sans-serif-light", 0);

    /* renamed from: a  reason: collision with root package name */
    private final int f16569a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16570b;

    /* renamed from: c  reason: collision with root package name */
    private final int f16571c;

    /* renamed from: d  reason: collision with root package name */
    private final int f16572d;
    private boolean e = true;

    public ResizingTextEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int textSize = (int) getTextSize();
        this.f16569a = textSize;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ResizingText);
        this.f16570b = (int) obtainStyledAttributes.getDimension(2, textSize);
        int dimension = (int) obtainStyledAttributes.getDimension(0, textSize * 0.5f);
        this.f16571c = dimension;
        this.f16572d = (int) obtainStyledAttributes.getDimension(1, dimension);
        obtainStyledAttributes.recycle();
    }

    public ResizingTextEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int textSize = (int) getTextSize();
        this.f16569a = textSize;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ResizingText);
        this.f16570b = (int) obtainStyledAttributes.getDimension(2, textSize);
        int dimension = (int) obtainStyledAttributes.getDimension(0, textSize * 0.5f);
        this.f16571c = dimension;
        this.f16572d = (int) obtainStyledAttributes.getDimension(1, dimension);
        obtainStyledAttributes.recycle();
    }

    private void setTextParams(int i) {
        if (this.e) {
            if (i == 0) {
                setTypeface(f, 0);
                ViewUtils.b((TextView) this, this.f16571c, this.f16572d);
                return;
            }
            setTypeface(g, 0);
            ViewUtils.a((TextView) this, this.f16569a, this.f16570b);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setTextParams(getText().toString().length());
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        setTextParams(charSequence.length());
    }
}
