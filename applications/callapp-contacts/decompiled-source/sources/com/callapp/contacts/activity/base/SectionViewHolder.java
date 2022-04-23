package com.callapp.contacts.activity.base;

import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/SectionViewHolder.class */
public class SectionViewHolder extends BaseCallAppViewHolder {
    public View s;
    private TextView t;

    public SectionViewHolder(View view) {
        super(view);
        this.t = (TextView) view.findViewById(2131363210);
        this.s = view.findViewById(2131363811);
        this.t.setTextColor(ThemeUtils.getColor(2131099784));
        this.t.setBackgroundColor(ThemeUtils.getColor(2131099686));
        view.findViewById(2131362611).setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppViewHolder
    public void setBackgroundColor(int i) {
        this.t.setBackgroundColor(i);
    }

    public void setText(CharSequence charSequence) {
        this.t.setText(charSequence);
    }

    public void setTextColor(int i) {
        this.t.setTextColor(i);
    }
}
