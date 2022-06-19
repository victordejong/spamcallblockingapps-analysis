package com.mglab.scm.visual;

import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import me.zhanghai.android.materialprogressbar.C3681R;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/CallItem_ViewBinding.class */
public class CallItem_ViewBinding implements Unbinder {

    /* renamed from: b */
    public CallItem f7354b;

    public CallItem_ViewBinding(CallItem callItem, View view) {
        this.f7354b = callItem;
        callItem.nameTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297176, "field 'nameTextView'"), 2131297176, "field 'nameTextView'", TextView.class);
        callItem.numberTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297177, "field 'numberTextView'"), 2131297177, "field 'numberTextView'", TextView.class);
        callItem.simImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296679, "field 'simImageView'"), 2131296679, "field 'simImageView'", ImageView.class);
        callItem.callImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296669, "field 'callImageView'"), 2131296669, "field 'callImageView'", ImageView.class);
        callItem.contactImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296670, "field 'contactImageView'"), 2131296670, "field 'contactImageView'", ImageView.class);
        callItem.durationTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297173, "field 'durationTextView'"), 2131297173, "field 'durationTextView'", TextView.class);
        callItem.callTimeTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131297172, "field 'callTimeTextView'"), 2131297172, "field 'callTimeTextView'", TextView.class);
        callItem.presetLayout = (RelativeLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296937, "field 'presetLayout'"), 2131296937, "field 'presetLayout'", RelativeLayout.class);
        callItem.presetTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296943, "field 'presetTextView'"), 2131296943, "field 'presetTextView'", TextView.class);
        callItem.dndLayout = (RelativeLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296552, "field 'dndLayout'"), 2131296552, "field 'dndLayout'", RelativeLayout.class);
        callItem.contactLayout = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296491, "field 'contactLayout'"), 2131296491, "field 'contactLayout'", LinearLayout.class);
        callItem.mainLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296741, "field 'mainLL'"), 2131296741, "field 'mainLL'", LinearLayout.class);
        callItem.nameAndPhoneLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296840, "field 'nameAndPhoneLL'"), 2131296840, "field 'nameAndPhoneLL'", LinearLayout.class);
        callItem.simAndTimeLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131297016, "field 'simAndTimeLL'"), 2131297016, "field 'simAndTimeLL'", LinearLayout.class);
        callItem.namePhoneSimTimeLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296842, "field 'namePhoneSimTimeLL'"), 2131296842, "field 'namePhoneSimTimeLL'", LinearLayout.class);
        callItem.checkBox = (CheckBox) C0815c.m7348a(C0815c.m7347b(view, C3681R.C3684id.checkbox, "field 'checkBox'"), C3681R.C3684id.checkbox, "field 'checkBox'", CheckBox.class);
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        CallItem callItem = this.f7354b;
        if (callItem != null) {
            this.f7354b = null;
            callItem.nameTextView = null;
            callItem.numberTextView = null;
            callItem.simImageView = null;
            callItem.callImageView = null;
            callItem.contactImageView = null;
            callItem.durationTextView = null;
            callItem.callTimeTextView = null;
            callItem.presetLayout = null;
            callItem.presetTextView = null;
            callItem.dndLayout = null;
            callItem.contactLayout = null;
            callItem.mainLL = null;
            callItem.nameAndPhoneLL = null;
            callItem.simAndTimeLL = null;
            callItem.namePhoneSimTimeLL = null;
            callItem.checkBox = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
