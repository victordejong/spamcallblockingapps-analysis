package com.amazonaws.mobileconnectors.p100s3.transferutility;

import com.callapp.contacts.model.Constants;
import java.io.Serializable;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferUtilityOptions */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions.class */
public class TransferUtilityOptions implements Serializable {
    @Deprecated

    /* renamed from: a */
    long f12241a;

    /* renamed from: b */
    int f12242b;

    /* renamed from: c */
    TransferNetworkConnectionType f12243c;

    public TransferUtilityOptions() {
        this.f12241a = Constants.MINUTE_IN_MILLIS;
        this.f12242b = m38520a();
        this.f12243c = TransferNetworkConnectionType.ANY;
    }

    public TransferUtilityOptions(int i, TransferNetworkConnectionType transferNetworkConnectionType) {
        this.f12241a = Constants.MINUTE_IN_MILLIS;
        this.f12242b = i;
        this.f12243c = transferNetworkConnectionType;
    }

    /* renamed from: a */
    public static int m38520a() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }
}
