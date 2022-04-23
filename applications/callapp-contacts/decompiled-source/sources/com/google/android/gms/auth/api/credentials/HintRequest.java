package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest.class */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new k();
    private final String[] zzab;
    private final boolean zzae;
    private final String zzaf;
    private final String zzag;
    private final CredentialPickerConfig zzai;
    private final boolean zzaj;
    private final boolean zzak;
    private final int zzv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f22472a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f22473b;

        /* renamed from: c  reason: collision with root package name */
        public String[] f22474c;

        /* renamed from: d  reason: collision with root package name */
        public CredentialPickerConfig f22475d = new CredentialPickerConfig.a().a();
        boolean e = false;
        String f;
        String g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.zzv = i;
        this.zzai = (CredentialPickerConfig) o.a(credentialPickerConfig);
        this.zzaj = z;
        this.zzak = z2;
        this.zzab = (String[]) o.a(strArr);
        if (i < 2) {
            this.zzae = true;
            this.zzaf = null;
            this.zzag = null;
            return;
        }
        this.zzae = z3;
        this.zzaf = str;
        this.zzag = str2;
    }

    private HintRequest(a aVar) {
        this(2, aVar.f22475d, aVar.f22472a, aVar.f22473b, aVar.f22474c, aVar.e, aVar.f, aVar.g);
    }

    public final String[] getAccountTypes() {
        return this.zzab;
    }

    public final CredentialPickerConfig getHintPickerConfig() {
        return this.zzai;
    }

    public final String getIdTokenNonce() {
        return this.zzag;
    }

    public final String getServerClientId() {
        return this.zzaf;
    }

    public final boolean isEmailAddressIdentifierSupported() {
        return this.zzaj;
    }

    public final boolean isIdTokenRequested() {
        return this.zzae;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, getHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, isEmailAddressIdentifierSupported());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, this.zzak);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, getIdTokenNonce(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, this.zzv);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
