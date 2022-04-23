package com.callapp.contacts.receiver;

import android.net.ConnectivityManager;
import android.net.Network;
import com.callapp.contacts.manager.AreaCodesDB;
import com.callapp.contacts.manager.task.Task;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/WifiStateReceiver.class */
public class WifiStateReceiver {

    /* renamed from: c  reason: collision with root package name */
    private static WifiStateReceiver f15654c;

    /* renamed from: a  reason: collision with root package name */
    public ConnectivityManager f15655a;

    /* renamed from: b  reason: collision with root package name */
    public ConnectivityManager.NetworkCallback f15656b = new ConnectivityManager.NetworkCallback() { // from class: com.callapp.contacts.receiver.WifiStateReceiver.1
        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            WifiStateReceiver.a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
        }
    };

    private WifiStateReceiver() {
    }

    public static void a() {
        new Task() { // from class: com.callapp.contacts.receiver.WifiStateReceiver.2
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                AreaCodesDB.a();
            }
        }.execute();
    }

    public static WifiStateReceiver get() {
        if (f15654c == null) {
            synchronized (WifiStateReceiver.class) {
                try {
                    if (f15654c == null) {
                        f15654c = new WifiStateReceiver();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f15654c;
    }
}
