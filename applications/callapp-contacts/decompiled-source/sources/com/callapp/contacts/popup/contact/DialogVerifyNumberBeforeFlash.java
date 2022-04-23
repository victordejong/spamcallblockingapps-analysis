package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash.class */
public class DialogVerifyNumberBeforeFlash extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private String f15525a;

    /* renamed from: b  reason: collision with root package name */
    private IUserConfirmNumberBeforeFlash f15526b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogVerifyNumberBeforeFlash$IUserConfirmNumberBeforeFlash.class */
    public interface IUserConfirmNumberBeforeFlash {
        void a();
    }

    public DialogVerifyNumberBeforeFlash(String str, IUserConfirmNumberBeforeFlash iUserConfirmNumberBeforeFlash) {
        this.f15525a = str;
        this.f15526b = iUserConfirmNumberBeforeFlash;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void dismiss() {
        super.dismiss();
    }

    protected int getLayoutResource() {
        return 2131558631;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResource(), (ViewGroup) null);
        ((TextView) inflate.findViewById(2131364130)).setText(Activities.a(2131888136, this.f15525a));
        ((TextView) inflate.findViewById(2131364011)).setText(Activities.getString(2131888135));
        final TextView textView = (TextView) inflate.findViewById(2131363403);
        textView.setText(Activities.getString(2131887338));
        textView.setTextColor(ThemeUtils.getColor(2131099784));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogVerifyNumberBeforeFlash.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(textView, 1);
                if (DialogVerifyNumberBeforeFlash.this.f15526b != null) {
                    DialogVerifyNumberBeforeFlash.this.f15526b.a();
                }
                DialogVerifyNumberBeforeFlash.this.dismiss();
            }
        });
        final TextView textView2 = (TextView) inflate.findViewById(2131362672);
        textView2.setText(Activities.getString(2131886805));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.contact.DialogVerifyNumberBeforeFlash.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DialogVerifyNumberBeforeFlash.this.dismiss();
                AndroidUtils.a(textView2, 1);
            }
        });
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-2, -2);
        window.setBackgroundDrawableResource(17170445);
    }
}
