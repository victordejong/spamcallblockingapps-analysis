package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/GoneWhenEmptyTextView.class */
public class GoneWhenEmptyTextView extends AppCompatTextView {
    public GoneWhenEmptyTextView(Context context) {
        this(context, null);
    }

    public GoneWhenEmptyTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GoneWhenEmptyTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        if (StringUtils.a(charSequence)) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }
}
