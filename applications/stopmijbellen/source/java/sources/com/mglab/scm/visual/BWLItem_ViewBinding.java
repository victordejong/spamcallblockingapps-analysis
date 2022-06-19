package com.mglab.scm.visual;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import me.zhanghai.android.materialprogressbar.C3681R;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/BWLItem_ViewBinding.class */
public class BWLItem_ViewBinding implements Unbinder {

    /* renamed from: b */
    public BWLItem f7339b;

    public BWLItem_ViewBinding(BWLItem bWLItem, View view) {
        this.f7339b = bWLItem;
        bWLItem.phoneTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297176, "field 'phoneTextView'"), 2131297176, "field 'phoneTextView'", TextView.class);
        bWLItem.phoneDetailsTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297177, "field 'phoneDetailsTextView'"), 2131297177, "field 'phoneDetailsTextView'", TextView.class);
        bWLItem.contactImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296670, "field 'contactImageView'"), 2131296670, "field 'contactImageView'", ImageView.class);
        bWLItem.checkBox = (CheckBox) C0815c.m7348a(C0815c.m7347b(view, C3681R.C3684id.checkbox, "field 'checkBox'"), C3681R.C3684id.checkbox, "field 'checkBox'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        BWLItem bWLItem = this.f7339b;
        if (bWLItem != null) {
            this.f7339b = null;
            bWLItem.phoneTextView = null;
            bWLItem.phoneDetailsTextView = null;
            bWLItem.contactImageView = null;
            bWLItem.checkBox = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
