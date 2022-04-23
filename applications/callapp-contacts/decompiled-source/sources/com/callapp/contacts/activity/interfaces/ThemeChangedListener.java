package com.callapp.contacts.activity.interfaces;

import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/ThemeChangedListener.class */
public interface ThemeChangedListener {
    public static final EventType<ThemeChangedListener, EventBusManager.CallAppDataType> i = _$$Lambda$ThemeChangedListener$sjoz5dxx1_RzP2GdTJgBASpnMZ4.INSTANCE;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/interfaces/ThemeChangedListener$_CC.class */
    public final /* synthetic */ class _CC {
    }

    void onThemeChanged();
}
