package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/WhoItWasDialog.class */
public class WhoItWasDialog extends DialogSelectSingleChoiceTabsWithTextFieldAndIcon {
    public WhoItWasDialog(String str, String str2, String str3, Object[] objArr, int[] iArr, int i, boolean z, DialogWithEditTextDelegate.SingleChoiceWithTextListener singleChoiceWithTextListener) {
        super(str, str2, str3, objArr, iArr, i, z, singleChoiceWithTextListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        ImageView imageView = (ImageView) this.g.getChildAt(1).findViewById(2131364047);
        TextView textView = (TextView) this.g.getChildAt(1).findViewById(2131364050);
        boolean isChecked = this.f.isChecked();
        if (this.h != 1) {
            imageView.setBackgroundResource(2131231501);
            imageView.setSelected(false);
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100140));
        } else if (isChecked) {
            imageView.setBackgroundResource(2131231500);
            textView.setTextColor(ThemeUtils.getColor(2131099676));
        } else {
            imageView.setBackgroundResource(2131231501);
            imageView.setSelected(true);
            textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099784));
        }
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextFieldAndIcon, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected final void a(View view, LayoutInflater layoutInflater) {
        super.a(view, layoutInflater);
        c();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public String getCheckBoxText() {
        return Activities.getString(2131886765);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextField, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.f.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.WhoItWasDialog.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                WhoItWasDialog.this.f.toggle();
                WhoItWasDialog.this.c();
            }
        });
        return ovViewCreated;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextFieldAndIcon, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs
    protected void setItemAsChecked(int i) {
        super.setItemAsChecked(i);
        c();
    }
}
