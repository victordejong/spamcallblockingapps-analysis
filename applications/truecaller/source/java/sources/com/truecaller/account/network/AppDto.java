package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\b\u0007\u0018��2\u00020\u0001B+\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001b\u0010\f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0010\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006¨\u0006\u0014"}, d2 = {"Lcom/truecaller/account/network/AppDto;", "", "", "minorVersion", "I", "getMinorVersion", "()I", "", "store", "Ljava/lang/String;", "getStore", "()Ljava/lang/String;", "buildVersion", "Ljava/lang/Integer;", "getBuildVersion", "()Ljava/lang/Integer;", "majorVersion", "getMajorVersion", "<init>", "(IILjava/lang/Integer;Ljava/lang/String;)V", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/AppDto.class */
public final class AppDto {
    private final Integer buildVersion;
    private final int majorVersion;
    private final int minorVersion;
    private final String store;

    public AppDto(int i, int i2, Integer num, String str) {
        this.majorVersion = i;
        this.minorVersion = i2;
        this.buildVersion = num;
        this.store = str;
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

    public final String getStore() {
        return this.store;
    }
}
