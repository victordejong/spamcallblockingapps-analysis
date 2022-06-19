package com.callapp.contacts.receiver;

import android.net.ConnectivityManager;
import android.net.Network;
import com.callapp.contacts.manager.AreaCodesDB;
import com.callapp.contacts.manager.task.Task;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/WifiStateReceiver.class */
public class WifiStateReceiver {

    /* renamed from: c */
    private static WifiStateReceiver f27395c;

    /* renamed from: a */
    public ConnectivityManager f27396a;

    /* renamed from: b */
    public ConnectivityManager.NetworkCallback f27397b = new ConnectivityManager.NetworkCallback() { // from class: com.callapp.contacts.receiver.WifiStateReceiver.1
        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            WifiStateReceiver.m27883a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
        }
    };

    private WifiStateReceiver() {
    }

    /* renamed from: a */
    public static void m27883a() {
        new Task() { // from class: com.callapp.contacts.receiver.WifiStateReceiver.2
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                AreaCodesDB.m28762a();
            }
        }.execute();
    }

    public static WifiStateReceiver get() {
        if (f27395c == null) {
            synchronized (WifiStateReceiver.class) {
                try {
                    if (f27395c == null) {
                        f27395c = new WifiStateReceiver();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f27395c;
    }
}
