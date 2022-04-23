package com.callapp.contacts.activity.base;

import android.view.View;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/HeaderViewHolder.class */
public class HeaderViewHolder extends BaseCallAppViewHolder {
    private TextView s;

    public HeaderViewHolder(View view, int i) {
        super(view);
        TextView textView = (TextView) view.findViewById(2131362948);
        this.s = textView;
        textView.setTextColor(i);
    }

    public final void a(String str) {
        this.s.setText(str);
    }
}
