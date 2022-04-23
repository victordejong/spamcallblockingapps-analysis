package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CompoundEditText;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceTabs.class */
public class DialogSelectSingleChoiceTabs extends DialogSelectSingleChoiceWithActionButtons {
    protected ViewGroup g;
    protected int h;

    public DialogSelectSingleChoiceTabs(String str, Object[] objArr, int i, boolean z, DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        super(str, objArr, i, z, singleChoiceListener);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected void a(View view, LayoutInflater layoutInflater) {
        this.g = (ViewGroup) view.findViewById(2131364053);
        if (this.f15505b != null) {
            for (int i = 0; i < this.f15505b.length; i++) {
                TextView textView = (TextView) layoutInflater.inflate(2131558698, this.g, false);
                textView.setText(this.f15505b[i].toString());
                textView.setId(i);
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogSelectSingleChoiceTabs.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        DialogSelectSingleChoiceTabs.this.setItemAsChecked(view2.getId());
                    }
                });
                this.g.addView(textView);
            }
        }
        setItemAsChecked(this.f15506c);
        c(this.f15506c);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected int getChosenIndex() {
        return this.h;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase
    protected int getLayoutResourceId() {
        return 2131558630;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceWithActionButtons, com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase, com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View ovViewCreated = super.ovViewCreated(layoutInflater, viewGroup);
        TextView textView = (TextView) ovViewCreated.findViewById(2131362584);
        if (textView != null) {
            textView.setText(Activities.getString(2131887338));
        }
        TextView textView2 = (TextView) ovViewCreated.findViewById(2131362581);
        if (textView2 != null) {
            textView2.setText(Activities.getString(2131886505));
        }
        CompoundEditText compoundEditText = (CompoundEditText) ovViewCreated.findViewById(2131362769);
        if (compoundEditText != null) {
            compoundEditText.setHintText(Activities.getString(2131887846));
        }
        return ovViewCreated;
    }

    protected void setItemAsChecked(int i) {
        this.h = i;
        c(i);
        for (int i2 = 0; i2 < this.g.getChildCount(); i2++) {
            TextView textView = (TextView) this.g.getChildAt(i2);
            if (i2 == i) {
                textView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099686));
                textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099784));
            } else {
                textView.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
                textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100140));
            }
        }
    }
}
