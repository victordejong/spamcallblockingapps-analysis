package com.tmobile.services.nameid.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.view.ContextThemeWrapper;
import com.tmobile.services.C1517R;
/* renamed from: com.tmobile.services.nameid.ui.NameIDSwitchNormal */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/NameIDSwitchNormal.class */
public class NameIDSwitchNormal extends NameIDSwitch {
    public NameIDSwitchNormal(Context context) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.ToggleSwitchStyleLight), null);
        m6260a();
    }

    public NameIDSwitchNormal(Context context, AttributeSet attributeSet) {
        super(new ContextThemeWrapper(context, (int) C1517R.style.ToggleSwitchStyleLight), attributeSet);
        m6260a();
    }

    public NameIDSwitchNormal(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6260a();
    }
}
