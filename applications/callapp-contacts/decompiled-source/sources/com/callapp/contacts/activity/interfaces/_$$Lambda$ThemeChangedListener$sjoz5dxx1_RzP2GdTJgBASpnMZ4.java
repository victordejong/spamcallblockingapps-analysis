package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.activity.interfaces.-$;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/_$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4.class */
public final /* synthetic */ class _$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4 implements EventType {
    public static final /* synthetic */ -$.Lambda.ThemeChangedListener.sjoz5dxx1_RzP2GdTJgBASpnMZ4 INSTANCE = new _$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4();

    private /* synthetic */ _$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4() {
    }

    @Override // com.callapp.contacts.event.bus.EventType
    public final void fire(Object obj, Object obj2) {
        EventBusManager.CallAppDataType callAppDataType = (EventBusManager.CallAppDataType) obj2;
        ((ThemeChangedListener) obj).onThemeChanged();
    }
}
