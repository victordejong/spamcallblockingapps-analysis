package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/e.class */
public final class e implements Parcelable.Creator<RecordConsentRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(RecordConsentRequest recordConsentRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, recordConsentRequest.f4254a);
        b.a(parcel, 2, recordConsentRequest.f4255b, i);
        b.a(parcel, 3, recordConsentRequest.c, i);
        b.a(parcel, 4, recordConsentRequest.d);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RecordConsentRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        String str = null;
        Scope[] scopeArr = null;
        Account account = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    account = (Account) a.a(parcel, readInt, Account.CREATOR);
                    break;
                case 3:
                    scopeArr = (Scope[]) a.b(parcel, readInt, Scope.CREATOR);
                    break;
                case 4:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new RecordConsentRequest(i, account, scopeArr, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ RecordConsentRequest[] newArray(int i) {
        return new RecordConsentRequest[i];
    }
}
