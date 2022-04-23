package com.netqin.p525cm.main.p529ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;
import p131c.p431l.p477b.C6870a;
/* renamed from: com.netqin.cm.main.ui.PriceTextView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/PriceTextView.class */
public class PriceTextView extends TextView {

    /* renamed from: a */
    public float f35644a;

    /* renamed from: b */
    public float f35645b;

    /* renamed from: c */
    public Paint f35646c;

    public PriceTextView(Context context) {
        super(context, null);
    }

    public PriceTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130903402);
    }

    public PriceTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f35646c = new Paint();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C6870a.PriceTextView, i, 0);
        this.f35645b = obtainStyledAttributes.getDimension(0, 10.0f);
        obtainStyledAttributes.recycle();
        this.f35644a = getTextSize();
        Log.d("PriceTextView", "this.preferredTextSize = " + this.f35644a + ", this.minTextSize = " + this.f35645b);
    }

    /* renamed from: a */
    public final void m3301a(String str, int i) {
        if (i > 0 && str != null && str.length() != 0) {
            int paddingLeft = (i - getPaddingLeft()) - getPaddingRight();
            Log.d("PriceTextView", "targetWidth = " + paddingLeft);
            this.f35646c.set(getPaint());
            this.f35646c.setTextSize(this.f35644a);
            float f = (float) paddingLeft;
            if (this.f35646c.measureText(str) <= f) {
                setTextSize(0, this.f35644a);
                return;
            }
            float f2 = this.f35645b;
            float f3 = this.f35644a;
            Log.d("PriceTextView", "this.preferredTextSize = " + f3 + ", this.minTextSize = " + f2);
            while (f3 - f2 > 0.5f) {
                float f4 = (f3 + f2) / 2.0f;
                this.f35646c.setTextSize(f4);
                if (this.f35646c.measureText(str) >= f) {
                    f3 = f4;
                } else {
                    f2 = f4;
                }
            }
            Log.d("PriceTextView", "this.minTextSize = " + f2);
            setTextSize(0, f2);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3) {
            m3301a(getText().toString(), i);
        }
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        m3301a(charSequence.toString(), getWidth());
    }

    public void setMinTextSize(float f) {
        this.f35645b = f;
    }
}
