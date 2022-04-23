package com.android.contacts.list;

import android.content.Context;
import android.util.AttributeSet;
import com.android.contacts.util.ViewUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactTileFrequentView.class */
public class ContactTileFrequentView extends ContactTileView {
    public ContactTileFrequentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.android.contacts.list.ContactTileView
    protected final int a() {
        return ViewUtil.getConstantPreLayoutWidth(this.f1736b);
    }
}
