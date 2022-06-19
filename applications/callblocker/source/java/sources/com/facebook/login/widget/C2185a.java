package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.login.C2164q;
import java.lang.ref.WeakReference;
/* renamed from: com.facebook.login.widget.a */
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/a.class */
public class C2185a {

    /* renamed from: a */
    private final String f6386a;

    /* renamed from: b */
    private final WeakReference<View> f6387b;

    /* renamed from: c */
    private final Context f6388c;

    /* renamed from: d */
    private C2189a f6389d;

    /* renamed from: e */
    private PopupWindow f6390e;

    /* renamed from: f */
    private EnumC2190b f6391f = EnumC2190b.BLUE;

    /* renamed from: g */
    private long f6392g = 6000;

    /* renamed from: h */
    private final ViewTreeObserver.OnScrollChangedListener f6393h = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.a.1
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            if (C2185a.this.f6387b.get() == null || C2185a.this.f6390e == null || !C2185a.this.f6390e.isShowing()) {
                return;
            }
            if (C2185a.this.f6390e.isAboveAnchor()) {
                C2185a.this.f6389d.m15011b();
            } else {
                C2185a.this.f6389d.m15013a();
            }
        }
    };

    /* renamed from: com.facebook.login.widget.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/a$a.class */
    public class C2189a extends FrameLayout {

        /* renamed from: b */
        private ImageView f6398b;

        /* renamed from: c */
        private ImageView f6399c;

        /* renamed from: d */
        private View f6400d;

        /* renamed from: e */
        private ImageView f6401e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2189a(Context context) {
            super(context);
            C2185a.this = r4;
            m15009c();
        }

        /* renamed from: c */
        private void m15009c() {
            LayoutInflater.from(getContext()).inflate(C2164q.C2167c.com_facebook_tooltip_bubble, this);
            this.f6398b = (ImageView) findViewById(C2164q.C2166b.com_facebook_tooltip_bubble_view_top_pointer);
            this.f6399c = (ImageView) findViewById(C2164q.C2166b.com_facebook_tooltip_bubble_view_bottom_pointer);
            this.f6400d = findViewById(C2164q.C2166b.com_facebook_body_frame);
            this.f6401e = (ImageView) findViewById(C2164q.C2166b.com_facebook_button_xout);
        }

        /* renamed from: a */
        public void m15013a() {
            this.f6398b.setVisibility(0);
            this.f6399c.setVisibility(4);
        }

        /* renamed from: b */
        public void m15011b() {
            this.f6398b.setVisibility(4);
            this.f6399c.setVisibility(0);
        }
    }

    /* renamed from: com.facebook.login.widget.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/a$b.class */
    public enum EnumC2190b {
        BLUE,
        BLACK
    }

    public C2185a(String str, View view) {
        this.f6386a = str;
        this.f6387b = new WeakReference<>(view);
        this.f6388c = view.getContext();
    }

    /* renamed from: c */
    private void m15017c() {
        if (this.f6390e == null || !this.f6390e.isShowing()) {
            return;
        }
        if (this.f6390e.isAboveAnchor()) {
            this.f6389d.m15011b();
        } else {
            this.f6389d.m15013a();
        }
    }

    /* renamed from: d */
    private void m15015d() {
        m15014e();
        if (this.f6387b.get() != null) {
            this.f6387b.get().getViewTreeObserver().addOnScrollChangedListener(this.f6393h);
        }
    }

    /* renamed from: e */
    private void m15014e() {
        if (this.f6387b.get() != null) {
            this.f6387b.get().getViewTreeObserver().removeOnScrollChangedListener(this.f6393h);
        }
    }

    /* renamed from: a */
    public void m15023a() {
        if (this.f6387b.get() != null) {
            this.f6389d = new C2189a(this.f6388c);
            ((TextView) this.f6389d.findViewById(C2164q.C2166b.com_facebook_tooltip_bubble_view_text_body)).setText(this.f6386a);
            if (this.f6391f == EnumC2190b.BLUE) {
                this.f6389d.f6400d.setBackgroundResource(C2164q.C2165a.com_facebook_tooltip_blue_background);
                this.f6389d.f6399c.setImageResource(C2164q.C2165a.com_facebook_tooltip_blue_bottomnub);
                this.f6389d.f6398b.setImageResource(C2164q.C2165a.com_facebook_tooltip_blue_topnub);
                this.f6389d.f6401e.setImageResource(C2164q.C2165a.com_facebook_tooltip_blue_xout);
            } else {
                this.f6389d.f6400d.setBackgroundResource(C2164q.C2165a.com_facebook_tooltip_black_background);
                this.f6389d.f6399c.setImageResource(C2164q.C2165a.com_facebook_tooltip_black_bottomnub);
                this.f6389d.f6398b.setImageResource(C2164q.C2165a.com_facebook_tooltip_black_topnub);
                this.f6389d.f6401e.setImageResource(C2164q.C2165a.com_facebook_tooltip_black_xout);
            }
            View decorView = ((Activity) this.f6388c).getWindow().getDecorView();
            int width = decorView.getWidth();
            int height = decorView.getHeight();
            m15015d();
            this.f6389d.measure(View.MeasureSpec.makeMeasureSpec(width, RecyclerView.UNDEFINED_DURATION), View.MeasureSpec.makeMeasureSpec(height, RecyclerView.UNDEFINED_DURATION));
            this.f6390e = new PopupWindow(this.f6389d, this.f6389d.getMeasuredWidth(), this.f6389d.getMeasuredHeight());
            this.f6390e.showAsDropDown(this.f6387b.get());
            m15017c();
            if (this.f6392g > 0) {
                this.f6389d.postDelayed(new Runnable() { // from class: com.facebook.login.widget.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C2185a.this.m15019b();
                    }
                }, this.f6392g);
            }
            this.f6390e.setTouchable(true);
            this.f6389d.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    C2185a.this.m15019b();
                }
            });
        }
    }

    /* renamed from: a */
    public void m15022a(long j) {
        this.f6392g = j;
    }

    /* renamed from: a */
    public void m15021a(EnumC2190b enumC2190b) {
        this.f6391f = enumC2190b;
    }

    /* renamed from: b */
    public void m15019b() {
        m15014e();
        if (this.f6390e != null) {
            this.f6390e.dismiss();
        }
    }
}
