package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabsWithTextFieldAndIcon.class */
public class DialogSelectSingleChoiceTabsWithTextFieldAndIcon extends DialogSelectSingleChoiceTabsWithTextField {
    protected int[] i;

    public DialogSelectSingleChoiceTabsWithTextFieldAndIcon(String str, String str2, String str3, Object[] objArr, int[] iArr, int i, boolean z, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, str2, str3, objArr, i, z, singleChoiceWithTextListener);
        this.i = iArr;
    }

    public DialogSelectSingleChoiceTabsWithTextFieldAndIcon(String str, String str2, Object[] objArr, int[] iArr, int i, boolean z, String str3, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, str2, objArr, i, z, str3, singleChoiceWithTextListener);
        this.i = iArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    public void a(View view, LayoutInflater layoutInflater) {
        this.g = (ViewGroup) view.findViewById(2131364053);
        if (this.f15505b != null) {
            for (int i = 0; i < this.f15505b.length; i++) {
                View inflate = layoutInflater.inflate(2131558699, this.g, false);
                inflate.setId(i);
                ((TextView) inflate.findViewById(2131364050)).setText(this.f15505b[i].toString());
                ((ImageView) inflate.findViewById(2131364047)).setBackgroundResource(this.i[i]);
                inflate.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextFieldAndIcon.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        DialogSelectSingleChoiceTabsWithTextFieldAndIcon.this.setItemAsChecked(view2.getId());
                    }
                });
                this.g.addView(inflate);
            }
        }
        setItemAsChecked(this.f15506c);
        c(this.f15506c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs
    public void setItemAsChecked(int i) {
        this.h = i;
        c(i);
        int i2 = 0;
        while (i2 < this.g.getChildCount()) {
            View childAt = this.g.getChildAt(i2);
            TextView textView = (TextView) childAt.findViewById(2131364050);
            ((ImageView) childAt.findViewById(2131364047)).setSelected(i2 == i);
            if (i2 == i) {
                childAt.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
                textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099784));
            } else {
                childAt.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
                textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100140));
            }
            i2++;
        }
    }
}
