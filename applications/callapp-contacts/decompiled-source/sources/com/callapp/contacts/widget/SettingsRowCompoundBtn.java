package com.callapp.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SettingsRowCompoundBtn.class */
public abstract class SettingsRowCompoundBtn extends SettingsRowView implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private CompoundButton f16600a;

    /* renamed from: b  reason: collision with root package name */
    private View.OnClickListener f16601b;

    public SettingsRowCompoundBtn(Context context) {
        this(context, null);
    }

    public SettingsRowCompoundBtn(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16600a = getBtn();
        super.setOnClickListener(this);
    }

    abstract CompoundButton getBtn();

    @Override // com.callapp.contacts.widget.SettingsRowView
    protected int getLayoutResourceId() {
        return 2131559011;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f16600a.setChecked(!getBtn().isChecked());
        View.OnClickListener onClickListener = this.f16601b;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public void setChecked(boolean z) {
        this.f16600a.setChecked(z);
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f16600a.setOnCheckedChangeListener(onCheckedChangeListener);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f16601b = onClickListener;
    }
}
