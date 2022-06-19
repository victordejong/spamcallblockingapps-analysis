package com.mglab.scm.visual;

import android.view.View;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentSocial_ViewBinding.class */
public class FragmentSocial_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentSocial f7598b;

    /* renamed from: c */
    public View f7599c;

    /* renamed from: d */
    public View f7600d;

    /* renamed from: com.mglab.scm.visual.FragmentSocial_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentSocial_ViewBinding$a.class */
    public class C2091a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentSocial f7601c;

        public C2091a(FragmentSocial_ViewBinding fragmentSocial_ViewBinding, FragmentSocial fragmentSocial) {
            this.f7601c = fragmentSocial;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7601c.onRetryButton();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentSocial_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentSocial_ViewBinding$b.class */
    public class C2092b extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentSocial f7602c;

        public C2092b(FragmentSocial_ViewBinding fragmentSocial_ViewBinding, FragmentSocial fragmentSocial) {
            this.f7602c = fragmentSocial;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7602c.onActionButtonClick();
        }
    }

    public FragmentSocial_ViewBinding(FragmentSocial fragmentSocial, View view) {
        this.f7598b = fragmentSocial;
        fragmentSocial.frameSocial = C0815c.m7347b(view, 2131296637, "field 'frameSocial'");
        View m7347b = C0815c.m7347b(view, 2131296399, "method 'onRetryButton'");
        this.f7599c = m7347b;
        m7347b.setOnClickListener(new C2091a(this, fragmentSocial));
        View m7347b2 = C0815c.m7347b(view, 2131296603, "method 'onActionButtonClick'");
        this.f7600d = m7347b2;
        m7347b2.setOnClickListener(new C2092b(this, fragmentSocial));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentSocial fragmentSocial = this.f7598b;
        if (fragmentSocial != null) {
            this.f7598b = null;
            fragmentSocial.frameSocial = null;
            this.f7599c.setOnClickListener(null);
            this.f7599c = null;
            this.f7600d.setOnClickListener(null);
            this.f7600d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
