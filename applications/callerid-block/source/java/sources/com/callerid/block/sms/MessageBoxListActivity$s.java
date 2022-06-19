package com.callerid.block.sms;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;
import com.callerid.block.util.C1227w;
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$s.class */
class MessageBoxListActivity$s implements TextWatcher {

    /* renamed from: b */
    final /* synthetic */ MessageBoxListActivity f4854b;

    MessageBoxListActivity$s(MessageBoxListActivity messageBoxListActivity) {
        this.f4854b = messageBoxListActivity;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        C1227w.m9527a("searchNumber", "afterTextChanged");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ImageView imageView;
        C1227w.m9527a("searchNumber", "onTextChanged---CharSequence:" + ((Object) charSequence));
        int i4 = 2131231007;
        if ((charSequence == null || "".equals(charSequence.toString())) && MessageBoxListActivity.z0(this.f4854b).getVisibility() != 0) {
            imageView = MessageBoxListActivity.r0(this.f4854b);
            i4 = 2131231132;
        } else {
            imageView = MessageBoxListActivity.r0(this.f4854b);
        }
        imageView.setImageResource(i4);
    }
}
