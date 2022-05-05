package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p289o.C9108a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/search/GoogleNowAuthState.class */
public class GoogleNowAuthState extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleNowAuthState> CREATOR = new C9108a();

    /* renamed from: a */
    public String f7208a;

    /* renamed from: b */
    public String f7209b;

    /* renamed from: c */
    public long f7210c;

    public GoogleNowAuthState(String str, String str2, long j) {
        this.f7208a = str;
        this.f7209b = str2;
        this.f7210c = j;
    }

    @Nullable
    /* renamed from: H */
    public String m31652H() {
        return this.f7208a;
    }

    /* renamed from: I */
    public long m31651I() {
        return this.f7210c;
    }

    @Nullable
    /* renamed from: c */
    public String m31650c() {
        return this.f7209b;
    }

    public String toString() {
        String str = this.f7208a;
        String str2 = this.f7209b;
        long j = this.f7210c;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74 + String.valueOf(str2).length());
        sb.append("mAuthCode = ");
        sb.append(str);
        sb.append("\nmAccessToken = ");
        sb.append(str2);
        sb.append("\nmNextAllowedTimeMillis = ");
        sb.append(j);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, m31652H(), false);
        C7031b.m21215a(parcel, 2, m31650c(), false);
        C7031b.m21224a(parcel, 3, m31651I());
        C7031b.m21229a(parcel, a);
    }
}
