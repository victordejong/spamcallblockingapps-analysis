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
import androidx.core.content.b;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.R;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DualCirclesCheckBox.class */
public class DualCirclesCheckBox extends AppCompatRadioButton {

    /* renamed from: a  reason: collision with root package name */
    float f16484a;

    /* renamed from: b  reason: collision with root package name */
    int f16485b;

    /* renamed from: c  reason: collision with root package name */
    private int f16486c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f16487d;
    private Paint e;
    private Paint f;
    private int g;
    private int h;
    private boolean i;
    private Drawable j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/DualCirclesCheckBox$Attributes.class */
    public class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private int f16489b;

        /* renamed from: c  reason: collision with root package name */
        private int f16490c;

        /* renamed from: d  reason: collision with root package name */
        private float f16491d;

        private Attributes() {
            this.f16489b = ThemeUtils.a(DualCirclesCheckBox.this.getContext(), 2131099686);
            this.f16490c = ThemeUtils.a(DualCirclesCheckBox.this.getContext(), 2131099784);
            this.f16491d = DualCirclesCheckBox.this.getResources().getDimension(2131165771);
        }
    }

    public DualCirclesCheckBox(Context context) {
        this(context, null);
    }

    public DualCirclesCheckBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16486c = (int) getResources().getDimension(2131165772);
        this.f16487d = new Paint(1);
        this.e = new Paint(1);
        this.f = new Paint(1);
        this.i = false;
        Attributes attributes = new Attributes();
        if (!(getContext() == null || attributeSet == null)) {
            a(getContext().obtainStyledAttributes(attributeSet, R.styleable.dualCircleImageView), attributes);
        }
        a(attributes);
    }

    private void a(TypedArray typedArray, Attributes attributes) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index == 0) {
                attributes.f16491d = typedArray.getDimension(index, attributes.f16491d);
            } else if (index == 1) {
                attributes.f16490c = typedArray.getColor(index, attributes.f16490c);
            } else if (index != 2) {
                StringBuilder sb = new StringBuilder("Unknown attribute for ");
                sb.append(getClass().toString());
                sb.append(": ");
                sb.append(index);
                CLog.a("TAG");
            } else {
                attributes.f16489b = typedArray.getColor(index, attributes.f16489b);
            }
        }
        typedArray.recycle();
    }

    private void a(Attributes attributes) {
        this.f.setDither(true);
        this.f.setFilterBitmap(true);
        this.e.setColor(attributes.f16489b);
        this.f16487d.setColor(attributes.f16490c);
        this.f16484a = attributes.f16491d;
    }

    public final DualCirclesCheckBox a(int i) {
        this.e.setColor(i);
        return this;
    }

    public final DualCirclesCheckBox b(int i) {
        this.f16487d.setColor(i);
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
        if (this.f16484a <= BitmapDescriptorFactory.HUE_RED) {
            canvas.drawCircle(this.g, this.h, this.f16485b, this.f16487d);
        } else {
            canvas.drawCircle(this.g, this.h, this.f16485b, this.e);
            canvas.drawCircle(this.g, this.h, this.f16485b - this.f16484a, this.f16487d);
        }
        if (this.j != null) {
            int gravity = getGravity() & 112;
            if (gravity == 16) {
                i5 = this.h;
                i6 = this.f16486c / 2;
            } else if (gravity != 80) {
                i = 0;
                int i7 = this.f16486c;
                i2 = i + i7;
                i3 = this.g - (i7 / 2);
                i4 = i7 + i3;
                this.j.setBounds(i3, i, i4, i2);
                background = getBackground();
                if (background != null && Build.VERSION.SDK_INT >= 21) {
                    background.setHotspotBounds(i3, i, i4, i2);
                }
            } else {
                i5 = getHeight();
                i6 = this.f16486c;
            }
            i = i5 - i6;
            int i72 = this.f16486c;
            i2 = i + i72;
            i3 = this.g - (i72 / 2);
            i4 = i72 + i3;
            this.j.setBounds(i3, i, i4, i2);
            background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i3, i, i4, i2);
            }
        }
        Drawable drawable = this.j;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i / 2;
        int i6 = i2 / 2;
        if (!this.i) {
            this.g = i5;
            this.h = i6;
            this.f16485b = Math.min(i - (getPaddingRight() + getPaddingLeft()), i2 - (getPaddingTop() + getPaddingBottom())) / 2;
        } else {
            int i7 = this.f16485b;
            this.g = i5 + (i5 - i7);
            this.h = i6 + (i6 - i7);
        }
        int i8 = this.f16486c;
        if (i8 > i || i8 > i2) {
            this.f16486c = Math.min(i, i2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        super.setButtonDrawable(i);
        this.j = b.a(CallAppApplication.get(), i);
    }

    @Override // androidx.appcompat.widget.AppCompatRadioButton, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        this.j = drawable;
    }

    public void setFromAttributes(TypedArray typedArray) {
        Attributes attributes = new Attributes();
        a(typedArray, attributes);
        a(attributes);
    }

    public void setIconBounded(int i) {
        this.f16486c = i;
        this.i = true;
    }

    public void setIconColorFilter(int i, boolean z) {
        Drawable drawable = this.j;
        if (drawable != null) {
            if (z) {
                this.j = drawable.mutate();
            }
            this.j.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
    }
}
