package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.twitter.sdk.android.tweetcomposer.c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark.class */
public class ImageViewWithTopMark extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    private final Paint f16513a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f16514b;

    /* renamed from: c  reason: collision with root package name */
    private Point f16515c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f16516d;
    private final Attributes e;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark$Attributes.class */
    class Attributes {

        /* renamed from: b  reason: collision with root package name */
        private int f16518b;

        /* renamed from: c  reason: collision with root package name */
        private int f16519c;

        /* renamed from: d  reason: collision with root package name */
        private float f16520d;
        private float e;

        private Attributes() {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark$Point.class */
    class Point {

        /* renamed from: a  reason: collision with root package name */
        float f16521a;

        /* renamed from: b  reason: collision with root package name */
        float f16522b;

        private Point() {
        }
    }

    public ImageViewWithTopMark(Context context) {
        this(context, null);
    }

    public ImageViewWithTopMark(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ImageViewWithTopMark(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f16513a = paint;
        Paint paint2 = new Paint(1);
        this.f16514b = paint2;
        this.f16515c = new Point();
        this.f16516d = false;
        Attributes attributes = new Attributes();
        this.e = attributes;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ImageViewWithTopMark, i, 0);
        attributes.f16520d = obtainStyledAttributes.getDimensionPixelSize(2, (int) Activities.a(5.0f));
        attributes.e = obtainStyledAttributes.getDimensionPixelSize(3, (int) Activities.a(4.0f));
        attributes.f16519c = obtainStyledAttributes.getColor(0, ThemeUtils.a(getContext(), (int) c.a.tw__composer_red));
        attributes.f16518b = obtainStyledAttributes.getColor(1, ThemeUtils.a(getContext(), 2131100228));
        obtainStyledAttributes.recycle();
        paint.setColor(attributes.f16519c);
        paint.setStyle(Paint.Style.FILL);
        paint2.setColor(attributes.f16518b);
        paint2.setStyle(Paint.Style.FILL);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f16516d) {
            canvas.drawCircle(this.f16515c.f16521a, this.f16515c.f16522b, this.e.e, this.f16514b);
            canvas.drawCircle(this.f16515c.f16521a, this.f16515c.f16522b, this.e.f16520d, this.f16513a);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f16515c.f16521a = (((i - getDrawable().getIntrinsicWidth()) / 2) + getDrawable().getIntrinsicWidth()) - Activities.a(3.0f);
        this.f16515c.f16522b = ((i2 - getDrawable().getIntrinsicHeight()) / 2) + Activities.a(6.0f);
    }

    public void setDrawCircle(boolean z) {
        this.f16516d = z;
        requestLayout();
    }
}
