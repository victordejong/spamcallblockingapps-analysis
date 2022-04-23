package com.callapp.contacts.popup.contact;

import android.text.TextWatcher;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.CompoundEditText;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate.class */
public class DialogWithEditTextDelegate {

    /* renamed from: a  reason: collision with root package name */
    public final SingleChoiceWithTextListener f15531a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15532b;

    /* renamed from: c  reason: collision with root package name */
    private final String f15533c;

    /* renamed from: d  reason: collision with root package name */
    private final TextWatcher f15534d;
    private CompoundEditText e;
    private Integer f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener.class */
    public interface SingleChoiceWithTextListener {
        String a(String str);

        void a(int i, String str, boolean z);

        void a(DialogPopup dialogPopup, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel.class */
    public static abstract class SingleChoiceWithTextListenerImpel implements SingleChoiceWithTextListener {
        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
        public String a(String str) {
            if (StringUtils.a((CharSequence) str)) {
                return Activities.getString(2131886308);
            }
            return null;
        }

        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
        public void a(DialogPopup dialogPopup, int i) {
        }
    }

    public DialogWithEditTextDelegate(SingleChoiceWithTextListener singleChoiceWithTextListener, String str, String str2, TextWatcher textWatcher) {
        this.f15531a = singleChoiceWithTextListener;
        this.f15533c = str;
        this.f15532b = str2;
        this.f15534d = textWatcher;
    }

    public final void a(DialogPopup dialogPopup, int i, boolean z) {
        if (this.f15531a != null) {
            String text = this.e.getText();
            String a2 = this.f15531a.a(text);
            if (StringUtils.b((CharSequence) a2)) {
                this.e.a();
                FeedbackManager.get().a(a2, (Integer) 17);
                return;
            }
            this.f15531a.a(i, text, z);
            dialogPopup.dismiss();
            return;
        }
        dialogPopup.dismiss();
    }

    public final void a(CompoundEditText compoundEditText) {
        this.e = compoundEditText;
        compoundEditText.setVisibility(0);
        Integer num = this.f;
        if (num != null) {
            compoundEditText.setInputType(num.intValue());
        }
        TextWatcher textWatcher = this.f15534d;
        if (textWatcher != null) {
            compoundEditText.f16465b = textWatcher;
        }
        compoundEditText.setHintText(this.f15533c);
        Activities.a(compoundEditText.f16464a);
        compoundEditText.setText(this.f15532b);
    }

    public void setInputType(int i) {
        CompoundEditText compoundEditText = this.e;
        if (compoundEditText != null) {
            compoundEditText.setInputType(i);
        }
        this.f = Integer.valueOf(i);
    }
}
