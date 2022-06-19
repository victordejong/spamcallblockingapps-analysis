package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoice;
import com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowSelectSingleChoice.class */
public class SettingsRowSelectSingleChoice extends SettingsRowView implements View.OnClickListener {

    /* renamed from: a */
    DialogSelectSingleChoiceBase.SingleChoiceListener f28893a;

    /* renamed from: b */
    private TextView f28894b;

    /* renamed from: c */
    private String f28895c;

    /* renamed from: d */
    private String[] f28896d;

    /* renamed from: e */
    private int f28897e;

    /* renamed from: f */
    private View.OnClickListener f28898f;

    public SettingsRowSelectSingleChoice(Context context) {
        this(context, null);
    }

    public SettingsRowSelectSingleChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TextView textView = (TextView) findViewById(2131363816);
        this.f28894b = textView;
        textView.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131100108));
        super.setOnClickListener(this);
    }

    @Override // com.callapp.contacts.widget.SettingsRowView
    protected int getLayoutResourceId() {
        return 2131559010;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopupManager.get().m28209a(getContext(), new DialogSelectSingleChoice(this.f28895c, this.f28896d, this.f28897e, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.widget.SettingsRowSelectSingleChoice.1
            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            /* renamed from: b */
            public final void mo26631b(int i) {
                if (i >= 0 && i < SettingsRowSelectSingleChoice.this.f28896d.length) {
                    SettingsRowSelectSingleChoice.this.f28894b.setText(SettingsRowSelectSingleChoice.this.f28896d[i]);
                }
                if (SettingsRowSelectSingleChoice.this.f28893a != null) {
                    SettingsRowSelectSingleChoice.this.f28893a.mo26631b(i);
                }
                SettingsRowSelectSingleChoice.this.f28897e = i;
            }
        }));
        View.OnClickListener onClickListener = this.f28898f;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public void setChoices(int i, String[] strArr, String str) {
        this.f28896d = strArr;
        this.f28897e = i;
        if (strArr != null && i >= 0 && i < strArr.length) {
            this.f28894b.setText(strArr[i]);
        }
        this.f28895c = str;
    }

    public void setListener(DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        this.f28893a = singleChoiceListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f28898f = onClickListener;
    }
}
