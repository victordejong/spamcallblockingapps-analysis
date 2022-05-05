package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/RecordConsentRequest.class */
public class RecordConsentRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RecordConsentRequest> CREATOR = new e();

    /* renamed from: a  reason: collision with root package name */
    final int f4254a;

    /* renamed from: b  reason: collision with root package name */
    final Account f4255b;
    final Scope[] c;
    final String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecordConsentRequest(int i, Account account, Scope[] scopeArr, String str) {
        this.f4254a = i;
        this.f4255b = account;
        this.c = scopeArr;
        this.d = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        e.a(this, parcel, i);
    }
}
