package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ColorStripContainer.class */
public class ColorStripContainer extends FrameLayout {

    /* renamed from: e */
    private static final int f28649e = (int) Activities.m27699a(24.0f);

    /* renamed from: a */
    private final Attributes f28650a;

    /* renamed from: b */
    private final Path f28651b;

    /* renamed from: c */
    private final Path f28652c;

    /* renamed from: d */
    private final Paint f28653d;

    /* renamed from: f */
    private int f28654f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ColorStripContainer$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private int[] f28656b;

        /* renamed from: c */
        private float f28657c;

        private Attributes() {
            ColorStripContainer.this = r4;
        }
    }

    public ColorStripContainer(Context context) {
        this(context, null);
    }

    public ColorStripContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorStripContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28651b = new Path();
        this.f28652c = new Path();
        Paint paint = new Paint(1);
        this.f28653d = paint;
        paint.setStyle(Paint.Style.FILL);
        Attributes attributes = new Attributes();
        this.f28650a = attributes;
        m26782a(attributeSet, attributes);
        setWillNotDraw(false);
    }

    /* renamed from: a */
    private Attributes m26782a(AttributeSet attributeSet, Attributes attributes) {
        if (getContext() != null && attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.stripContainer);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
                        attributes.f28656b = new int[obtainTypedArray.length()];
                        for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                            attributes.f28656b[i2] = obtainTypedArray.getInt(i2, 0);
                        }
                        obtainTypedArray.recycle();
                    }
                } else if (index != 1) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.m27606a("TAG");
                } else {
                    attributes.f28657c = obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                }
            }
            obtainStyledAttributes.recycle();
        }
        return attributes;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f28650a.f28656b != null) {
            if (this.f28650a.f28657c > BitmapDescriptorFactory.HUE_RED) {
                try {
                    canvas.clipPath(this.f28652c);
                } catch (UnsupportedOperationException e) {
                }
            }
            int i = -this.f28654f;
            int height = getHeight();
            int width = getWidth();
            int i2 = f28649e;
            int i3 = ((width + i2) + this.f28654f) / i2;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                this.f28653d.setColor(this.f28650a.f28656b[i5 % this.f28650a.f28656b.length]);
                this.f28651b.reset();
                float f = height;
                this.f28651b.moveTo(i, f);
                this.f28651b.lineTo(i4, BitmapDescriptorFactory.HUE_RED);
                Path path = this.f28651b;
                int i6 = f28649e;
                path.lineTo(i4 + i6, BitmapDescriptorFactory.HUE_RED);
                this.f28651b.lineTo(i + i6, f);
                this.f28651b.close();
                canvas.drawPath(this.f28651b, this.f28653d);
                i4 += i6;
                i += i6;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f28654f = i2 / 2;
        this.f28652c.reset();
        this.f28652c.addRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight()), this.f28650a.f28657c, this.f28650a.f28657c, Path.Direction.CW);
    }
}
