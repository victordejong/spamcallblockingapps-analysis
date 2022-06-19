package com.pubmatic.sdk.monitor;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.GradientDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import com.pubmatic.sdk.common.utility.POBUtils;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorView.class */
public class POBMonitorView extends RelativeLayout implements View.OnTouchListener {
    public static final int BACKGROUND_COLOR = Color.parseColor("#3F4047");

    /* renamed from: a */
    float f612a;

    /* renamed from: b */
    float f613b;

    /* renamed from: c */
    float f614c;

    /* renamed from: d */
    float f615d;

    /* renamed from: e */
    Button f616e;

    /* renamed from: f */
    Point f617f;

    /* renamed from: g */
    private ViewGroup f618g;

    /* renamed from: h */
    private AbstractC1904a f619h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.monitor.POBMonitorView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/monitor/POBMonitorView$a.class */
    public interface AbstractC1904a {
        /* renamed from: a */
        void mo960a();
    }

    public POBMonitorView(Activity activity, Point point) {
        super(activity);
        this.f617f = point;
        this.f618g = (ViewGroup) activity.findViewById(16908290);
        m961a(POBUtils.convertDpToPixel(90), POBUtils.convertDpToPixel(90));
    }

    /* renamed from: a */
    private void m961a(int i, int i2) {
        Button button = new Button(getContext());
        button.setText("≡");
        button.setTextSize(44.0f);
        button.setTextColor(-1);
        button.setOnTouchListener(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(POBUtils.convertDpToPixel(12));
        gradientDrawable.setColor(BACKGROUND_COLOR);
        button.setBackground(gradientDrawable);
        Point point = this.f617f;
        if (point.x == 0 && point.y == 0) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            layoutParams.rightMargin = POBUtils.convertDpToPixel(80);
            layoutParams.bottomMargin = POBUtils.convertDpToPixel(100);
        }
        button.setX(this.f617f.x);
        button.setY(this.f617f.y);
        this.f616e = button;
        addView(button, layoutParams);
        this.f618g.addView(this, 0, new RelativeLayout.LayoutParams(-1, -1));
    }

    public Point getTouchPointLocation() {
        Point point = new Point();
        point.set((int) this.f616e.getX(), (int) this.f616e.getY());
        return point;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        AbstractC1904a abstractC1904a;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f614c = view.getX();
            this.f615d = view.getY();
            this.f612a = this.f614c - motionEvent.getRawX();
            this.f613b = this.f615d - motionEvent.getRawY();
            return true;
        } else if (actionMasked != 1) {
            if (actionMasked != 2) {
                return false;
            }
            view.setY(motionEvent.getRawY() + this.f613b);
            view.setX(motionEvent.getRawX() + this.f612a);
            return true;
        } else {
            float x = view.getX();
            float y = view.getY();
            if (Math.abs(x - this.f614c) > 20.0f || Math.abs(y - this.f615d) > 20.0f || (abstractC1904a = this.f619h) == null) {
                return true;
            }
            abstractC1904a.mo960a();
            return true;
        }
    }

    public void setListener(AbstractC1904a abstractC1904a) {
        this.f619h = abstractC1904a;
    }
}
