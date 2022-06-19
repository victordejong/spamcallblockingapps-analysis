package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/truecaller/account/network/CheckCredentialsDeviceDto;", "", "", "manufacturer", "Ljava/lang/String;", "getManufacturer", "()Ljava/lang/String;", "deviceId", "getDeviceId", "model", "getModel", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CheckCredentialsDeviceDto.class */
public final class CheckCredentialsDeviceDto {
    private final String deviceId;
    private final String manufacturer;
    private final String model;

    public CheckCredentialsDeviceDto(String str, String str2, String str3) {
        l.e(str, "deviceId");
        this.deviceId = str;
        this.model = str2;
        this.manufacturer = str3;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final String getModel() {
        return this.model;
    }
}
