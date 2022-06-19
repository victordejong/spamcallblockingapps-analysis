package com.github.jdsjlzx.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.github.jdsjlzx.progressindicator.AVLoadingIndicatorView;
import java.util.Date;
import p078c.p081b.p082a.C1819b;
import p078c.p081b.p082a.C1820c;
import p078c.p081b.p082a.C1821d;
import p078c.p081b.p082a.p083g.AbstractC1825b;
/* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/ArrowRefreshHeader.class */
public class ArrowRefreshHeader extends LinearLayout implements AbstractC1825b {

    /* renamed from: d */
    private LinearLayout f13930d;

    /* renamed from: e */
    private ImageView f13931e;

    /* renamed from: f */
    private SimpleViewSwitcher f13932f;

    /* renamed from: g */
    private TextView f13933g;

    /* renamed from: h */
    private int f13934h = 0;

    /* renamed from: i */
    private TextView f13935i;

    /* renamed from: j */
    private Animation f13936j;

    /* renamed from: k */
    private Animation f13937k;

    /* renamed from: l */
    public int f13938l;

    /* renamed from: m */
    private int f13939m;

    /* renamed from: com.github.jdsjlzx.view.ArrowRefreshHeader$a */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/ArrowRefreshHeader$a.class */
    class RunnableC4580a implements Runnable {
        RunnableC4580a() {
            ArrowRefreshHeader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrowRefreshHeader.this.m22199i();
        }
    }

    /* renamed from: com.github.jdsjlzx.view.ArrowRefreshHeader$b */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/ArrowRefreshHeader$b.class */
    public class RunnableC4581b implements Runnable {
        RunnableC4581b() {
            ArrowRefreshHeader.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrowRefreshHeader.this.setState(0);
        }
    }

    /* renamed from: com.github.jdsjlzx.view.ArrowRefreshHeader$c */
    /* loaded from: classes-dex2jar.jar:com/github/jdsjlzx/view/ArrowRefreshHeader$c.class */
    public class C4582c implements ValueAnimator.AnimatorUpdateListener {
        C4582c() {
            ArrowRefreshHeader.this = r4;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ArrowRefreshHeader.this.setVisibleHeight(((Integer) valueAnimator.getAnimatedValue()).intValue());
        }
    }

    public ArrowRefreshHeader(Context context) {
        super(context);
        m22202f();
    }

