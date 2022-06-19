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

    /* renamed from: c */
    public void m27936c() {
        ImageView imageView = (ImageView) this.f27223g.getChildAt(1).findViewById(2131364047);
        TextView textView = (TextView) this.f27223g.getChildAt(1).findViewById(2131364050);
        boolean isChecked = this.f27217f.isChecked();
        if (this.f27224h != 1) {
            imageView.setBackgroundResource(2131231501);
            imageView.setSelected(false);
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100140));
        } else if (isChecked) {
            imageView.setBackgroundResource(2131231500);
            textView.setTextColor(ThemeUtils.getColor(2131099676));
        } else {
            imageView.setBackgroundResource(2131231501);
            imageView.setSelected(true);
            textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099784));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextFieldAndIcon, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    /* renamed from: a */
    public final void mo27938a(View view, LayoutInflater layoutInflater) {
        super.mo27938a(view, layoutInflater);
        m27936c();
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public String getCheckBoxText() {
        return Activities.getString(2131886765);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextField, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        this.f27217f.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.popup.contact.WhoItWasDialog.1
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                WhoItWasDialog.this.f27217f.toggle();
                WhoItWasDialog.this.m27936c();
            }
        });
        return ovViewCreated;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabsWithTextFieldAndIcon, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs
    public void setItemAsChecked(int i) {
        super.setItemAsChecked(i);
        m27936c();
    }
}
