package com.callapp.contacts.receiver;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.core.app.JobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.overlay.driveMode.BluetoothDeviceData;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.PrefsUtils;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.service.jobs.BluetoothServiceV1;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/BluetoothReceiver.class */
public class BluetoothReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static HandlerThread f15622a;

    /* renamed from: b  reason: collision with root package name */
    private static Handler f15623b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/BluetoothReceiver$BluetoothTask.class */
    static class BluetoothTask extends Task {

        /* renamed from: a  reason: collision with root package name */
        private final BroadcastReceiver.PendingResult f15624a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f15625b;

        public BluetoothTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f15624a = pendingResult;
            this.f15625b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.a(CallAppApplication.get(), BluetoothServiceV1.class, -311213, this.f15625b);
            } finally {
                this.f15624a.finish();
            }
        }
    }

    public static void a() {
        HandlerThread handlerThread = new HandlerThread(BluetoothReceiver.class.toString());
        f15622a = handlerThread;
        handlerThread.start();
        AndroidUtils.a(f15622a.getLooper());
        f15623b = new Handler(f15622a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        if (b()) {
            BluetoothServiceV1.j.set(isCarBluetoothConnected());
        }
        CallAppApplication.get().registerReceiver(new BluetoothReceiver(), intentFilter, null, f15623b);
    }

    public static boolean b() {
        if (!PhoneManager.get().isDefaultPhoneApp() || !Activities.e()) {
            return false;
        }
        return Prefs.ha.get().intValue() < 3 || CollectionUtils.b(PrefsUtils.a(Prefs.gT));
    }

    public static List<BluetoothDeviceData> getBluetoothCarDeviceList() {
        BluetoothManager bluetoothManager = (BluetoothManager) CallAppApplication.get().getSystemService(BluetoothManager.class);
        ArrayList arrayList = new ArrayList();
        if (!(bluetoothManager == null || bluetoothManager.getAdapter() == null || bluetoothManager.getAdapter().getBondedDevices() == null)) {
            for (BluetoothDevice bluetoothDevice : bluetoothManager.getAdapter().getBondedDevices()) {
                String address = bluetoothDevice.getAddress();
                String name = bluetoothDevice.getName();
                if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1024 && StringUtils.b((CharSequence) name) && StringUtils.b((CharSequence) address)) {
                    if (bluetoothDevice.getBluetoothClass().getDeviceClass() == 1032 || bluetoothDevice.getBluetoothClass().getDeviceClass() == 1056) {
                        arrayList.add(0, new BluetoothDeviceData(name, address));
                    } else {
                        arrayList.add(new BluetoothDeviceData(name, address));
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean isCarBluetoothConnected() {
        BluetoothAdapter defaultAdapter;
        try {
            List<String> a2 = PrefsUtils.a(Prefs.gT);
            if (!CollectionUtils.b(a2) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null || !defaultAdapter.isEnabled()) {
                return false;
            }
            for (String str : a2) {
                BluetoothDevice remoteDevice = defaultAdapter.getRemoteDevice(str);
                if (remoteDevice != null && ((Boolean) remoteDevice.getClass().getMethod("isConnected", null).invoke(remoteDevice, null)).booleanValue()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        new BluetoothTask(goAsync(), intent).execute();
    }
}
