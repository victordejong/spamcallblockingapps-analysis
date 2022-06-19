package com.truecaller.account.network;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0007\u0018�� \u00132\u00020\u0001:\u0001\u0014BC\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006R\u001b\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0004\u001a\u0004\b\u000e\u0010\u0006R\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006¨\u0006\u0015"}, d2 = {"Lcom/truecaller/account/network/SimDto;", "", "", "mnc", "Ljava/lang/String;", "getMnc", "()Ljava/lang/String;", "msin", "getMsin", "phoneNumber", "getPhoneNumber", "imsi", "getImsi", "operator", "getOperator", "mcc", "getMcc", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "a", "account-network_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/SimDto.class */
public final class SimDto {
    public static final C2774a Companion = new C2774a(null);
    private final String imsi;
    private final String mcc;
    private final String mnc;
    private final String msin;
    private final String operator;
    private final String phoneNumber;

    /* renamed from: com.truecaller.account.network.SimDto$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/network/SimDto$a.class */
    public static final class C2774a {
        public C2774a(f fVar) {
        }
    }

    public SimDto(String str, String str2, String str3, String str4, String str5, String str6) {
        this.imsi = str;
        this.operator = str2;
        this.mcc = str3;
        this.mnc = str4;
        this.msin = str5;
        this.phoneNumber = str6;
    }

    public final String getImsi() {
        return this.imsi;
    }

    public final String getMcc() {
        return this.mcc;
    }

    public final String getMnc() {
        return this.mnc;
    }

    public final String getMsin() {
        return this.msin;
    }

    public final String getOperator() {
        return this.operator;
    }

    public final String getPhoneNumber() {
        return this.phoneNumber;
    }
}
