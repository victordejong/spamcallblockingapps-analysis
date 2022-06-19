package com.mglab.scm.intro;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro2_ViewBinding.class */
public class Intro2_ViewBinding implements Unbinder {

    /* renamed from: b */
    public Intro2 f7294b;

    public Intro2_ViewBinding(Intro2 intro2, View view) {
        this.f7294b = intro2;
        intro2.whyNeed = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297217, "field 'whyNeed'"), 2131297217, "field 'whyNeed'", TextView.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        Intro2 intro2 = this.f7294b;
        if (intro2 != null) {
            this.f7294b = null;
            intro2.whyNeed = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
