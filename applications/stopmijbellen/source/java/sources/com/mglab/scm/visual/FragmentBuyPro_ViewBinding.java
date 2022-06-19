package com.mglab.scm.visual;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding.class */
public class FragmentBuyPro_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentBuyPro f7397b;

    /* renamed from: c */
    public View f7398c;

    /* renamed from: d */
    public View f7399d;

    /* renamed from: e */
    public View f7400e;

    /* renamed from: f */
    public View f7401f;

    /* renamed from: g */
    public View f7402g;

    /* renamed from: com.mglab.scm.visual.FragmentBuyPro_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding$a.class */
    public class C1999a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBuyPro f7403c;

        public C1999a(FragmentBuyPro_ViewBinding fragmentBuyPro_ViewBinding, FragmentBuyPro fragmentBuyPro) {
            this.f7403c = fragmentBuyPro;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7403c.onClick1();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBuyPro_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding$b.class */
    public class C2000b extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBuyPro f7404c;

        public C2000b(FragmentBuyPro_ViewBinding fragmentBuyPro_ViewBinding, FragmentBuyPro fragmentBuyPro) {
            this.f7404c = fragmentBuyPro;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7404c.onClick2();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBuyPro_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding$c.class */
    public class C2001c extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBuyPro f7405c;

        public C2001c(FragmentBuyPro_ViewBinding fragmentBuyPro_ViewBinding, FragmentBuyPro fragmentBuyPro) {
            this.f7405c = fragmentBuyPro;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7405c.onClick3();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBuyPro_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding$d.class */
    public class C2002d extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBuyPro f7406c;

        public C2002d(FragmentBuyPro_ViewBinding fragmentBuyPro_ViewBinding, FragmentBuyPro fragmentBuyPro) {
            this.f7406c = fragmentBuyPro;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7406c.onClick4();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentBuyPro_ViewBinding$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentBuyPro_ViewBinding$e.class */
    public class C2003e extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentBuyPro f7407c;

        public C2003e(FragmentBuyPro_ViewBinding fragmentBuyPro_ViewBinding, FragmentBuyPro fragmentBuyPro) {
            this.f7407c = fragmentBuyPro;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7407c.onButtonContinuePurchaseClick();
        }
    }

    public FragmentBuyPro_ViewBinding(FragmentBuyPro fragmentBuyPro, View view) {
        this.f7397b = fragmentBuyPro;
        View m7347b = C0815c.m7347b(view, 2131296442, "field 'cardView1_1' and method 'onClick1'");
        fragmentBuyPro.cardView1_1 = (CardView) C0815c.m7348a(m7347b, 2131296442, "field 'cardView1_1'", CardView.class);
        this.f7398c = m7347b;
        m7347b.setOnClickListener(new C1999a(this, fragmentBuyPro));
        View m7347b2 = C0815c.m7347b(view, 2131296444, "field 'cardView2_1' and method 'onClick2'");
        fragmentBuyPro.cardView2_1 = (CardView) C0815c.m7348a(m7347b2, 2131296444, "field 'cardView2_1'", CardView.class);
        this.f7399d = m7347b2;
        m7347b2.setOnClickListener(new C2000b(this, fragmentBuyPro));
        View m7347b3 = C0815c.m7347b(view, 2131296446, "field 'cardView3_1' and method 'onClick3'");
        fragmentBuyPro.cardView3_1 = (CardView) C0815c.m7348a(m7347b3, 2131296446, "field 'cardView3_1'", CardView.class);
        this.f7400e = m7347b3;
        m7347b3.setOnClickListener(new C2001c(this, fragmentBuyPro));
        View m7347b4 = C0815c.m7347b(view, 2131296448, "field 'cardView4_1' and method 'onClick4'");
        fragmentBuyPro.cardView4_1 = (CardView) C0815c.m7348a(m7347b4, 2131296448, "field 'cardView4_1'", CardView.class);
        this.f7401f = m7347b4;
        m7347b4.setOnClickListener(new C2002d(this, fragmentBuyPro));
        fragmentBuyPro.textView1_1 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297115, "field 'textView1_1'"), 2131297115, "field 'textView1_1'", TextView.class);
        fragmentBuyPro.textView1_2 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297116, "field 'textView1_2'"), 2131297116, "field 'textView1_2'", TextView.class);
        fragmentBuyPro.textView1_3 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297117, "field 'textView1_3'"), 2131297117, "field 'textView1_3'", TextView.class);
        fragmentBuyPro.textView1_4 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297118, "field 'textView1_4'"), 2131297118, "field 'textView1_4'", TextView.class);
        fragmentBuyPro.textView1_5 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297119, "field 'textView1_5'"), 2131297119, "field 'textView1_5'", TextView.class);
        fragmentBuyPro.textView2_1 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297121, "field 'textView2_1'"), 2131297121, "field 'textView2_1'", TextView.class);
        fragmentBuyPro.textView2_2 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297122, "field 'textView2_2'"), 2131297122, "field 'textView2_2'", TextView.class);
        fragmentBuyPro.textView2_3 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297123, "field 'textView2_3'"), 2131297123, "field 'textView2_3'", TextView.class);
        fragmentBuyPro.textView2_4 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297124, "field 'textView2_4'"), 2131297124, "field 'textView2_4'", TextView.class);
        fragmentBuyPro.textView2_5 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297125, "field 'textView2_5'"), 2131297125, "field 'textView2_5'", TextView.class);
        fragmentBuyPro.textView3_1 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297127, "field 'textView3_1'"), 2131297127, "field 'textView3_1'", TextView.class);
        fragmentBuyPro.textView3_2 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297128, "field 'textView3_2'"), 2131297128, "field 'textView3_2'", TextView.class);
        fragmentBuyPro.textView3_3 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297129, "field 'textView3_3'"), 2131297129, "field 'textView3_3'", TextView.class);
        fragmentBuyPro.textView3_4 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297130, "field 'textView3_4'"), 2131297130, "field 'textView3_4'", TextView.class);
        fragmentBuyPro.textView3_5 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297131, "field 'textView3_5'"), 2131297131, "field 'textView3_5'", TextView.class);
        fragmentBuyPro.textView4_1 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297132, "field 'textView4_1'"), 2131297132, "field 'textView4_1'", TextView.class);
        fragmentBuyPro.textView4_2 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297133, "field 'textView4_2'"), 2131297133, "field 'textView4_2'", TextView.class);
        fragmentBuyPro.textView4_3 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297134, "field 'textView4_3'"), 2131297134, "field 'textView4_3'", TextView.class);
        fragmentBuyPro.textView4_4 = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297135, "field 'textView4_4'"), 2131297135, "field 'textView4_4'", TextView.class);
        fragmentBuyPro.progressLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296635, "field 'progressLL'"), 2131296635, "field 'progressLL'", LinearLayout.class);
        View m7347b5 = C0815c.m7347b(view, 2131296395, "field 'buttonContinuePurchase' and method 'onButtonContinuePurchaseClick'");
        fragmentBuyPro.buttonContinuePurchase = (Button) C0815c.m7348a(m7347b5, 2131296395, "field 'buttonContinuePurchase'", Button.class);
        this.f7402g = m7347b5;
        m7347b5.setOnClickListener(new C2003e(this, fragmentBuyPro));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentBuyPro fragmentBuyPro = this.f7397b;
        if (fragmentBuyPro != null) {
            this.f7397b = null;
            fragmentBuyPro.cardView1_1 = null;
            fragmentBuyPro.cardView2_1 = null;
            fragmentBuyPro.cardView3_1 = null;
            fragmentBuyPro.cardView4_1 = null;
            fragmentBuyPro.textView1_1 = null;
            fragmentBuyPro.textView1_2 = null;
            fragmentBuyPro.textView1_3 = null;
            fragmentBuyPro.textView1_4 = null;
            fragmentBuyPro.textView1_5 = null;
            fragmentBuyPro.textView2_1 = null;
            fragmentBuyPro.textView2_2 = null;
            fragmentBuyPro.textView2_3 = null;
            fragmentBuyPro.textView2_4 = null;
            fragmentBuyPro.textView2_5 = null;
            fragmentBuyPro.textView3_1 = null;
            fragmentBuyPro.textView3_2 = null;
            fragmentBuyPro.textView3_3 = null;
            fragmentBuyPro.textView3_4 = null;
            fragmentBuyPro.textView3_5 = null;
            fragmentBuyPro.textView4_1 = null;
            fragmentBuyPro.textView4_2 = null;
            fragmentBuyPro.textView4_3 = null;
            fragmentBuyPro.textView4_4 = null;
            fragmentBuyPro.progressLL = null;
            fragmentBuyPro.buttonContinuePurchase = null;
            this.f7398c.setOnClickListener(null);
            this.f7398c = null;
            this.f7399d.setOnClickListener(null);
            this.f7399d = null;
            this.f7400e.setOnClickListener(null);
            this.f7400e = null;
            this.f7401f.setOnClickListener(null);
            this.f7401f = null;
            this.f7402g.setOnClickListener(null);
            this.f7402g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
