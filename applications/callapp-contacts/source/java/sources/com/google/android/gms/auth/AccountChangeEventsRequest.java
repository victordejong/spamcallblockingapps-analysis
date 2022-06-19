package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/AccountChangeEventsRequest.class */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new C11770c();
    private final int zze;
    @Deprecated
    private String zzg;
    private int zzi;
    private Account zzk;

    public AccountChangeEventsRequest() {
        this.zze = 1;
    }

    public AccountChangeEventsRequest(int i, int i2, String str, Account account) {
        this.zze = i;
        this.zzi = i2;
        this.zzg = str;
        if (account != null || TextUtils.isEmpty(str)) {
            this.zzk = account;
        } else {
            this.zzk = new Account(str, "com.google");
        }
    }

    public Account getAccount() {
        return this.zzk;
    }

    @Deprecated
    public String getAccountName() {
        return this.zzg;
    }

    public int getEventIndex() {
        return this.zzi;
    }

    public AccountChangeEventsRequest setAccount(Account account) {
        this.zzk = account;
        return this;
    }

    @Deprecated
    public AccountChangeEventsRequest setAccountName(String str) {
        this.zzg = str;
        return this;
    }

    public AccountChangeEventsRequest setEventIndex(int i) {
        this.zzi = i;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19112a(parcel, 1, this.zze);
        C12050a.m19112a(parcel, 2, this.zzi);
        C12050a.m19104a(parcel, 3, this.zzg, false);
        C12050a.m19107a(parcel, 4, this.zzk, i, false);
        C12050a.m19095b(parcel, m19116a);
    }
}
