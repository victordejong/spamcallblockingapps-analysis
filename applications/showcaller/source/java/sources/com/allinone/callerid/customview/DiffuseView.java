package com.allinone.callerid.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$styleable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/DiffuseView.class */
public class DiffuseView extends View {

    /* renamed from: d */
    private int f8480d;

    /* renamed from: e */
    private int f8481e;

    /* renamed from: f */
    private Bitmap f8482f;

    /* renamed from: g */
    private float f8483g;

    /* renamed from: h */
    private int f8484h;

    /* renamed from: i */
    private Integer f8485i;

    /* renamed from: j */
    private int f8486j;

    /* renamed from: k */
    private boolean f8487k;

    /* renamed from: l */
    private List<Integer> f8488l;

    /* renamed from: m */
    private List<Integer> f8489m;

    /* renamed from: n */
    private Paint f8490n;

    public DiffuseView(Context context) {
        this(context, null);
    }

    public DiffuseView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public DiffuseView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f8481e = getResources().getColor(R$color.alphawhite);
        this.f8485i = 300;
        this.f8487k = false;
        this.f8488l = new ArrayList();
        this.f8489m = new ArrayList();
        m27434a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.DiffuseView, i, 0);
        this.f8480d = obtainStyledAttributes.getColor(0, this.f8480d);
        this.f8481e = obtainStyledAttributes.getColor(1, this.f8481e);
        this.f8483g = obtainStyledAttributes.getFloat(3, this.f8483g);
        this.f8484h = obtainStyledAttributes.getInt(6, this.f8484h);
        this.f8485i = Integer.valueOf(obtainStyledAttributes.getInt(4, this.f8485i.intValue()));
        this.f8486j = obtainStyledAttributes.getInt(5, this.f8486j);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m27434a() {
        Paint paint = new Paint();
        this.f8490n = paint;
        paint.setAntiAlias(true);
        this.f8488l.add(220);
        this.f8489m.add(0);
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.f8490n.setColor(this.f8480d);
        int i = 0;
        while (true) {
            int i2 = 1;
            if (i >= this.f8488l.size()) {
                break;
            }
            Integer num = this.f8488l.get(i);
            this.f8490n.setAlpha(num.intValue());
            Integer num2 = this.f8489m.get(i);
            canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f8483g + num2.intValue(), this.f8490n);
            if (num.intValue() > 0 && num2.intValue() < this.f8485i.intValue()) {
                List<Integer> list = this.f8488l;
                if (num.intValue() - this.f8486j > 0) {
                    i2 = num.intValue() - this.f8486j;
                }
                list.set(i, Integer.valueOf(i2));
                this.f8489m.set(i, Integer.valueOf(num2.intValue() + this.f8486j));
            }
            i++;
        }
        List<Integer> list2 = this.f8489m;
        if (list2.get(list2.size() - 1).intValue() >= this.f8485i.intValue() / this.f8484h) {
            this.f8488l.add(220);
            this.f8489m.add(0);
        }
        if (this.f8489m.size() >= 20) {
            this.f8489m.remove(0);
            this.f8488l.remove(0);
        }
        this.f8490n.setColor(this.f8481e);
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, this.f8483g, this.f8490n);
        Bitmap bitmap = this.f8482f;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, (getWidth() / 2) - (this.f8482f.getWidth() / 2), (getHeight() / 2) - (this.f8482f.getHeight() / 2), this.f8490n);
        }
        if (this.f8487k) {
            invalidate();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            invalidate();
        }
    }

    public void setColor(int i) {
        this.f8480d = i;
    }

    public void setCoreColor(int i) {
        this.f8481e = i;
    }

    public void setCoreImage(int i) {
        this.f8482f = BitmapFactory.decodeResource(getResources(), i);
    }

    public void setCoreRadius(int i) {
        this.f8483g = i;
    }

    public void setDiffuseSpeed(int i) {
        this.f8486j = i;
    }

    public void setDiffuseWidth(int i) {
        this.f8484h = i;
    }

    public void setMaxWidth(int i) {
        this.f8485i = Integer.valueOf(i);
    }
}
