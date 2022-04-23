package com.victor.loading.book;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import p092e.p111h.p112a.C3125a;
import p092e.p111h.p112a.C3126b;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/book/PageView.class */
public class PageView extends View {

    /* renamed from: b */
    private Paint f12561b;

    /* renamed from: c */
    private Path f12562c;

    /* renamed from: d */
    private int f12563d;

    /* renamed from: e */
    private int f12564e;

    /* renamed from: f */
    private float f12565f;

    /* renamed from: g */
    private int f12566g;

    public PageView(Context context) {
        super(context);
        m613a();
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m613a();
    }

    public PageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m613a();
    }

    /* renamed from: a */
    private void m613a() {
        this.f12565f = getResources().getDimension(C3126b.book_padding);
        this.f12566g = getResources().getDimensionPixelOffset(C3126b.book_border);
        Paint paint = new Paint();
        this.f12561b = paint;
        paint.setAntiAlias(true);
        this.f12561b.setStrokeWidth(getResources().getDimension(C3126b.page_border));
        this.f12562c = new Path();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f12561b.setColor(getResources().getColor(C3125a.book_loading_book));
        this.f12561b.setStyle(Paint.Style.STROKE);
        float f = this.f12566g / 4;
        this.f12562c.moveTo(this.f12563d / 2, this.f12565f + f);
        Path path = this.f12562c;
        float f2 = this.f12563d;
        float f3 = this.f12565f;
        path.lineTo((f2 - f3) - f, f3 + f);
        Path path2 = this.f12562c;
        float f4 = this.f12563d;
        float f5 = this.f12565f;
        path2.lineTo((f4 - f5) - f, (this.f12564e - f5) - f);
        this.f12562c.lineTo(this.f12563d / 2, (this.f12564e - this.f12565f) - f);
        canvas.drawPath(this.f12562c, this.f12561b);
        this.f12561b.setColor(getResources().getColor(C3125a.book_loading_page));
        this.f12561b.setStyle(Paint.Style.FILL);
        float f6 = this.f12566g / 2;
        int i = this.f12563d;
        float f7 = i / 2;
        float f8 = this.f12565f;
        canvas.drawRect(f7, f8 + f6, (i - f8) - f6, (this.f12564e - f8) - f6, this.f12561b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12563d = i;
        this.f12564e = i2;
    }
}
