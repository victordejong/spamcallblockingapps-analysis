package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.content.C0790b;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DualCirclesCheckBox.class */
public class DualCirclesCheckBox extends AppCompatRadioButton {

    /* renamed from: a */
    float f28690a;

    /* renamed from: b */
    int f28691b;

    /* renamed from: c */
    private int f28692c;

    /* renamed from: d */
    private Paint f28693d;

    /* renamed from: e */
    private Paint f28694e;

    /* renamed from: f */
    private Paint f28695f;

    /* renamed from: g */
    private int f28696g;

    /* renamed from: h */
    private int f28697h;

    /* renamed from: i */
    private boolean f28698i;

    /* renamed from: j */
    private Drawable f28699j;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DualCirclesCheckBox$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private int f28701b;

        /* renamed from: c */
        private int f28702c;

        /* renamed from: d */
        private float f28703d;

        private Attributes() {
            DualCirclesCheckBox.this = r5;
            this.f28701b = ThemeUtils.m27386a(r5.getContext(), 2131099686);
            this.f28702c = ThemeUtils.m27386a(r5.getContext(), 2131099784);
            this.f28703d = r5.getResources().getDimension(2131165771);
        }
    }

    public DualCirclesCheckBox(Context context) {
        this(context, null);
    }

    public DualCirclesCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f28692c = (int) getResources().getDimension(2131165772);
        this.f28693d = new Paint(1);
        this.f28694e = new Paint(1);
        this.f28695f = new Paint(1);
        this.f28698i = false;
        Attributes attributes = new Attributes();
        if (getContext() != null && attributeSet != null) {
            m26749a(getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.dualCircleImageView), attributes);
        }
        m26748a(attributes);
    }

    /* renamed from: a */
    private void m26749a(TypedArray typedArray, Attributes attributes) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == 0) {
                attributes.f28703d = typedArray.getDimension(index, attributes.f28703d);
            } else if (index == 1) {
                attributes.f28702c = typedArray.getColor(index, attributes.f28702c);
            } else if (index != 2) {
                StringBuilder sb = new StringBuilder("Unknown attribute for ");
                sb.append(getClass().toString());
                sb.append(": ");
                sb.append(index);
                CLog.m27606a("TAG");
            } else {
                attributes.f28701b = typedArray.getColor(index, attributes.f28701b);
            }
        }
        typedArray.recycle();
    }

    /* renamed from: a */
    private void m26748a(Attributes attributes) {
        this.f28695f.setDither(true);
        this.f28695f.setFilterBitmap(true);
        this.f28694e.setColor(attributes.f28701b);
        this.f28693d.setColor(attributes.f28702c);
        this.f28690a = attributes.f28703d;
    }

    /* renamed from: a */
    public final DualCirclesCheckBox m26750a(int i) {
        this.f28694e.setColor(i);
        return this;
    }

    /* renamed from: b */
    public final DualCirclesCheckBox m26747b(int i) {
        this.f28693d.setColor(i);
        return this;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        Drawable background;
        int i5;
        int i6;
        if (this.f28690a <= BitmapDescriptorFactory.HUE_RED) {
            canvas.drawCircle(this.f28696g, this.f28697h, this.f28691b, this.f28693d);
        } else {
            canvas.drawCircle(this.f28696g, this.f28697h, this.f28691b, this.f28694e);
            canvas.drawCircle(this.f28696g, this.f28697h, this.f28691b - this.f28690a, this.f28693d);
        }
        if (this.f28699j != null) {
            int gravity = getGravity() & 112;
            if (gravity == 16) {
                i5 = this.f28697h;
                i6 = this.f28692c / 2;
            } else if (gravity != 80) {
                i = 0;
                int i7 = this.f28692c;
                i2 = i + i7;
                i3 = this.f28696g - (i7 / 2);
                i4 = i7 + i3;
                this.f28699j.setBounds(i3, i, i4, i2);
                background = getBackground();
                if (background != null && Build.VERSION.SDK_INT >= 21) {
                    background.setHotspotBounds(i3, i, i4, i2);
                }
            } else {
                i5 = getHeight();
                i6 = this.f28692c;
            }
            i = i5 - i6;
            int i72 = this.f28692c;
            i2 = i + i72;
            i3 = this.f28696g - (i72 / 2);
            i4 = i72 + i3;
            this.f28699j.setBounds(i3, i, i4, i2);
            background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i3, i, i4, i2);
            }
        }
        Drawable drawable = this.f28699j;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i / 2;
        int i6 = i2 / 2;
        if (!this.f28698i) {
            this.f28696g = i5;
            this.f28697h = i6;
            this.f28691b = Math.min(i - (getPaddingRight() + getPaddingLeft()), i2 - (getPaddingTop() + getPaddingBottom())) / 2;
        } else {
            int i7 = this.f28691b;
            this.f28696g = i5 + (i5 - i7);
            this.f28697h = i6 + (i6 - i7);
        }
        int i8 = this.f28692c;
        if (i8 > i || i8 > i2) {
            this.f28692c = Math.min(i, i2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        super.setButtonDrawable(i);
        this.f28699j = C0790b.m44502a(CallAppApplication.get(), i);
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        this.f28699j = drawable;
    }

    public void setFromAttributes(TypedArray typedArray) {
        Attributes attributes = new Attributes();
        m26749a(typedArray, attributes);
        m26748a(attributes);
    }

    public void setIconBounded(int i) {
        this.f28692c = i;
        this.f28698i = true;
    }

    public void setIconColorFilter(int i, boolean z) {
        Drawable drawable = this.f28699j;
        if (drawable != null) {
            if (z) {
                this.f28699j = drawable.mutate();
            }
            this.f28699j.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }
}
