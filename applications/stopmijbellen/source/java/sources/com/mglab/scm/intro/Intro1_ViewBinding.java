package com.mglab.scm.intro;

import android.view.View;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro1_ViewBinding.class */
public class Intro1_ViewBinding implements Unbinder {

    /* renamed from: b */
    public Intro1 f7290b;

    /* renamed from: c */
    public View f7291c;

    /* renamed from: com.mglab.scm.intro.Intro1_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro1_ViewBinding$a.class */
    public class C1983a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ Intro1 f7292c;

        public C1983a(Intro1_ViewBinding intro1_ViewBinding, Intro1 intro1) {
            this.f7292c = intro1;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7292c.onEMailClick(view);
        }
    }

    public Intro1_ViewBinding(Intro1 intro1, View view) {
        this.f7290b = intro1;
        View m7347b = C0815c.m7347b(view, 2131296584, "method 'onEMailClick'");
        this.f7291c = m7347b;
        m7347b.setOnClickListener(new C1983a(this, intro1));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        if (this.f7290b != null) {
            this.f7290b = null;
            this.f7291c.setOnClickListener(null);
            this.f7291c = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
