package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest.class */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new C11706k();
    private final String[] zzab;
    private final boolean zzae;
    private final String zzaf;
    private final String zzag;
    private final CredentialPickerConfig zzai;
    private final boolean zzaj;
    private final boolean zzak;
    private final int zzv;

    /* renamed from: com.google.android.gms.auth.api.credentials.HintRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest$a.class */
    public static final class C11694a {

        /* renamed from: a */
        public boolean f39010a;

        /* renamed from: b */
        public boolean f39011b;

        /* renamed from: c */
        public String[] f39012c;

        /* renamed from: d */
        public CredentialPickerConfig f39013d = new CredentialPickerConfig.C11692a().m19574a();

        /* renamed from: e */
        boolean f39014e = false;

        /* renamed from: f */
        String f39015f;

        /* renamed from: g */
        String f39016g;
    }

    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.zzv = i;
        this.zzai = (CredentialPickerConfig) C12045o.m19162a(credentialPickerConfig);
        this.zzaj = z;
        this.zzak = z2;
        this.zzab = (String[]) C12045o.m19162a(strArr);
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

    /* JADX INFO: Access modifiers changed from: private */
    public HintRequest(C11694a c11694a) {
        this(2, c11694a.f39013d, c11694a.f39010a, c11694a.f39011b, c11694a.f39012c, c11694a.f39014e, c11694a.f39015f, c11694a.f39016g);
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
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19107a(parcel, 1, getHintPickerConfig(), i, false);
        C12050a.m19101a(parcel, 2, isEmailAddressIdentifierSupported());
        C12050a.m19101a(parcel, 3, this.zzak);
        C12050a.m19097a(parcel, 4, getAccountTypes(), false);
        C12050a.m19101a(parcel, 5, isIdTokenRequested());
        C12050a.m19104a(parcel, 6, getServerClientId(), false);
        C12050a.m19104a(parcel, 7, getIdTokenNonce(), false);
        C12050a.m19112a(parcel, 1000, this.zzv);
        C12050a.m19095b(parcel, m19116a);
    }
}
