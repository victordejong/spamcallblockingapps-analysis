package com.callapp.contacts.popup.contact;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase.class */
public abstract class DialogSelectSingleChoiceBase extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    public static int f15504a = -10;

    /* renamed from: b  reason: collision with root package name */
    protected final Object[] f15505b;

    /* renamed from: c  reason: collision with root package name */
    protected final int f15506c;

    /* renamed from: d  reason: collision with root package name */
    protected RadioGroup f15507d;
    protected final boolean e;
    protected CallAppCheckBox f;
    private SingleChoiceListener g;
    private String h;
    private boolean i = true;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener.class */
    public interface SingleChoiceListener {
        void a(int i);

        void b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel.class */
    public static abstract class SingleChoiceListenerImpel implements SingleChoiceListener {
        @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
        public final void a(int i) {
        }
    }

    public DialogSelectSingleChoiceBase(String str, Object[] objArr, int i, boolean z, SingleChoiceListener singleChoiceListener) {
        this.g = singleChoiceListener;
        this.h = str;
        this.f15505b = objArr;
        this.f15506c = i;
        this.e = z;
    }

    protected String a() {
        return null;
    }

    protected void a(View view, LayoutInflater layoutInflater) {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131363609);
        this.f15507d = radioGroup;
        ViewUtils.a(radioGroup, ThemeUtils.getDrawable(2131230995));
        if (this.f15505b != null) {
            for (int i = 0; i < this.f15505b.length; i++) {
                RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558697, (ViewGroup) this.f15507d, false);
                radioButton.setTextColor(ThemeUtils.getColor(2131100140));
                radioButton.setText(this.f15505b[i].toString());
                radioButton.setMinimumHeight((int) dimension);
                radioButton.setId(i);
                this.f15507d.addView(radioButton);
            }
        }
        int i2 = this.f15506c;
        if (i2 != f15504a) {
            this.f15507d.check(i2);
            c(this.f15506c);
            this.f15507d.setOnCheckedChangeListener(getCheckedChangeListener());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        if (this.g != null) {
            this.g.b(getChosenIndex());
            if (this.i) {
                dismiss();
                return;
            }
            return;
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c(int i) {
        SingleChoiceListener singleChoiceListener = this.g;
        if (singleChoiceListener != null) {
            singleChoiceListener.a(i);
        }
    }

    protected abstract RadioGroup.OnCheckedChangeListener getCheckedChangeListener();

    protected abstract int getChosenIndex();

    protected abstract int getLayoutResourceId();

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public Popup.DialogType getPopupType() {
        return Popup.DialogType.withInset;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        View inflate = layoutInflater.inflate(getLayoutResourceId(), (ViewGroup) null);
        setupTextViewMember(inflate, this.h, 2131364421);
        if (a() != null) {
            CallAppCheckBox callAppCheckBox = (CallAppCheckBox) inflate.findViewById(2131362304);
            this.f = callAppCheckBox;
            callAppCheckBox.setVisibility(0);
            this.f.setChecked(this.e);
            TextView textView = (TextView) inflate.findViewById(2131362341);
            textView.setText(Activities.getString(2131886765));
            textView.setVisibility(0);
        }
        a(inflate, layoutInflater);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setDismissOnDone(boolean z) {
        this.i = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setListener(SingleChoiceListener singleChoiceListener) {
        this.g = singleChoiceListener;
    }
}
