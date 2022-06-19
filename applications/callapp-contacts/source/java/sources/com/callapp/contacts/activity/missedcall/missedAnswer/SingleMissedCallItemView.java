package com.callapp.contacts.activity.missedcall.missedAnswer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView.class */
public class SingleMissedCallItemView extends RelativeLayout {

    /* renamed from: a */
    TextView f23964a;

    public SingleMissedCallItemView(Context context) {
        this(context, null);
    }

    public SingleMissedCallItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SingleMissedCallItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(getContext(), 2131558898, this);
        TextView textView = (TextView) findViewById(2131363473);
        this.f23964a = textView;
        textView.setTextColor(ThemeUtils.getColor(2131099784));
    }
}
