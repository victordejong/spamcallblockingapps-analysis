package com.mglab.scm.visual;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding.class */
public class FragmentAbout_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentAbout f7368b;

    /* renamed from: c */
    public View f7369c;

    /* renamed from: d */
    public View f7370d;

    /* renamed from: e */
    public View f7371e;

    /* renamed from: f */
    public View f7372f;

    /* renamed from: g */
    public View f7373g;

    /* renamed from: com.mglab.scm.visual.FragmentAbout_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding$a.class */
    public class C1990a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentAbout f7374c;

        public C1990a(FragmentAbout_ViewBinding fragmentAbout_ViewBinding, FragmentAbout fragmentAbout) {
            this.f7374c = fragmentAbout;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7374c.onVkImageClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentAbout_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding$b.class */
    public class C1991b extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentAbout f7375c;

        public C1991b(FragmentAbout_ViewBinding fragmentAbout_ViewBinding, FragmentAbout fragmentAbout) {
            this.f7375c = fragmentAbout;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7375c.openDev();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentAbout_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding$c.class */
    public class C1992c extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentAbout f7376c;

        public C1992c(FragmentAbout_ViewBinding fragmentAbout_ViewBinding, FragmentAbout fragmentAbout) {
            this.f7376c = fragmentAbout;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7376c.sendEmailClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentAbout_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding$d.class */
    public class C1993d extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentAbout f7377c;

        public C1993d(FragmentAbout_ViewBinding fragmentAbout_ViewBinding, FragmentAbout fragmentAbout) {
            this.f7377c = fragmentAbout;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7377c.translationClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentAbout_ViewBinding$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentAbout_ViewBinding$e.class */
    public class C1994e extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentAbout f7378c;

        public C1994e(FragmentAbout_ViewBinding fragmentAbout_ViewBinding, FragmentAbout fragmentAbout) {
            this.f7378c = fragmentAbout;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7378c.onFbImageClick();
        }
    }

    public FragmentAbout_ViewBinding(FragmentAbout fragmentAbout, View view) {
        this.f7368b = fragmentAbout;
        fragmentAbout.versionTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297199, "field 'versionTV'"), 2131297199, "field 'versionTV'", TextView.class);
        View m7347b = C0815c.m7347b(view, 2131297213, "field 'vkImage' and method 'onVkImageClick'");
        fragmentAbout.vkImage = (ImageView) C0815c.m7348a(m7347b, 2131297213, "field 'vkImage'", ImageView.class);
        this.f7369c = m7347b;
        m7347b.setOnClickListener(new C1990a(this, fragmentAbout));
        View m7347b2 = C0815c.m7347b(view, 2131297180, "method 'openDev'");
        this.f7370d = m7347b2;
        m7347b2.setOnClickListener(new C1991b(this, fragmentAbout));
        View m7347b3 = C0815c.m7347b(view, 2131296584, "method 'sendEmailClick'");
        this.f7371e = m7347b3;
        m7347b3.setOnClickListener(new C1992c(this, fragmentAbout));
        View m7347b4 = C0815c.m7347b(view, 2131297170, "method 'translationClick'");
        this.f7372f = m7347b4;
        m7347b4.setOnClickListener(new C1993d(this, fragmentAbout));
        View m7347b5 = C0815c.m7347b(view, 2131296611, "method 'onFbImageClick'");
        this.f7373g = m7347b5;
        m7347b5.setOnClickListener(new C1994e(this, fragmentAbout));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentAbout fragmentAbout = this.f7368b;
        if (fragmentAbout != null) {
            this.f7368b = null;
            fragmentAbout.versionTV = null;
            fragmentAbout.vkImage = null;
            this.f7369c.setOnClickListener(null);
            this.f7369c = null;
            this.f7370d.setOnClickListener(null);
            this.f7370d = null;
            this.f7371e.setOnClickListener(null);
            this.f7371e = null;
            this.f7372f.setOnClickListener(null);
            this.f7372f = null;
            this.f7373g.setOnClickListener(null);
            this.f7373g = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
