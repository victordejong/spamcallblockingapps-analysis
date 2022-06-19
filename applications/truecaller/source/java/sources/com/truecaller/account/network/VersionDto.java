package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\r\b\u0007\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/truecaller/account/network/VersionDto;", "", "", "buildVersion", "Ljava/lang/Integer;", "getBuildVersion", "()Ljava/lang/Integer;", "minorVersion", "I", "getMinorVersion", "()I", "majorVersion", "getMajorVersion", "<init>", "(IILjava/lang/Integer;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/VersionDto.class */
public final class VersionDto {
    private final Integer buildVersion;
    private final int majorVersion;
    private final int minorVersion;

    public VersionDto(int i, int i2, Integer num) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.buildVersion = num;
    }

    public final Integer getBuildVersion() {
        return this.buildVersion;
    }

    public final int getMajorVersion() {
        return this.majorVersion;
    }

    public final int getMinorVersion() {
        return this.minorVersion;
    }
}
