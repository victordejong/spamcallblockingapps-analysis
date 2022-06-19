package com.allinone.callerid.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.allinone.callerid.R$attr;
import com.allinone.callerid.R$color;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.util.C3719c1;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3774j;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/SideBar.class */
public class SideBar extends View {

    /* renamed from: d */
    public static String[] f8644d = {"☆", "#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};

    /* renamed from: e */
    private AbstractC2441a f8645e;

    /* renamed from: f */
    private int f8646f = -1;

    /* renamed from: g */
    private Paint f8647g = new Paint();

    /* renamed from: h */
    private TextView f8648h;

    /* renamed from: i */
    private int f8649i;

    /* renamed from: j */
    private int f8650j;

    /* renamed from: k */
    private int f8651k;

    /* renamed from: l */
    private Typeface f8652l;

    /* renamed from: m */
    private float f8653m;

    /* renamed from: com.allinone.callerid.customview.SideBar$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/customview/SideBar$a.class */
    public interface AbstractC2441a {
        /* renamed from: a */
        void mo25305a(String str);
    }

    public SideBar(Context context) {
        super(context);
        m27365a(context);
    }

    public SideBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m27365a(context);
    }

    public SideBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m27365a(context);
    }

    /* renamed from: a */
    public void m27365a(Context context) {
        this.f8650j = C3719c1.m24432a(context, R$attr.color_999999, R$color.color_999999);
        this.f8651k = C3719c1.m24432a(context, R$attr.color_action, 2131099706);
        this.f8649i = C3719c1.m24431b(context, R$attr.sidebar_background, R$drawable.sidebar_background);
        this.f8652l = C3739f1.m24359b();
        this.f8653m = C3774j.m24168b(context, 13.0f);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        float y = motionEvent.getY();
        int i = this.f8646f;
        AbstractC2441a abstractC2441a = this.f8645e;
        int height = (int) ((y / getHeight()) * f8644d.length);
        if (action == 1) {
            setBackgroundDrawable(new ColorDrawable(0));
            this.f8646f = -1;
            invalidate();
            TextView textView = this.f8648h;
            if (textView == null) {
                return true;
            }
            textView.setVisibility(4);
            return true;
        }
        setBackgroundResource(this.f8649i);
        if (i == height || height < 0) {
            return true;
        }
        String[] strArr = f8644d;
        if (height >= strArr.length) {
            return true;
        }
        if (abstractC2441a != null) {
            abstractC2441a.mo25305a(strArr[height]);
        }
        TextView textView2 = this.f8648h;
        if (textView2 != null) {
            textView2.setText(f8644d[height]);
            this.f8648h.setVisibility(0);
        }
        this.f8646f = height;
        invalidate();
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int width = getWidth();
        float f = height * 1.0f;
        String[] strArr = f8644d;
        float length = (f - ((f / strArr.length) / 2.0f)) / strArr.length;
        for (int i = 0; i < f8644d.length; i++) {
            this.f8647g.setColor(this.f8650j);
            this.f8647g.setTypeface(this.f8652l);
            this.f8647g.setAntiAlias(true);
            this.f8647g.setTextSize(this.f8653m);
            if (i == this.f8646f) {
                this.f8647g.setColor(this.f8651k);
                this.f8647g.setFakeBoldText(true);
            }
            canvas.drawText(f8644d[i], (width / 2) - (this.f8647g.measureText(f8644d[i]) / 2.0f), (i * length) + length, this.f8647g);
            this.f8647g.reset();
        }
    }

    public void setOnTouchingLetterChangedListener(AbstractC2441a abstractC2441a) {
        this.f8645e = abstractC2441a;
    }

    public void setTextView(TextView textView) {
        this.f8648h = textView;
    }
}
