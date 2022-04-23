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

    /* renamed from: a  reason: collision with root package name */
    private String f15430a;

    /* renamed from: b  reason: collision with root package name */
    private String f15431b;

    /* renamed from: c  reason: collision with root package name */
    private String f15432c;

    /* renamed from: d  reason: collision with root package name */
    private SimpleDoneDialogListener f15433d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener.class */
    public interface SimpleDoneDialogListener {
        void a();
    }

    public DialogBlockByNumber(String str, String str2, String str3, SimpleDoneDialogListener simpleDoneDialogListener) {
        this.f15430a = str;
        this.f15431b = str3;
        this.f15432c = str2;
        this.f15433d = simpleDoneDialogListener;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(2131558599, (ViewGroup) null);
        setupTextViewMember(inflate, this.f15430a, 2131364421);
        final CompoundEditText compoundEditText = (CompoundEditText) inflate.findViewById(2131362099);
        compoundEditText.setHintText(Activities.getString(2131886746));
        compoundEditText.setText(this.f15432c);
        final CompoundEditText compoundEditText2 = (CompoundEditText) inflate.findViewById(2131362100);
        compoundEditText2.setHintText(Activities.getString(2131886747));
        final boolean b2 = StringUtils.b((CharSequence) this.f15431b);
        if (b2) {
            compoundEditText2.setText(this.f15431b);
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
                AndroidUtils.a(view, 1);
                boolean a2 = StringUtils.a((CharSequence) compoundEditText.getText());
                boolean a3 = StringUtils.a((CharSequence) compoundEditText2.getText());
                if (a2 || a3) {
                    if (a2) {
                        compoundEditText.a();
                    }
                    if (a3) {
                        compoundEditText2.a();
                        return;
                    }
                    return;
                }
                if (!b2) {
                    BlockManager.a(view.getContext(), compoundEditText.getText(), PhoneManager.get().a(compoundEditText2.getText()));
                } else {
                    BlockManager.a(compoundEditText.getText(), PhoneManager.get().a(compoundEditText2.getText()));
                }
                if (DialogBlockByNumber.this.f15433d != null) {
                    DialogBlockByNumber.this.f15433d.a();
                }
                DialogBlockByNumber.this.dismiss();
            }
        });
        Activities.a(compoundEditText.f16464a);
        setCancelable(false);
        return inflate;
    }
}
