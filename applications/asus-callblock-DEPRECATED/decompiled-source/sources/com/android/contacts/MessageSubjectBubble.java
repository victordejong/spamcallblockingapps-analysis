package com.android.contacts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/android/contacts/MessageSubjectBubble.class */
public class MessageSubjectBubble extends View {
    private int i;

    /* renamed from: a  reason: collision with root package name */
    private final int f487a = 1;

    /* renamed from: b  reason: collision with root package name */
    private final int f488b = 2;
    private int c = 0;
    private int d = 0;
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int j = 1;
    private Paint k = new Paint(1);

    public MessageSubjectBubble(Context context, int i, int i2) {
        super(context);
    }

    public MessageSubjectBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MessageSubjectBubble(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.k.setStyle(Paint.Style.FILL);
        if (this.j == 2) {
            this.k.setARGB(242, 19, 186, 143);
        } else {
            this.k.setARGB(242, 50, 50, 50);
        }
        Path path = new Path();
        path.moveTo(this.e, this.f + this.i);
        path.lineTo(this.e + (this.c / 2), this.f + this.i + this.d);
        path.lineTo(this.e - (this.c / 2), this.f + this.i + this.d);
        canvas.drawPath(path, this.k);
    }

    public void setAnchorPoint(int i, int i2) {
        this.e = i;
        this.f = i2;
    }

    public void setBubblePage(int i) {
        this.j = i;
    }

    public void setCursorDimension(int i, int i2) {
        this.c = i;
        this.d = i2;
    }

    public void setMargin(int i) {
        this.i = i;
    }

    public void setPopupWindowDimension(int i, int i2) {
        this.g = i;
        this.h = i2;
    }
}
