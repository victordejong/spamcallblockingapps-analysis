package com.truecaller.account.network;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018�� \u00102\u00020\u0001:\u0001\u0011B)\u0012\b\b\u0001\u0010\f\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/truecaller/account/network/CheckCredentialsRequestDto;", "", "", "endpoint", "Ljava/lang/String;", "getEndpoint", "()Ljava/lang/String;", "Lcom/truecaller/account/network/CheckCredentialsDeviceDto;", AnalyticsConstants.DEVICE, "Lcom/truecaller/account/network/CheckCredentialsDeviceDto;", "getDevice", "()Lcom/truecaller/account/network/CheckCredentialsDeviceDto;", "reason", "getReason", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CheckCredentialsRequestDto.class */
public final class CheckCredentialsRequestDto {
    public static final C2770a Companion = new C2770a(null);
    public static final String REASON_RECEIVED_UNAUTHORIZED = "received_unauthorized";
    public static final String REASON_RESTORED_FROM_ACCOUNT_MANAGER = "restored_from_account_manager";
    public static final String REASON_RESTORED_FROM_AUTOBACKUP = "restored_from_autobackup";
    public static final String REASON_RESTORED_FROM_FILE = "restored_from_file";
    private final CheckCredentialsDeviceDto device;
    private final String endpoint;
    private final String reason;

    /* renamed from: com.truecaller.account.network.CheckCredentialsRequestDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/CheckCredentialsRequestDto$a.class */
    public static final class C2770a {
        public C2770a(f fVar) {
        }
    }

    public CheckCredentialsRequestDto(String str, String str2, CheckCredentialsDeviceDto checkCredentialsDeviceDto) {
        l.e(str, "reason");
        this.reason = str;
        this.endpoint = str2;
        this.device = checkCredentialsDeviceDto;
    }

    public /* synthetic */ CheckCredentialsRequestDto(String str, String str2, CheckCredentialsDeviceDto checkCredentialsDeviceDto, int i, f fVar) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : checkCredentialsDeviceDto);
    }

    public final CheckCredentialsDeviceDto getDevice() {
        return this.device;
    }

    public final String getEndpoint() {
        return this.endpoint;
    }

    public final String getReason() {
        return this.reason;
    }
}
