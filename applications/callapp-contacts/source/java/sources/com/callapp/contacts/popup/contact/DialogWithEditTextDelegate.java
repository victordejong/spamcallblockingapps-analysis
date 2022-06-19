package com.callapp.contacts.popup.contact;

import android.text.TextWatcher;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.widget.CompoundEditText;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate.class */
public class DialogWithEditTextDelegate {

    /* renamed from: a */
    public final SingleChoiceWithTextListener f27257a;

    /* renamed from: b */
    public final String f27258b;

    /* renamed from: c */
    private final String f27259c;

    /* renamed from: d */
    private final TextWatcher f27260d;

    /* renamed from: e */
    private CompoundEditText f27261e;

    /* renamed from: f */
    private Integer f27262f;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener.class */
    public interface SingleChoiceWithTextListener {
        /* renamed from: a */
        String mo27336a(String str);

        /* renamed from: a */
        void mo27338a(int i, String str, boolean z);

        /* renamed from: a */
        void mo27337a(DialogPopup dialogPopup, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel.class */
    public static abstract class SingleChoiceWithTextListenerImpel implements SingleChoiceWithTextListener {
        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
        /* renamed from: a */
        public String mo27336a(String str) {
            if (StringUtils.m26059a((CharSequence) str)) {
                return Activities.getString(2131886308);
            }
            return null;
        }

        @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
        /* renamed from: a */
        public void mo27337a(DialogPopup dialogPopup, int i) {
        }
    }

    public DialogWithEditTextDelegate(SingleChoiceWithTextListener singleChoiceWithTextListener, String str, String str2, TextWatcher textWatcher) {
        this.f27257a = singleChoiceWithTextListener;
        this.f27259c = str;
        this.f27258b = str2;
        this.f27260d = textWatcher;
    }

    /* renamed from: a */
    public final void m27947a(DialogPopup dialogPopup, int i, boolean z) {
        if (this.f27257a == null) {
            dialogPopup.dismiss();
            return;
        }
        String text = this.f27261e.getText();
        String mo27336a = this.f27257a.mo27336a(text);
        if (StringUtils.m26045b((CharSequence) mo27336a)) {
            this.f27261e.m26777a();
            FeedbackManager.get().m28669a(mo27336a, (Integer) 17);
            return;
        }
        this.f27257a.mo27338a(i, text, z);
        dialogPopup.dismiss();
    }

    /* renamed from: a */
    public final void m27946a(CompoundEditText compoundEditText) {
        this.f27261e = compoundEditText;
        compoundEditText.setVisibility(0);
        Integer num = this.f27262f;
        if (num != null) {
            compoundEditText.setInputType(num.intValue());
        }
        TextWatcher textWatcher = this.f27260d;
        if (textWatcher != null) {
            compoundEditText.f28659b = textWatcher;
        }
        compoundEditText.setHintText(this.f27259c);
        Activities.m27670a(compoundEditText.f28658a);
        compoundEditText.setText(this.f27258b);
    }

    public void setInputType(int i) {
        CompoundEditText compoundEditText = this.f27261e;
        if (compoundEditText != null) {
            compoundEditText.setInputType(i);
        }
        this.f27262f = Integer.valueOf(i);
    }
}
