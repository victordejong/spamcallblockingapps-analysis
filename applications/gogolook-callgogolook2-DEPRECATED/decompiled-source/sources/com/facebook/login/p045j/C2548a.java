package com.facebook.login.p045j;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.login.R$drawable;
import com.facebook.login.R$id;
import com.facebook.login.R$layout;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.login.j.a */
/* loaded from: classes-dex2jar.jar:com/facebook/login/j/a.class */
public class C2548a {

    /* renamed from: a */
    public final String f3364a;

    /* renamed from: b */
    public final WeakReference<View> f3365b;

    /* renamed from: c */
    public final Context f3366c;

    /* renamed from: d */
    public C2552d f3367d;

    /* renamed from: e */
    public PopupWindow f3368e;

    /* renamed from: f */
    public EnumC2553e f3369f = EnumC2553e.BLUE;

    /* renamed from: g */
    public long f3370g = 6000;

    /* renamed from: h */
    public final ViewTreeObserver.OnScrollChangedListener f3371h = new ViewTreeObserver$OnScrollChangedListenerC2549a();

    /* renamed from: com.facebook.login.j.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j/a$a.class */
    public class ViewTreeObserver$OnScrollChangedListenerC2549a implements ViewTreeObserver.OnScrollChangedListener {
        public ViewTreeObserver$OnScrollChangedListenerC2549a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (C2548a.this.f3365b.get() != null && C2548a.this.f3368e != null && C2548a.this.f3368e.isShowing()) {
                if (C2548a.this.f3368e.isAboveAnchor()) {
                    C2548a.this.f3367d.m34326b();
                } else {
                    C2548a.this.f3367d.m34324c();
                }
            }
        }
    }

    /* renamed from: com.facebook.login.j.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j/a$b.class */
    public class RunnableC2550b implements Runnable {
        public RunnableC2550b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2548a.this.m34338a();
        }
    }

    /* renamed from: com.facebook.login.j.a$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j/a$c.class */
    public class View$OnClickListenerC2551c implements View.OnClickListener {
        public View$OnClickListenerC2551c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C2548a.this.m34338a();
        }
    }

    /* renamed from: com.facebook.login.j.a$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j/a$d.class */
    public class C2552d extends FrameLayout {

        /* renamed from: a */
        public ImageView f3375a;

        /* renamed from: b */
        public ImageView f3376b;

        /* renamed from: c */
        public View f3377c;

        /* renamed from: d */
        public ImageView f3378d;

        public C2552d(C2548a aVar, Context context) {
            super(context);
            m34328a();
        }

        /* renamed from: a */
        public final void m34328a() {
            LayoutInflater.from(getContext()).inflate(R$layout.com_facebook_tooltip_bubble, this);
            this.f3375a = (ImageView) findViewById(R$id.com_facebook_tooltip_bubble_view_top_pointer);
            this.f3376b = (ImageView) findViewById(R$id.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.f3377c = findViewById(R$id.com_facebook_body_frame);
            this.f3378d = (ImageView) findViewById(R$id.com_facebook_button_xout);
        }

        /* renamed from: b */
        public void m34326b() {
            this.f3375a.setVisibility(4);
            this.f3376b.setVisibility(0);
        }

        /* renamed from: c */
        public void m34324c() {
            this.f3375a.setVisibility(0);
            this.f3376b.setVisibility(4);
        }
    }

    /* renamed from: com.facebook.login.j.a$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/j/a$e.class */
    public enum EnumC2553e {
        BLUE,
        BLACK
    }

    public C2548a(String str, View view) {
        this.f3364a = str;
        this.f3365b = new WeakReference<>(view);
        this.f3366c = view.getContext();
    }

    /* renamed from: a */
    public void m34338a() {
        m34330d();
        PopupWindow popupWindow = this.f3368e;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* renamed from: a */
    public void m34337a(long j) {
        this.f3370g = j;
    }

    /* renamed from: a */
    public void m34336a(EnumC2553e eVar) {
        this.f3369f = eVar;
    }

    /* renamed from: b */
    public final void m34334b() {
        m34330d();
        if (this.f3365b.get() != null) {
            this.f3365b.get().getViewTreeObserver().addOnScrollChangedListener(this.f3371h);
        }
    }

    /* renamed from: c */
    public void m34332c() {
        if (this.f3365b.get() != null) {
            this.f3367d = new C2552d(this, this.f3366c);
            ((TextView) this.f3367d.findViewById(R$id.com_facebook_tooltip_bubble_view_text_body)).setText(this.f3364a);
            if (this.f3369f == EnumC2553e.BLUE) {
                this.f3367d.f3377c.setBackgroundResource(R$drawable.com_facebook_tooltip_blue_background);
                this.f3367d.f3376b.setImageResource(R$drawable.com_facebook_tooltip_blue_bottomnub);
                this.f3367d.f3375a.setImageResource(R$drawable.com_facebook_tooltip_blue_topnub);
                this.f3367d.f3378d.setImageResource(R$drawable.com_facebook_tooltip_blue_xout);
            } else {
                this.f3367d.f3377c.setBackgroundResource(R$drawable.com_facebook_tooltip_black_background);
                this.f3367d.f3376b.setImageResource(R$drawable.com_facebook_tooltip_black_bottomnub);
                this.f3367d.f3375a.setImageResource(R$drawable.com_facebook_tooltip_black_topnub);
                this.f3367d.f3378d.setImageResource(R$drawable.com_facebook_tooltip_black_xout);
            }
            View decorView = ((Activity) this.f3366c).getWindow().getDecorView();
            int width = decorView.getWidth();
            int height = decorView.getHeight();
            m34334b();
            this.f3367d.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
            C2552d dVar = this.f3367d;
            this.f3368e = new PopupWindow(dVar, dVar.getMeasuredWidth(), this.f3367d.getMeasuredHeight());
            this.f3368e.showAsDropDown(this.f3365b.get());
            m34329e();
            if (this.f3370g > 0) {
                this.f3367d.postDelayed(new RunnableC2550b(), this.f3370g);
            }
            this.f3368e.setTouchable(true);
            this.f3367d.setOnClickListener(new View$OnClickListenerC2551c());
        }
    }

    /* renamed from: d */
    public final void m34330d() {
        if (this.f3365b.get() != null) {
            this.f3365b.get().getViewTreeObserver().removeOnScrollChangedListener(this.f3371h);
        }
    }

    /* renamed from: e */
    public final void m34329e() {
        PopupWindow popupWindow = this.f3368e;
        if (popupWindow != null && popupWindow.isShowing()) {
            if (this.f3368e.isAboveAnchor()) {
                this.f3367d.m34326b();
            } else {
                this.f3367d.m34324c();
            }
        }
    }
}
