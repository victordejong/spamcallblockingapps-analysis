package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* renamed from: com.tmobile.services.nameid.ui.NameIDTextView */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDTextView.class */
public class NameIDTextView extends AppCompatTextView implements NameIDUIComponent {

    /* renamed from: j */
    private String f13845j = "";

    public NameIDTextView(Context context) {
        super(context);
        m6256f();
    }

    public NameIDTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6256f();
    }

    public NameIDTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6256f();
    }

    /* renamed from: f */
    public void m6256f() {
        m6255g(UIAnalyticConfigurator.m6242j(this));
    }

    /* renamed from: g */
    public void m6255g(String str) {
        this.f13845j = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13845j.isEmpty()) {
            this.f13845j = UIAnalyticConfigurator.m6242j(this);
        }
        return this.f13845j;
    }
}
