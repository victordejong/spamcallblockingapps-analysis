package com.mglab.scm.intro;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro3_ViewBinding.class */
public class Intro3_ViewBinding implements Unbinder {

    /* renamed from: b */
    public Intro3 f7296b;

    public Intro3_ViewBinding(Intro3 intro3, View view) {
        this.f7296b = intro3;
        intro3.whyNeed = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297217, "field 'whyNeed'"), 2131297217, "field 'whyNeed'", TextView.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        Intro3 intro3 = this.f7296b;
        if (intro3 != null) {
            this.f7296b = null;
            intro3.whyNeed = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
