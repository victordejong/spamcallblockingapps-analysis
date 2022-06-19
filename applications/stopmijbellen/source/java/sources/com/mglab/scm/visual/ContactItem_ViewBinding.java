package com.mglab.scm.visual;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.Unbinder;
import me.zhanghai.android.materialprogressbar.C3681R;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/ContactItem_ViewBinding.class */
public class ContactItem_ViewBinding implements Unbinder {

    /* renamed from: b */
    public ContactItem f7360b;

    public ContactItem_ViewBinding(ContactItem contactItem, View view) {
        this.f7360b = contactItem;
        contactItem.nameTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297176, "field 'nameTextView'"), 2131297176, "field 'nameTextView'", TextView.class);
        contactItem.numberTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297177, "field 'numberTextView'"), 2131297177, "field 'numberTextView'", TextView.class);
        contactItem.contactImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296670, "field 'contactImageView'"), 2131296670, "field 'contactImageView'", ImageView.class);
        contactItem.checkBox = (CheckBox) C0815c.m7348a(C0815c.m7347b(view, C3681R.C3684id.checkbox, "field 'checkBox'"), C3681R.C3684id.checkbox, "field 'checkBox'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        ContactItem contactItem = this.f7360b;
        if (contactItem != null) {
            this.f7360b = null;
            contactItem.nameTextView = null;
            contactItem.numberTextView = null;
            contactItem.contactImageView = null;
            contactItem.checkBox = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
