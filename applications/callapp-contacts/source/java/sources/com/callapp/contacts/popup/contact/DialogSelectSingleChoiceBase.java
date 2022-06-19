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

    /* renamed from: a */
    public static int f27212a = -10;

    /* renamed from: b */
    protected final Object[] f27213b;

    /* renamed from: c */
    protected final int f27214c;

    /* renamed from: d */
    protected RadioGroup f27215d;

    /* renamed from: e */
    protected final boolean f27216e;

    /* renamed from: f */
    protected CallAppCheckBox f27217f;

    /* renamed from: g */
    private SingleChoiceListener f27218g;

    /* renamed from: h */
    private String f27219h;

    /* renamed from: i */
    private boolean f27220i = true;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener.class */
    public interface SingleChoiceListener {
        /* renamed from: a */
        void mo27951a(int i);

        /* renamed from: b */
        void mo26631b(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel.class */
    public static abstract class SingleChoiceListenerImpel implements SingleChoiceListener {
        @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
        /* renamed from: a */
        public final void mo27951a(int i) {
        }
    }

    public DialogSelectSingleChoiceBase(String str, Object[] objArr, int i, boolean z, SingleChoiceListener singleChoiceListener) {
        this.f27218g = singleChoiceListener;
        this.f27219h = str;
        this.f27213b = objArr;
        this.f27214c = i;
        this.f27216e = z;
    }

    /* renamed from: a */
    protected String mo27952a() {
        return null;
    }

    /* renamed from: a */
    protected void mo27938a(View view, LayoutInflater layoutInflater) {
        float dimension = CallAppApplication.get().getResources().getDimension(2131165526);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(2131363609);
        this.f27215d = radioGroup;
        ViewUtils.m27320a(radioGroup, ThemeUtils.getDrawable(2131230995));
        if (this.f27213b != null) {
            for (int i = 0; i < this.f27213b.length; i++) {
                RadioButton radioButton = (RadioButton) layoutInflater.inflate(2131558697, (ViewGroup) this.f27215d, false);
                radioButton.setTextColor(ThemeUtils.getColor(2131100140));
                radioButton.setText(this.f27213b[i].toString());
                radioButton.setMinimumHeight((int) dimension);
                radioButton.setId(i);
                this.f27215d.addView(radioButton);
            }
        }
        int i2 = this.f27214c;
        if (i2 != f27212a) {
            this.f27215d.check(i2);
            m27953c(this.f27214c);
            this.f27215d.setOnCheckedChangeListener(getCheckedChangeListener());
        }
    }

    /* renamed from: b */
    public final void m27954b() {
        if (this.f27218g == null) {
            dismiss();
            return;
        }
        this.f27218g.mo26631b(getChosenIndex());
        if (!this.f27220i) {
            return;
        }
        dismiss();
    }

    /* renamed from: c */
    public final void m27953c(int i) {
        SingleChoiceListener singleChoiceListener = this.f27218g;
        if (singleChoiceListener != null) {
            singleChoiceListener.mo27951a(i);
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
        setupTextViewMember(inflate, this.f27219h, 2131364421);
        if (mo27952a() != null) {
            CallAppCheckBox callAppCheckBox = (CallAppCheckBox) inflate.findViewById(2131362304);
            this.f27217f = callAppCheckBox;
            callAppCheckBox.setVisibility(0);
            this.f27217f.setChecked(this.f27216e);
            TextView textView = (TextView) inflate.findViewById(2131362341);
            textView.setText(Activities.getString(2131886765));
            textView.setVisibility(0);
        }
        mo27938a(inflate, layoutInflater);
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
    }

    public void setDismissOnDone(boolean z) {
        this.f27220i = z;
    }

    public void setListener(SingleChoiceListener singleChoiceListener) {
        this.f27218g = singleChoiceListener;
    }
}
