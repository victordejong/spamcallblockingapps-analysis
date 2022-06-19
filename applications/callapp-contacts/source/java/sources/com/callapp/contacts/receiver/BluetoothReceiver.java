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

    /* renamed from: a */
    private static HandlerThread f27363a;

    /* renamed from: b */
    private static Handler f27364b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/receiver/BluetoothReceiver$BluetoothTask.class */
    static class BluetoothTask extends Task {

        /* renamed from: a */
        private final BroadcastReceiver.PendingResult f27365a;

        /* renamed from: b */
        private final Intent f27366b;

        public BluetoothTask(BroadcastReceiver.PendingResult pendingResult, Intent intent) {
            this.f27365a = pendingResult;
            this.f27366b = intent;
        }

        @Override // com.callapp.contacts.manager.task.Task
        public void doTask() {
            try {
                JobIntentService.m44627a(CallAppApplication.get(), BluetoothServiceV1.class, -311213, this.f27366b);
            } finally {
                this.f27365a.finish();
            }
        }
    }

    /* renamed from: a */
    public static void m27898a() {
        HandlerThread handlerThread = new HandlerThread(BluetoothReceiver.class.toString());
        f27363a = handlerThread;
        handlerThread.start();
        AndroidUtils.m27631a(f27363a.getLooper());
        f27364b = new Handler(f27363a.getLooper());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_CONNECTED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        if (m27897b()) {
            BluetoothServiceV1.f27580j.set(isCarBluetoothConnected());
        }
        CallAppApplication.get().registerReceiver(new BluetoothReceiver(), intentFilter, null, f27364b);
    }

    /* renamed from: b */
    public static boolean m27897b() {
        if (!PhoneManager.get().isDefaultPhoneApp() || !Activities.m27641e()) {
            return false;
        }
        return Prefs.f26621ha.get().intValue() < 3 || CollectionUtils.m26068b(PrefsUtils.m28175a(Prefs.f26561gT));
    }

    public static List<BluetoothDeviceData> getBluetoothCarDeviceList() {
        BluetoothManager bluetoothManager = (BluetoothManager) CallAppApplication.get().getSystemService(BluetoothManager.class);
        ArrayList arrayList = new ArrayList();
        if (bluetoothManager != null && bluetoothManager.getAdapter() != null && bluetoothManager.getAdapter().getBondedDevices() != null) {
            for (BluetoothDevice bluetoothDevice : bluetoothManager.getAdapter().getBondedDevices()) {
                String address = bluetoothDevice.getAddress();
                String name = bluetoothDevice.getName();
                if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1024 && StringUtils.m26045b((CharSequence) name) && StringUtils.m26045b((CharSequence) address)) {
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
            List<String> m28175a = PrefsUtils.m28175a(Prefs.f26561gT);
            if (!CollectionUtils.m26068b(m28175a) || (defaultAdapter = BluetoothAdapter.getDefaultAdapter()) == null || !defaultAdapter.isEnabled()) {
                return false;
            }
            for (String str : m28175a) {
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
