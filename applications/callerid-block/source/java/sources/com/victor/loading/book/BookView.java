package com.victor.loading.book;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import p092e.p111h.p112a.C3125a;
import p092e.p111h.p112a.C3126b;
/* loaded from: classes2-dex2jar.jar:com/victor/loading/book/BookView.class */
public class BookView extends View {

    /* renamed from: b */
    private Paint f12558b;

    /* renamed from: c */
    private int f12559c;

    /* renamed from: d */
    private int f12560d;

    public BookView(Context context) {
        super(context);
        m614a();
    }

    public BookView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m614a();
    }

    public BookView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m614a();
    }

    /* renamed from: a */
    private void m614a() {
        Paint paint = new Paint();
        this.f12558b = paint;
        paint.setColor(getResources().getColor(C3125a.book_loading_book));
        this.f12558b.setStrokeWidth(getResources().getDimension(C3126b.book_border));
        this.f12558b.setAntiAlias(true);
        this.f12558b.setStyle(Paint.Style.STROKE);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(0.0f, 0.0f, this.f12559c, this.f12560d, this.f12558b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f12559c = i;
        this.f12560d = i2;
    }
}
