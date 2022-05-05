package com.privacystar.core.p011ui.detail_view.settings;

import java.util.Observable;
/* renamed from: com.privacystar.core.ui.detail_view.settings.SwitchState */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/SwitchState.class */
public class SwitchState extends Observable {
    private static SwitchState psServiceSwitch;
    private boolean switchEnabled = false;

    public static SwitchState getPsServiceSwitchState() {
        if (psServiceSwitch == null) {
            psServiceSwitch = new SwitchState();
        }
        return psServiceSwitch;
    }

    public boolean getState() {
        return this.switchEnabled;
    }

    public void setState(boolean z) {
        this.switchEnabled = z;
        setChanged();
        notifyObservers();
    }

    public void toggleSwitch() {
        this.switchEnabled = !this.switchEnabled;
        setChanged();
        notifyObservers();
    }
}
