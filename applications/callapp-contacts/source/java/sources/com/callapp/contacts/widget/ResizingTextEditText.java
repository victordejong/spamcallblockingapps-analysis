package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.TextView;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ResizingTextEditText.class */
public class ResizingTextEditText extends EditText {

    /* renamed from: f */
    private static final Typeface f28849f = Typeface.create("sans-serif-regular", 0);

    /* renamed from: g */
    private static final Typeface f28850g = Typeface.create("sans-serif-light", 0);

    /* renamed from: a */
    private final int f28851a;

    /* renamed from: b */
    private final int f28852b;

    /* renamed from: c */
    private final int f28853c;

    /* renamed from: d */
    private final int f28854d;

    /* renamed from: e */
    private boolean f28855e = true;

    public ResizingTextEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int textSize = (int) getTextSize();
        this.f28851a = textSize;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.ResizingText);
        this.f28852b = (int) obtainStyledAttributes.getDimension(2, textSize);
        int dimension = (int) obtainStyledAttributes.getDimension(0, textSize * 0.5f);
        this.f28853c = dimension;
        this.f28854d = (int) obtainStyledAttributes.getDimension(1, dimension);
        obtainStyledAttributes.recycle();
    }

    public ResizingTextEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int textSize = (int) getTextSize();
        this.f28851a = textSize;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.ResizingText);
        this.f28852b = (int) obtainStyledAttributes.getDimension(2, textSize);
        int dimension = (int) obtainStyledAttributes.getDimension(0, textSize * 0.5f);
        this.f28853c = dimension;
        this.f28854d = (int) obtainStyledAttributes.getDimension(1, dimension);
        obtainStyledAttributes.recycle();
    }

    private void setTextParams(int i) {
        if (!this.f28855e) {
            return;
        }
        if (i == 0) {
            setTypeface(f28849f, 0);
            ViewUtils.m27297b((TextView) this, this.f28853c, this.f28854d);
            return;
        }
        setTypeface(f28850g, 0);
        ViewUtils.m27312a((TextView) this, this.f28851a, this.f28852b);
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
