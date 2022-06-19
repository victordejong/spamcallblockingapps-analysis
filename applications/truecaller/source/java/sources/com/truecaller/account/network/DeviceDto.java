package com.truecaller.account.network;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0007\u0018��2\u00020\u0001B_\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0018\u0010\u0019R!\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\t\u001a\u0004\b\u0011\u0010\u000bR\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\t\u001a\u0004\b\u0013\u0010\u000bR\u001f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0005\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\u0016\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\t\u001a\u0004\b\u0017\u0010\u000b¨\u0006\u001a"}, d2 = {"Lcom/truecaller/account/network/DeviceDto;", "", "", "", "simSerials", "Ljava/util/List;", "getSimSerials", "()Ljava/util/List;", "osName", "Ljava/lang/String;", "getOsName", "()Ljava/lang/String;", "osVersion", "getOsVersion", "manufacturer", "getManufacturer", "model", "getModel", "language", "getLanguage", "mobileServices", "getMobileServices", "deviceId", "getDeviceId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/DeviceDto.class */
public final class DeviceDto {
    private final String deviceId;
    private final String language;
    private final String manufacturer;
    private final List<String> mobileServices;
    private final String model;
    private final String osName;
    private final String osVersion;
    private final List<String> simSerials;

    public DeviceDto(String str, String str2, String str3, String str4, String str5, String str6, List<String> list, List<String> list2) {
        l.e(str, "deviceId");
        l.e(list2, "mobileServices");
        this.deviceId = str;
        this.osName = str2;
        this.osVersion = str3;
        this.manufacturer = str4;
        this.model = str5;
        this.language = str6;
        this.simSerials = list;
        this.mobileServices = list2;
    }

    public final String getDeviceId() {
        return this.deviceId;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getManufacturer() {
        return this.manufacturer;
    }

    public final List<String> getMobileServices() {
        return this.mobileServices;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getOsName() {
        return this.osName;
    }

    public final String getOsVersion() {
        return this.osVersion;
    }

    public final List<String> getSimSerials() {
        return this.simSerials;
    }
}
