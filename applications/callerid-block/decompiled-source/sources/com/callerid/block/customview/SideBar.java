package com.callerid.block.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.callerid.block.R$attr;
import com.callerid.block.R$color;
import com.callerid.block.R$drawable;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1178g;
import com.callerid.block.util.C1205p0;
import com.callerid.block.util.C1210r0;
/* loaded from: classes-dex2jar.jar:com/callerid/block/customview/SideBar.class */
public class SideBar extends View {

    /* renamed from: k */
    public static String[] f4256k = {"★", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#"};

    /* renamed from: b */
    private AbstractC0938a f4257b;

    /* renamed from: c */
    private int f4258c = -1;

    /* renamed from: d */
    private Paint f4259d = new Paint();

    /* renamed from: e */
    private TextView f4260e;

    /* renamed from: f */
    private int f4261f;

    /* renamed from: g */
    private int f4262g;

    /* renamed from: h */
    private int f4263h;

    /* renamed from: i */
    private Typeface f4264i;

    /* renamed from: j */
    private float f4265j;

    /* renamed from: com.callerid.block.customview.SideBar$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/customview/SideBar$a.class */
    public interface AbstractC0938a {
        /* renamed from: a */
        void m10511a(String str);
    }

    public SideBar(Context context) {
        super(context);
        m10512a();
    }

    public SideBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m10512a();
    }

    public SideBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m10512a();
    }

    /* renamed from: a */
    public void m10512a() {
        this.f4262g = C1205p0.m9636a(EZCallApplication.m10163c(), R$attr.color_999999, R$color.color_999999);
        this.f4263h = C1205p0.m9636a(EZCallApplication.m10163c(), R$attr.color_action, R$color.colorPrimary);
        this.f4261f = C1205p0.m9635b(EZCallApplication.m10163c(), R$attr.sidebar_background, R$drawable.sidebar_background);
        this.f4264i = C1210r0.m9624b();
        this.f4265j = C1178g.m9845c(EZCallApplication.m10163c(), 13.0f);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        int i = this.f4258c;
        AbstractC0938a aVar = this.f4257b;
        int height = (int) ((y / getHeight()) * f4256k.length);
        if (action != 1) {
            setBackgroundResource(this.f4261f);
            if (i == height || height < 0) {
                return true;
            }
            String[] strArr = f4256k;
            if (height >= strArr.length) {
                return true;
            }
            if (aVar != null) {
                aVar.m10511a(strArr[height]);
            }
            TextView textView = this.f4260e;
            if (textView != null) {
                textView.setText(f4256k[height]);
                this.f4260e.setVisibility(0);
            }
            this.f4258c = height;
            invalidate();
            return true;
        }
        setBackgroundDrawable(new ColorDrawable(0));
        this.f4258c = -1;
        invalidate();
        TextView textView2 = this.f4260e;
        if (textView2 == null) {
            return true;
        }
        textView2.setVisibility(4);
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int width = getWidth();
        float f = height * 1.0f;
        String[] strArr = f4256k;
        float length = (f - ((f / strArr.length) / 2.0f)) / strArr.length;
        for (int i = 0; i < f4256k.length; i++) {
            this.f4259d.setColor(this.f4262g);
            this.f4259d.setTypeface(this.f4264i);
            this.f4259d.setAntiAlias(true);
            this.f4259d.setTextSize(this.f4265j);
            if (i == this.f4258c) {
                this.f4259d.setColor(this.f4263h);
                this.f4259d.setFakeBoldText(true);
            }
            canvas.drawText(f4256k[i], (width / 2) - (this.f4259d.measureText(f4256k[i]) / 2.0f), (i * length) + length, this.f4259d);
            this.f4259d.reset();
        }
    }

    public void setOnTouchingLetterChangedListener(AbstractC0938a aVar) {
        this.f4257b = aVar;
    }

    public void setTextView(TextView textView) {
        this.f4260e = textView;
    }
}
