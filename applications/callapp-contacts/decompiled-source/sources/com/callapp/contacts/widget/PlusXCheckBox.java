package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import com.callapp.contacts.R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/PlusXCheckBox.class */
public class PlusXCheckBox extends CompoundButton {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f16549a = new Paint();

    /* renamed from: b  reason: collision with root package name */
    private int f16550b;

    /* renamed from: c  reason: collision with root package name */
    private int f16551c;

    /* renamed from: d  reason: collision with root package name */
    private Rect f16552d;
    private float e;
    private float f;
    private int g;
    private int h;

    public PlusXCheckBox(Context context) {
        super(context);
    }

    public PlusXCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        a(context, attributeSet);
    }

    public PlusXCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PlusXCheckBox, 0, 0);
            this.g = obtainStyledAttributes.getColor(0, ThemeUtils.getColor(2131099784));
            this.e = obtainStyledAttributes.getDimensionPixelOffset(2, 2);
            this.h = obtainStyledAttributes.getColor(1, ThemeUtils.getColor(2131099784));
            this.f = obtainStyledAttributes.getDimensionPixelOffset(3, 2);
            this.f16549a.setStrokeWidth(Activities.a(this.e));
            this.f16549a.setColor(this.h);
            setClickable(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(this.f16552d.left, this.f16551c, this.f16552d.right, this.f16551c, this.f16549a);
        canvas.drawLine(this.f16550b, this.f16552d.top, this.f16550b, this.f16552d.bottom, this.f16549a);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f16550b = i5 / 2;
        this.f16551c = i6 / 2;
        this.f16552d = new Rect(getPaddingLeft(), getPaddingTop(), i5 - getPaddingRight(), i6 - getPaddingBottom());
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        CallappAnimationUtils.a(this, (int) getRotation(), z ? 45 : 0);
        Paint paint = this.f16549a;
        if (paint != null) {
            paint.setColor(z ? this.g : this.h);
            this.f16549a.setStrokeWidth(Activities.a(z ? this.e : this.f));
        }
    }
}
