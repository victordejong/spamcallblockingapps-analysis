package com.callapp.contacts.activity.base;

import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/SectionViewHolder.class */
public class SectionViewHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    public View f20377s;

    /* renamed from: t */
    private TextView f20378t;

    public SectionViewHolder(View view) {
        super(view);
        this.f20378t = (TextView) view.findViewById(2131363210);
        this.f20377s = view.findViewById(2131363811);
        this.f20378t.setTextColor(ThemeUtils.getColor(2131099784));
        this.f20378t.setBackgroundColor(ThemeUtils.getColor(2131099686));
        view.findViewById(2131362611).setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppViewHolder
    public void setBackgroundColor(int i) {
        this.f20378t.setBackgroundColor(i);
    }

    public void setText(CharSequence charSequence) {
        this.f20378t.setText(charSequence);
    }

    public void setTextColor(int i) {
        this.f20378t.setTextColor(i);
    }
}
