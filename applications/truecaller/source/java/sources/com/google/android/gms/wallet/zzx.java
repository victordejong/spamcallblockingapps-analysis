package com.google.android.gms.wallet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzx.class */
public final class zzx implements Parcelable.Creator<PaymentDataRequest> {
    @Override // android.os.Parcelable.Creator
    public final PaymentDataRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        CardRequirements cardRequirements = null;
        ShippingAddressRequirements shippingAddressRequirements = null;
        ArrayList<Integer> arrayList = null;
        PaymentMethodTokenizationParameters paymentMethodTokenizationParameters = null;
        TransactionInfo transactionInfo = null;
        String str = null;
        Bundle bundle = null;
        boolean z4 = true;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 2:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 3:
                    cardRequirements = (CardRequirements) SafeParcelReader.m38880i(parcel, readInt, CardRequirements.CREATOR);
                    break;
                case 4:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    shippingAddressRequirements = (ShippingAddressRequirements) SafeParcelReader.m38880i(parcel, readInt, ShippingAddressRequirements.CREATOR);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m38882g(parcel, readInt);
                    break;
                case 7:
                    paymentMethodTokenizationParameters = (PaymentMethodTokenizationParameters) SafeParcelReader.m38880i(parcel, readInt, PaymentMethodTokenizationParameters.CREATOR);
                    break;
                case '\b':
                    transactionInfo = (TransactionInfo) SafeParcelReader.m38880i(parcel, readInt, TransactionInfo.CREATOR);
                    break;
                case '\t':
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new PaymentDataRequest(z, z2, cardRequirements, z3, shippingAddressRequirements, arrayList, paymentMethodTokenizationParameters, transactionInfo, z4, str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PaymentDataRequest[] newArray(int i) {
        return new PaymentDataRequest[i];
    }
}
