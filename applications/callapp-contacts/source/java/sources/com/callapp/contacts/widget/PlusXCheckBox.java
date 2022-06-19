package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/PlusXCheckBox.class */
public class PlusXCheckBox extends CompoundButton {

    /* renamed from: a */
    private final Paint f28783a = new Paint();

    /* renamed from: b */
    private int f28784b;

    /* renamed from: c */
    private int f28785c;

    /* renamed from: d */
    private Rect f28786d;

    /* renamed from: e */
    private float f28787e;

    /* renamed from: f */
    private float f28788f;

    /* renamed from: g */
    private int f28789g;

    /* renamed from: h */
    private int f28790h;

    public PlusXCheckBox(Context context) {
        super(context);
    }

    public PlusXCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        m26689a(context, attributeSet);
    }

    public PlusXCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26689a(context, attributeSet);
    }

    /* renamed from: a */
    private void m26689a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.PlusXCheckBox, 0, 0);
            this.f28789g = obtainStyledAttributes.getColor(0, ThemeUtils.getColor(2131099784));
            this.f28787e = obtainStyledAttributes.getDimensionPixelOffset(2, 2);
            this.f28790h = obtainStyledAttributes.getColor(1, ThemeUtils.getColor(2131099784));
            this.f28788f = obtainStyledAttributes.getDimensionPixelOffset(3, 2);
            this.f28783a.setStrokeWidth(Activities.m27699a(this.f28787e));
            this.f28783a.setColor(this.f28790h);
            setClickable(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(this.f28786d.left, this.f28785c, this.f28786d.right, this.f28785c, this.f28783a);
        canvas.drawLine(this.f28784b, this.f28786d.top, this.f28784b, this.f28786d.bottom, this.f28783a);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f28784b = i5 / 2;
        this.f28785c = i6 / 2;
        this.f28786d = new Rect(getPaddingLeft(), getPaddingTop(), i5 - getPaddingRight(), i6 - getPaddingBottom());
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        CallappAnimationUtils.m27185a(this, (int) getRotation(), z ? 45 : 0);
        Paint paint = this.f28783a;
        if (paint != null) {
            paint.setColor(z ? this.f28789g : this.f28790h);
            this.f28783a.setStrokeWidth(Activities.m27699a(z ? this.f28787e : this.f28788f));
        }
    }
}
