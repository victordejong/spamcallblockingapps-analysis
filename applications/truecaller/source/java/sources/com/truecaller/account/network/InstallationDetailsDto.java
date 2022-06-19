package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B;\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR!\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/truecaller/account/network/InstallationDetailsDto;", "", "Lcom/truecaller/account/network/AppDto;", "app", "Lcom/truecaller/account/network/AppDto;", "getApp", "()Lcom/truecaller/account/network/AppDto;", "Lcom/truecaller/account/network/DeviceDto;", AnalyticsConstants.DEVICE, "Lcom/truecaller/account/network/DeviceDto;", "getDevice", "()Lcom/truecaller/account/network/DeviceDto;", "", "Lcom/truecaller/account/network/SimDto;", "sims", "Ljava/util/List;", "getSims", "()Ljava/util/List;", "", "language", "Ljava/lang/String;", "getLanguage", "()Ljava/lang/String;", "Lcom/truecaller/account/network/VersionDto;", "storeVersion", "Lcom/truecaller/account/network/VersionDto;", "getStoreVersion", "()Lcom/truecaller/account/network/VersionDto;", "<init>", "(Ljava/lang/String;Lcom/truecaller/account/network/DeviceDto;Lcom/truecaller/account/network/AppDto;Lcom/truecaller/account/network/VersionDto;Ljava/util/List;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/InstallationDetailsDto.class */
public final class InstallationDetailsDto {
    private final AppDto app;
    private final DeviceDto device;
    private final String language;
    private final List<SimDto> sims;
    private final VersionDto storeVersion;

    public InstallationDetailsDto(String str, DeviceDto deviceDto, AppDto appDto, VersionDto versionDto, List<SimDto> list) {
        l.e(deviceDto, AnalyticsConstants.DEVICE);
        l.e(appDto, "app");
        this.language = str;
        this.device = deviceDto;
        this.app = appDto;
        this.storeVersion = versionDto;
        this.sims = list;
    }

    public final AppDto getApp() {
        return this.app;
    }

    public final DeviceDto getDevice() {
        return this.device;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final List<SimDto> getSims() {
        return this.sims;
    }

    public final VersionDto getStoreVersion() {
        return this.storeVersion;
    }
}
