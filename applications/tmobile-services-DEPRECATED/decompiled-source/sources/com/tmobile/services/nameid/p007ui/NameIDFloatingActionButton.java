package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* renamed from: com.tmobile.services.nameid.ui.NameIDFloatingActionButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDFloatingActionButton.class */
public class NameIDFloatingActionButton extends FloatingActionButton implements NameIDUIComponent {

    /* renamed from: x */
    private String f13839x = "";

    public NameIDFloatingActionButton(Context context) {
        super(context);
        m6269v();
    }

    public NameIDFloatingActionButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6269v();
    }

    public NameIDFloatingActionButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6269v();
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13839x.isEmpty()) {
            this.f13839x = UIAnalyticConfigurator.m6247e(this);
        }
        return this.f13839x;
    }

    /* renamed from: v */
    public void m6269v() {
        m6268w(UIAnalyticConfigurator.m6247e(this));
    }

    /* renamed from: w */
    public void m6268w(String str) {
        this.f13839x = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }
}
