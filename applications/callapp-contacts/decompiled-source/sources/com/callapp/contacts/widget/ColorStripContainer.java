package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.callapp.contacts.R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ColorStripContainer.class */
public class ColorStripContainer extends FrameLayout {
    private static final int e = (int) Activities.a(24.0f);

    /* renamed from: a  reason: collision with root package name */
    private final Attributes f16457a;

    /* renamed from: b  reason: collision with root package name */
    private final Path f16458b;

    /* renamed from: c  reason: collision with root package name */
    private final Path f16459c;

    /* renamed from: d  reason: collision with root package name */
    private final Paint f16460d;
    private int f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ColorStripContainer$Attributes.class */
    public class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private int[] f16462b;

        /* renamed from: c  reason: collision with root package name */
        private float f16463c;

        private Attributes() {
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
        this.f16458b = new Path();
        this.f16459c = new Path();
        Paint paint = new Paint(1);
        this.f16460d = paint;
        paint.setStyle(Paint.Style.FILL);
        Attributes attributes = new Attributes();
        this.f16457a = attributes;
        a(attributeSet, attributes);
        setWillNotDraw(false);
    }

    private Attributes a(AttributeSet attributeSet, Attributes attributes) {
        if (!(getContext() == null || attributeSet == null)) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.stripContainer);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        TypedArray obtainTypedArray = obtainStyledAttributes.getResources().obtainTypedArray(resourceId);
                        attributes.f16462b = new int[obtainTypedArray.length()];
                        for (int i2 = 0; i2 < obtainTypedArray.length(); i2++) {
                            attributes.f16462b[i2] = obtainTypedArray.getInt(i2, 0);
                        }
                        obtainTypedArray.recycle();
                    }
                } else if (index != 1) {
                    StringBuilder sb = new StringBuilder("Unknown attribute for ");
                    sb.append(getClass().toString());
                    sb.append(": ");
                    sb.append(index);
                    CLog.a("TAG");
                } else {
                    attributes.f16463c = obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED);
                }
            }
            obtainStyledAttributes.recycle();
        }
        return attributes;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f16457a.f16462b != null) {
            if (this.f16457a.f16463c > BitmapDescriptorFactory.HUE_RED) {
                try {
                    canvas.clipPath(this.f16459c);
                } catch (UnsupportedOperationException e2) {
                }
            }
            int i = -this.f;
            int height = getHeight();
            int width = getWidth();
            int i2 = e;
            int i3 = ((width + i2) + this.f) / i2;
            int i4 = 0;
            for (int i5 = 0; i5 < i3; i5++) {
                this.f16460d.setColor(this.f16457a.f16462b[i5 % this.f16457a.f16462b.length]);
                this.f16458b.reset();
                float f = height;
                this.f16458b.moveTo(i, f);
                this.f16458b.lineTo(i4, BitmapDescriptorFactory.HUE_RED);
                Path path = this.f16458b;
                int i6 = e;
                path.lineTo(i4 + i6, BitmapDescriptorFactory.HUE_RED);
                this.f16458b.lineTo(i + i6, f);
                this.f16458b.close();
                canvas.drawPath(this.f16458b, this.f16460d);
                i4 += i6;
                i += i6;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f = i2 / 2;
        this.f16459c.reset();
        this.f16459c.addRoundRect(new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight()), this.f16457a.f16463c, this.f16457a.f16463c, Path.Direction.CW);
    }
}
