package com.callapp.contacts.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.callapp.contacts.C5563R;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.twitter.sdk.android.tweetcomposer.C17306c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark.class */
public class ImageViewWithTopMark extends AppCompatImageView {

    /* renamed from: a */
    private final Paint f28726a;

    /* renamed from: b */
    private final Paint f28727b;

    /* renamed from: c */
    private Point f28728c;

    /* renamed from: d */
    private boolean f28729d;

    /* renamed from: e */
    private final Attributes f28730e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark$Attributes.class */
    public class Attributes {

        /* renamed from: b */
        private int f28732b;

        /* renamed from: c */
        private int f28733c;

        /* renamed from: d */
        private float f28734d;

        /* renamed from: e */
        private float f28735e;

        private Attributes() {
            ImageViewWithTopMark.this = r4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageViewWithTopMark$Point.class */
    public class Point {

        /* renamed from: a */
        float f28736a;

        /* renamed from: b */
        float f28737b;

        private Point() {
            ImageViewWithTopMark.this = r4;
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
        this.f28726a = paint;
        Paint paint2 = new Paint(1);
        this.f28727b = paint2;
        this.f28728c = new Point();
        this.f28729d = false;
        Attributes attributes = new Attributes();
        this.f28730e = attributes;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C5563R.styleable.ImageViewWithTopMark, i, 0);
        attributes.f28734d = obtainStyledAttributes.getDimensionPixelSize(2, (int) Activities.m27699a(5.0f));
        attributes.f28735e = obtainStyledAttributes.getDimensionPixelSize(3, (int) Activities.m27699a(4.0f));
        attributes.f28733c = obtainStyledAttributes.getColor(0, ThemeUtils.m27386a(getContext(), (int) C17306c.C17307a.tw__composer_red));
        attributes.f28732b = obtainStyledAttributes.getColor(1, ThemeUtils.m27386a(getContext(), 2131100228));
        obtainStyledAttributes.recycle();
        paint.setColor(attributes.f28733c);
        paint.setStyle(Paint.Style.FILL);
        paint2.setColor(attributes.f28732b);
        paint2.setStyle(Paint.Style.FILL);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f28729d) {
            canvas.drawCircle(this.f28728c.f28736a, this.f28728c.f28737b, this.f28730e.f28735e, this.f28727b);
            canvas.drawCircle(this.f28728c.f28736a, this.f28728c.f28737b, this.f28730e.f28734d, this.f28726a);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f28728c.f28736a = (((i - getDrawable().getIntrinsicWidth()) / 2) + getDrawable().getIntrinsicWidth()) - Activities.m27699a(3.0f);
        this.f28728c.f28737b = ((i2 - getDrawable().getIntrinsicHeight()) / 2) + Activities.m27699a(6.0f);
    }

    public void setDrawCircle(boolean z) {
        this.f28729d = z;
        requestLayout();
    }
}
