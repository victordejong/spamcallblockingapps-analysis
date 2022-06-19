package com.mglab.scm.visual;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/BWLHeader_ViewBinding.class */
public class BWLHeader_ViewBinding implements Unbinder {

    /* renamed from: b */
    public BWLHeader f7334b;

    public BWLHeader_ViewBinding(BWLHeader bWLHeader, View view) {
        this.f7334b = bWLHeader;
        bWLHeader.text = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297175, "field 'text'"), 2131297175, "field 'text'", TextView.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        BWLHeader bWLHeader = this.f7334b;
        if (bWLHeader != null) {
            this.f7334b = null;
            bWLHeader.text = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
