package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.CompoundEditText;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogBlockByNumber.class */
public class DialogBlockByNumber extends DialogPopup {

    /* renamed from: a */
    private String f27013a;

    /* renamed from: b */
    private String f27014b;

    /* renamed from: c */
    private String f27015c;

    /* renamed from: d */
    private SimpleDoneDialogListener f27016d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener.class */
    public interface SimpleDoneDialogListener {
        /* renamed from: a */
        void mo27468a();
    }

    public DialogBlockByNumber(String str, String str2, String str3, SimpleDoneDialogListener simpleDoneDialogListener) {
        this.f27013a = str;
        this.f27014b = str3;
        this.f27015c = str2;
        this.f27016d = simpleDoneDialogListener;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558599, (ViewGroup) null);
        setupTextViewMember(inflate, this.f27013a, 2131364421);
        final CompoundEditText compoundEditText = (CompoundEditText) inflate.findViewById(2131362099);
        compoundEditText.setHintText(Activities.getString(2131886746));
        compoundEditText.setText(this.f27015c);
        final CompoundEditText compoundEditText2 = (CompoundEditText) inflate.findViewById(2131362100);
        compoundEditText2.setHintText(Activities.getString(2131886747));
        final boolean m26045b = StringUtils.m26045b((CharSequence) this.f27014b);
        if (m26045b) {
            compoundEditText2.setText(this.f27014b);
            compoundEditText2.setEnabled(false);
        }
        int color = ThemeUtils.getColor(2131099784);
        TextView textView = (TextView) inflate.findViewById(2131362581);
        textView.setText(Activities.getString(2131886505));
        textView.setTextColor(color);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogBlockByNumber.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogBlockByNumber.this.dismiss();
            }
        });
        TextView textView2 = (TextView) inflate.findViewById(2131362584);
        textView2.setText(Activities.getString(2131887338));
        textView2.setTextColor(color);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogBlockByNumber.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                boolean m26059a = StringUtils.m26059a((CharSequence) compoundEditText.getText());
                boolean m26059a2 = StringUtils.m26059a((CharSequence) compoundEditText2.getText());
                if (m26059a || m26059a2) {
                    if (m26059a) {
                        compoundEditText.m26777a();
                    }
                    if (!m26059a2) {
                        return;
                    }
                    compoundEditText2.m26777a();
                    return;
                }
                if (!m26045b) {
                    BlockManager.m28758a(view.getContext(), compoundEditText.getText(), PhoneManager.get().m28239a(compoundEditText2.getText()));
                } else {
                    BlockManager.m28751a(compoundEditText.getText(), PhoneManager.get().m28239a(compoundEditText2.getText()));
                }
                if (DialogBlockByNumber.this.f27016d != null) {
                    DialogBlockByNumber.this.f27016d.mo27468a();
                }
                DialogBlockByNumber.this.dismiss();
            }
        });
        Activities.m27670a(compoundEditText.f28658a);
        setCancelable(false);
        return inflate;
    }
}
