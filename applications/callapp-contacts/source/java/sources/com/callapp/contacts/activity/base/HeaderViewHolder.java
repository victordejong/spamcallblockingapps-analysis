package com.callapp.contacts.activity.base;

import android.view.View;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/base/HeaderViewHolder.class */
public class HeaderViewHolder extends BaseCallAppViewHolder {

    /* renamed from: s */
    private TextView f20372s;

    public HeaderViewHolder(View view, int i) {
        super(view);
        TextView textView = (TextView) view.findViewById(2131362948);
        this.f20372s = textView;
        textView.setTextColor(i);
    }

    /* renamed from: a */
    public final void m31473a(String str) {
        this.f20372s.setText(str);
    }
}
