package com.android.contacts.ezmode;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/EzContactListItemView.class */
public class EzContactListItemView extends ContactListItemView {
    public EzContactListItemView(Context context, boolean z) {
        super(context, (AttributeSet) null);
        this.f1715a = context.getResources().getDimensionPixelSize(2131100147);
        this.h = z ? context.getResources().getDimensionPixelSize(2131100148) : 0;
        this.i = context.getResources().getDimensionPixelSize(2131100146);
        this.d = getResources().getDimensionPixelOffset(2131099713);
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes((AttributeSet) null, c.a.e);
            setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        }
    }

    @Override // com.android.contacts.list.ContactListItemView
    public final TextView a() {
        TextView a2 = super.a();
        a2.setTextSize(2, 16.0f);
        return a2;
    }
}
