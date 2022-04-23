package com.callapp.contacts.activity.records;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.callapp.contacts.activity.interfaces.LowDeviceStorageListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/LowDeviceStorageBroadcastReceiver.class */
public class LowDeviceStorageBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        CLog.a(LowDeviceStorageBroadcastReceiver.class, action);
        if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            Prefs.fi.set(Boolean.FALSE);
            EventBusManager.f14368a.a((EventType<L, EventType<LowDeviceStorageListener, Boolean>>) LowDeviceStorageListener.f12950a, (EventType<LowDeviceStorageListener, Boolean>) Boolean.FALSE, false);
        }
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            Prefs.fi.set(Boolean.TRUE);
            EventBusManager.f14368a.a((EventType<L, EventType<LowDeviceStorageListener, Boolean>>) LowDeviceStorageListener.f12950a, (EventType<LowDeviceStorageListener, Boolean>) Boolean.TRUE, false);
        }
    }
}
