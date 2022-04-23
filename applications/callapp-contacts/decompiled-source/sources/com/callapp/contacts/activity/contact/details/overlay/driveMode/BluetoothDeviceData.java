package com.callapp.contacts.activity.contact.details.overlay.driveMode;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;", "", "deviceName", "", "deviceAddress", "(Ljava/lang/String;Ljava/lang/String;)V", "getDeviceAddress", "()Ljava/lang/String;", "getDeviceName", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData.class */
public final class BluetoothDeviceData {

    /* renamed from: a  reason: collision with root package name */
    private final String f12298a;

    /* renamed from: b  reason: collision with root package name */
    private final String f12299b;

    public BluetoothDeviceData(String deviceName, String deviceAddress) {
        p.d(deviceName, "deviceName");
        p.d(deviceAddress, "deviceAddress");
        this.f12298a = deviceName;
        this.f12299b = deviceAddress;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BluetoothDeviceData)) {
            return false;
        }
        BluetoothDeviceData bluetoothDeviceData = (BluetoothDeviceData) obj;
        return p.a((Object) this.f12298a, (Object) bluetoothDeviceData.f12298a) && p.a((Object) this.f12299b, (Object) bluetoothDeviceData.f12299b);
    }

    public final String getDeviceAddress() {
        return this.f12299b;
    }

    public final String getDeviceName() {
        return this.f12298a;
    }

    public final int hashCode() {
        String str = this.f12298a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f12299b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "BluetoothDeviceData(deviceName=" + this.f12298a + ", deviceAddress=" + this.f12299b + ")";
    }
}
