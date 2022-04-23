package com.callapp.contacts.manager.phone;

import android.bluetooth.BluetoothAdapter;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.receiver.BluetoothReceiver;
import com.callapp.contacts.receiver.HeadsetReceiver;
import com.callapp.contacts.util.AndroidUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager.class */
public class BluetoothHeadsetConnectivityManager {

    /* renamed from: a  reason: collision with root package name */
    private static BluetoothAdapter f15119a;

    public static void a() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            HandlerThread handlerThread = new HandlerThread("CallApp.BluetoothAdapter");
            handlerThread.start();
            AndroidUtils.a(handlerThread.getLooper());
            new Handler(handlerThread.getLooper()).post(new Runnable() { // from class: com.callapp.contacts.manager.phone.BluetoothHeadsetConnectivityManager.1
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothAdapter unused = BluetoothHeadsetConnectivityManager.f15119a = BluetoothAdapter.getDefaultAdapter();
                }
            });
            HeadsetReceiver.a();
            BluetoothReceiver.a();
        }
    }

    public static boolean isBluetoothConnected() {
        BluetoothAdapter bluetoothAdapter;
        PermissionManager.get();
        return PermissionManager.a("android.permission.BLUETOOTH") && (bluetoothAdapter = f15119a) != null && bluetoothAdapter.isEnabled() && f15119a.getProfileConnectionState(1) == 2;
    }

    public static boolean isUsingBT() {
        return isBluetoothConnected() && PhoneManager.isBluetoothAudioSCOActive();
    }
}
