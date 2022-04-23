package com.amazonaws.mobileconnectors.s3.transferutility;

import com.callapp.contacts.model.Constants;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions.class */
public class TransferUtilityOptions implements Serializable {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    long f6737a;

    /* renamed from: b  reason: collision with root package name */
    int f6738b;

    /* renamed from: c  reason: collision with root package name */
    TransferNetworkConnectionType f6739c;

    public TransferUtilityOptions() {
        this.f6737a = Constants.MINUTE_IN_MILLIS;
        this.f6738b = a();
        this.f6739c = TransferNetworkConnectionType.ANY;
    }

    public TransferUtilityOptions(int i, TransferNetworkConnectionType transferNetworkConnectionType) {
        this.f6737a = Constants.MINUTE_IN_MILLIS;
        this.f6738b = i;
        this.f6739c = transferNetworkConnectionType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        return (Runtime.getRuntime().availableProcessors() + 1) * 2;
    }
}
