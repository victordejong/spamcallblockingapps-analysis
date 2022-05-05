package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.ContextThemeWrapper;
import com.tmobile.services.C1517R;
/* renamed from: com.tmobile.services.nameid.ui.NameIDSwitchOOBE */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDSwitchOOBE.class */
public class NameIDSwitchOOBE extends NameIDSwitch {
    public NameIDSwitchOOBE(Context context) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.ToggleSwitchStyleOOBE), null);
        m6260a();
    }

    public NameIDSwitchOOBE(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.ToggleSwitchStyleOOBE), attributeSet);
        m6260a();
    }

    public NameIDSwitchOOBE(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6260a();
    }
}