    public ArrowRefreshHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m22202f();
    }

    /* renamed from: e */
    private View m22203e(int i) {
        AVLoadingIndicatorView aVLoadingIndicatorView = (AVLoadingIndicatorView) LayoutInflater.from(getContext()).inflate(C1820c.layout_indicator_view, (ViewGroup) null);
        aVLoadingIndicatorView.setIndicatorId(i);
        aVLoadingIndicatorView.setIndicatorColor(-7829368);
        return aVLoadingIndicatorView;
    }

    /* renamed from: f */
    private void m22202f() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 0);
        setLayoutParams(layoutParams);
        setPadding(0, 0, 0, 0);
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(C1820c.listview_header, (ViewGroup) null);
        this.f13930d = linearLayout;
        addView(linearLayout, new LinearLayout.LayoutParams(-1, 0));
        setGravity(80);
        this.f13931e = (ImageView) findViewById(C1819b.listview_header_arrow);
        this.f13933g = (TextView) findViewById(C1819b.refresh_status_textview);
        SimpleViewSwitcher simpleViewSwitcher = (SimpleViewSwitcher) findViewById(C1819b.listview_header_progressbar);
        this.f13932f = simpleViewSwitcher;
        simpleViewSwitcher.setView(m22203e(22));
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f13936j = rotateAnimation;
        rotateAnimation.setDuration(180L);
        this.f13936j.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f13937k = rotateAnimation2;
        rotateAnimation2.setDuration(180L);
        this.f13937k.setFillAfter(true);
        this.f13935i = (TextView) findViewById(C1819b.last_refresh_time);
        measure(-2, -2);
        this.f13938l = getMeasuredHeight();
        this.f13939m = 17170432;
    }

    /* renamed from: j */
    private void m22198j(int i) {
        ValueAnimator ofInt = ValueAnimator.ofInt(getVisibleHeight(), i);
        ofInt.setDuration(300L).start();
        ofInt.addUpdateListener(new C4582c());
        ofInt.start();
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1825b
    /* renamed from: a */
    public void mo22207a(float f, float f2) {
        if (getVisibleHeight() > 0 || f > 0.0f) {
            setVisibleHeight(((int) f) + getVisibleHeight());
            if (this.f13934h > 1) {
                return;
            }
            if (getVisibleHeight() > this.f13938l) {
                m22201g();
            } else {
                m22200h();
            }
        }
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1825b
    /* renamed from: b */
    public boolean mo22206b() {
        boolean z;
        int i;
        int visibleHeight = getVisibleHeight();
        if (getVisibleHeight() <= this.f13938l || this.f13934h >= 2) {
            z = false;
        } else {
            setState(2);
            z = true;
        }
        if (this.f13934h == 2 && visibleHeight > (i = this.f13938l)) {
            m22198j(i);
        }
        if (this.f13934h != 2) {
            m22198j(0);
        }
        if (this.f13934h == 2) {
            m22198j(this.f13938l);
        }
        return z;
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1825b
    /* renamed from: c */
    public void mo22205c() {
        this.f13935i.setText(m22204d(new Date()));
        setState(3);
        new Handler().postDelayed(new RunnableC4580a(), 200L);
    }

    /* renamed from: d */
    public String m22204d(Date date) {
        int currentTimeMillis = (int) ((System.currentTimeMillis() - date.getTime()) / 1000);
        if (currentTimeMillis == 0) {
            return getContext().getResources().getString(C1821d.text_just);
        }
        if (currentTimeMillis > 0 && currentTimeMillis < 60) {
            return currentTimeMillis + getContext().getResources().getString(C1821d.text_seconds_ago);
        } else if (currentTimeMillis >= 60 && currentTimeMillis < 3600) {
            return Math.max(currentTimeMillis / 60, 1) + getContext().getResources().getString(C1821d.text_minute_ago);
        } else if (currentTimeMillis >= 3600 && currentTimeMillis < 86400) {
            return (currentTimeMillis / 3600) + getContext().getResources().getString(C1821d.text_hour_ago);
        } else if (currentTimeMillis >= 86400 && currentTimeMillis < 2592000) {
            int i = currentTimeMillis / 86400;
            return i + getContext().getResources().getString(C1821d.text_day_ago);
        } else if (currentTimeMillis < 2592000 || currentTimeMillis >= 31104000) {
            return (currentTimeMillis / 31104000) + getContext().getResources().getString(C1821d.text_year_ago);
        } else {
            return (currentTimeMillis / 2592000) + getContext().getResources().getString(C1821d.text_month_ago);
        }
    }

    /* renamed from: g */
    public void m22201g() {
        setState(1);
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1825b
    public View getHeaderView() {
        return this;
    }

    public int getState() {
        return this.f13934h;
    }

    @Override // p078c.p081b.p082a.p083g.AbstractC1825b
    public int getVisibleHeight() {
        return ((LinearLayout.LayoutParams) this.f13930d.getLayoutParams()).height;
    }

    /* renamed from: h */
    public void m22200h() {
        setState(0);
    }

    /* renamed from: i */
    public void m22199i() {
        m22198j(0);
        new Handler().postDelayed(new RunnableC4581b(), 500L);
    }

    public void setArrowImageView(int i) {
        this.f13931e.setImageResource(i);
    }

    public void setHintTextColor(int i) {
        this.f13939m = i;
    }

    public void setIndicatorColor(int i) {
        if (this.f13932f.getChildAt(0) instanceof AVLoadingIndicatorView) {
            ((AVLoadingIndicatorView) this.f13932f.getChildAt(0)).setIndicatorColor(i);
        }
    }

    public void setProgressStyle(int i) {
        if (i != -1) {
            this.f13932f.setView(m22203e(i));
            return;
        }
        this.f13932f.setView(new ProgressBar(getContext(), null, 16842871));
    }

    public void setState(int i) {
        if (i == this.f13934h) {
            return;
        }
        if (i == 2) {
            this.f13931e.clearAnimation();
            this.f13931e.setVisibility(4);
            this.f13932f.setVisibility(0);
            m22198j(this.f13938l);
        } else if (i == 3) {
            this.f13931e.setVisibility(4);
            this.f13932f.setVisibility(4);
        } else {
            this.f13931e.setVisibility(0);
            this.f13932f.setVisibility(4);
        }
        this.f13933g.setTextColor(C0586a.m33350d(getContext(), this.f13939m));
        if (i == 0) {
            if (this.f13934h == 1) {
                this.f13931e.startAnimation(this.f13937k);
            }
            if (this.f13934h == 2) {
                this.f13931e.clearAnimation();
            }
            this.f13933g.setText(C1821d.listview_header_hint_normal);
        } else if (i != 1) {
            if (i == 2) {
                this.f13933g.setText(C1821d.refreshing);
            } else if (i == 3) {
                this.f13933g.setText(C1821d.refresh_done);
            }
        } else if (this.f13934h != 1) {
            this.f13931e.clearAnimation();
            this.f13931e.startAnimation(this.f13936j);
            this.f13933g.setText(C1821d.listview_header_hint_release);
        }
        this.f13934h = i;
    }

    public void setViewBackgroundColor(int i) {
        setBackgroundColor(C0586a.m33350d(getContext(), i));
    }

    public void setVisibleHeight(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f13930d.getLayoutParams();
        layoutParams.height = i2;
        this.f13930d.setLayoutParams(layoutParams);
    }
}
