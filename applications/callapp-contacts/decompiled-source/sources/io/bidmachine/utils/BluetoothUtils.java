package io.bidmachine.utils;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.core.Utils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/BluetoothUtils.class */
public class BluetoothUtils {
    private static final int[] profileArray;
    private static final Map<Integer, BluetoothProfile> proxyMap;
    private static final BluetoothProfile.ServiceListener listener = new BluetoothProfile.ServiceListener() { // from class: io.bidmachine.utils.BluetoothUtils.1
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            BluetoothUtils.proxyMap.put(Integer.valueOf(i), bluetoothProfile);
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public final void onServiceDisconnected(int i) {
        }
    };
    private static boolean isRegistered = false;

    static {
        int[] iArr = {1};
        profileArray = iArr;
        proxyMap = new HashMap(iArr.length);
    }

    private static Set<String> getConnectedDevices(Context context, Integer num) {
        boolean isPermissionGranted = Utils.isPermissionGranted(context, "android.permission.BLUETOOTH");
        HashSet hashSet = null;
        if (!isPermissionGranted) {
            return null;
        }
        if (BluetoothAdapter.getDefaultAdapter() == null) {
            return null;
        }
        hashSet = new HashSet();
        try {
            Iterator<Map.Entry<Integer, BluetoothProfile>> it2 = proxyMap.entrySet().iterator();
            while (true) {
                hashSet = hashSet;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Integer, BluetoothProfile> next = it2.next();
                if (num == null || next.getKey().equals(num)) {
                    BluetoothProfile value = next.getValue();
                    if (value != null) {
                        for (BluetoothDevice bluetoothDevice : value.getConnectedDevices()) {
                            String name = bluetoothDevice.getName();
                            if (!TextUtils.isEmpty(name)) {
                                hashSet.add(name);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            return hashSet;
        }
        return hashSet;
    }

    public static Set<String> getConnectedHeadsets(Context context) {
        return getConnectedDevices(context, 1);
    }

    public static Boolean isHeadsetConnected(Context context) {
        if (!Utils.isPermissionGranted(context, "android.permission.BLUETOOTH")) {
            return null;
        }
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            boolean z = true;
            if ((defaultAdapter != null ? defaultAdapter.getProfileConnectionState(1) : -1) != 2) {
                z = false;
            }
            return Boolean.valueOf(z);
        } catch (Exception e) {
            return null;
        }
    }

    public static void register(Context context) {
        BluetoothAdapter defaultAdapter;
        if (!(context == null || context.getApplicationContext() == null || isRegistered || !Utils.isPermissionGranted(context, "android.permission.BLUETOOTH"))) {
            try {
                defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            } catch (Exception e) {
            }
            if (defaultAdapter != null) {
                for (int i : profileArray) {
                    defaultAdapter.getProfileProxy(context.getApplicationContext(), listener, i);
                }
                isRegistered = true;
            }
        }
    }
}
