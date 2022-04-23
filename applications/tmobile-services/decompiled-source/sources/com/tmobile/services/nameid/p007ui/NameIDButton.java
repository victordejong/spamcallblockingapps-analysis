package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatButton;
import com.tmobile.services.C1517R;
/* renamed from: com.tmobile.services.nameid.ui.NameIDButton */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDButton.class */
public class NameIDButton extends AppCompatButton implements NameIDUIComponent {

    /* renamed from: h */
    private String f13830h = "";

    public NameIDButton(Context context) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.NameIDButtonStyle), null);
        m6276a();
    }

    public NameIDButton(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.NameIDButtonStyle), attributeSet);
        m6276a();
    }

    public NameIDButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public void m6276a() {
        m6275b(UIAnalyticConfigurator.m6249c(this));
    }

    /* renamed from: b */
    public void m6275b(String str) {
        this.f13830h = str;
        UIAnalyticConfigurator.m6241k().m6239m(str, this);
    }

    @Override // com.tmobile.services.nameid.p007ui.NameIDUIComponent
    public String getAnalyticMessage() {
        if (this.f13830h.isEmpty()) {
            this.f13830h = UIAnalyticConfigurator.m6249c(this);
        }
        return this.f13830h;
    }
}
