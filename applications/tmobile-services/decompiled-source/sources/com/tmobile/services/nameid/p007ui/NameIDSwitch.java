package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.Switch;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
/* renamed from: com.tmobile.services.nameid.ui.NameIDSwitch */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDSwitch.class */
public abstract class NameIDSwitch extends Switch implements NameIDUIComponent {

    /* renamed from: f */
    private String f13843f = "";

    /* renamed from: g */
    private CompoundButton.OnCheckedChangeListener f13844g;

    public NameIDSwitch(Context context) {
        super(context, null);
        m6260a();
    }

    public NameIDSwitch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6260a();
    }

    public NameIDSwitch(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6260a();
    }

    /* renamed from: a */
    public void m6260a() {
        m6259b(UIAnalyticConfigurator.m6243i(this));
    }

    /* renamed from: b */
    public void m6259b(String str) {
        this.f13843f = str;
        UIAnalyticConfigurator.m6241k().m6237o(str, this);
    }

    /* renamed from: c */
    public void m6258c(@StringRes int i) {
        m6257d(getResources().getResourceEntryName(i));
    }

    /* renamed from: d */
    public void m6257d(String str) {
        m6259b(str);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13843f.isEmpty()) {
            this.f13843f = UIAnalyticConfigurator.m6243i(this);
        }
        return this.f13843f;
    }

    public void setCheckedSilent(boolean z) {
        super.setOnCheckedChangeListener(null);
        setChecked(z);
        super.setOnCheckedChangeListener(this.f13844g);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f13844g = onCheckedChangeListener;
        super.setOnCheckedChangeListener(onCheckedChangeListener);
    }
}
