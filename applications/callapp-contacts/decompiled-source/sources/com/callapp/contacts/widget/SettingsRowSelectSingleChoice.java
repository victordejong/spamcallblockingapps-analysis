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

    /* renamed from: a  reason: collision with root package name */
    DialogSelectSingleChoiceBase.SingleChoiceListener f16602a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f16603b;

    /* renamed from: c  reason: collision with root package name */
    private String f16604c;

    /* renamed from: d  reason: collision with root package name */
    private String[] f16605d;
    private int e;
    private View.OnClickListener f;

    public SettingsRowSelectSingleChoice(Context context) {
        this(context, null);
    }

    public SettingsRowSelectSingleChoice(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TextView textView = (TextView) findViewById(2131363816);
        this.f16603b = textView;
        textView.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131100108));
        super.setOnClickListener(this);
    }

    @Override // com.callapp.contacts.widget.SettingsRowView
    protected int getLayoutResourceId() {
        return 2131559010;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        PopupManager.get().a(getContext(), new DialogSelectSingleChoice(this.f16604c, this.f16605d, this.e, new DialogSelectSingleChoiceBase.SingleChoiceListenerImpel() { // from class: com.callapp.contacts.widget.SettingsRowSelectSingleChoice.1
            @Override // com.callapp.contacts.popup.contact.DialogSelectSingleChoiceBase.SingleChoiceListener
            public final void b(int i) {
                if (i >= 0 && i < SettingsRowSelectSingleChoice.this.f16605d.length) {
                    SettingsRowSelectSingleChoice.this.f16603b.setText(SettingsRowSelectSingleChoice.this.f16605d[i]);
                }
                if (SettingsRowSelectSingleChoice.this.f16602a != null) {
                    SettingsRowSelectSingleChoice.this.f16602a.b(i);
                }
                SettingsRowSelectSingleChoice.this.e = i;
            }
        }));
        View.OnClickListener onClickListener = this.f;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public void setChoices(int i, String[] strArr, String str) {
        this.f16605d = strArr;
        this.e = i;
        if (strArr != null && i >= 0 && i < strArr.length) {
            this.f16603b.setText(strArr[i]);
        }
        this.f16604c = str;
    }

    public void setListener(DialogSelectSingleChoiceBase.SingleChoiceListener singleChoiceListener) {
        this.f16602a = singleChoiceListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f = onClickListener;
    }
}
