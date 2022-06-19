package com.mglab.scm.intro;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity_ViewBinding.class */
public class IntroActivity_ViewBinding implements Unbinder {

    /* renamed from: b */
    public IntroActivity f7314b;

    /* renamed from: c */
    public View f7315c;

    /* renamed from: d */
    public View f7316d;

    /* renamed from: com.mglab.scm.intro.IntroActivity_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity_ViewBinding$a.class */
    public class C1987a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ IntroActivity f7317c;

        public C1987a(IntroActivity_ViewBinding introActivity_ViewBinding, IntroActivity introActivity) {
            this.f7317c = introActivity;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7317c.nextClick();
        }
    }

    /* renamed from: com.mglab.scm.intro.IntroActivity_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/IntroActivity_ViewBinding$b.class */
    public class C1988b extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ IntroActivity f7318c;

        public C1988b(IntroActivity_ViewBinding introActivity_ViewBinding, IntroActivity introActivity) {
            this.f7318c = introActivity;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7318c.backClick();
        }
    }

    public IntroActivity_ViewBinding(IntroActivity introActivity, View view) {
        this.f7314b = introActivity;
        introActivity.progress1 = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296950, "field 'progress1'"), 2131296950, "field 'progress1'", ImageView.class);
        introActivity.progress2 = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296951, "field 'progress2'"), 2131296951, "field 'progress2'", ImageView.class);
        introActivity.progress3 = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296952, "field 'progress3'"), 2131296952, "field 'progress3'", ImageView.class);
        introActivity.progress4 = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296955, "field 'progress4'"), 2131296955, "field 'progress4'", ImageView.class);
        introActivity.progress5 = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296956, "field 'progress5'"), 2131296956, "field 'progress5'", ImageView.class);
        View m7347b = C0815c.m7347b(view, 2131296876, "field 'next' and method 'nextClick'");
        introActivity.next = (TextView) C0815c.m7348a(m7347b, 2131296876, "field 'next'", TextView.class);
        this.f7315c = m7347b;
        m7347b.setOnClickListener(new C1987a(this, introActivity));
        View m7347b2 = C0815c.m7347b(view, 2131296355, "field 'back' and method 'backClick'");
        introActivity.back = (TextView) C0815c.m7348a(m7347b2, 2131296355, "field 'back'", TextView.class);
        this.f7316d = m7347b2;
        m7347b2.setOnClickListener(new C1988b(this, introActivity));
        introActivity.intro_bar_linear_layout = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296691, "field 'intro_bar_linear_layout'"), 2131296691, "field 'intro_bar_linear_layout'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        IntroActivity introActivity = this.f7314b;
        if (introActivity != null) {
            this.f7314b = null;
            introActivity.progress1 = null;
            introActivity.progress2 = null;
            introActivity.progress3 = null;
            introActivity.progress4 = null;
            introActivity.progress5 = null;
            introActivity.next = null;
            introActivity.back = null;
            introActivity.intro_bar_linear_layout = null;
            this.f7315c.setOnClickListener(null);
            this.f7315c = null;
            this.f7316d.setOnClickListener(null);
            this.f7316d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
