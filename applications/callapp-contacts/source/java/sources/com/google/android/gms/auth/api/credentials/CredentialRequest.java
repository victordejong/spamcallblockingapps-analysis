package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest.class */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new C11703h();
    private final boolean zzaa;
    private final String[] zzab;
    private final CredentialPickerConfig zzac;
    private final CredentialPickerConfig zzad;
    private final boolean zzae;
    private final String zzaf;
    private final String zzag;
    private final boolean zzah;
    private final int zzv;

    /* renamed from: com.google.android.gms.auth.api.credentials.CredentialRequest$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest$a.class */
    public static final class C11693a {

        /* renamed from: a */
        boolean f39002a;

        /* renamed from: b */
        String[] f39003b;

        /* renamed from: c */
        CredentialPickerConfig f39004c;

        /* renamed from: d */
        CredentialPickerConfig f39005d;

        /* renamed from: g */
        String f39008g;

        /* renamed from: e */
        boolean f39006e = false;

        /* renamed from: h */
        private boolean f39009h = false;

        /* renamed from: f */
        String f39007f = null;
    }

    public CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.zzv = i;
        this.zzaa = z;
        this.zzab = (String[]) C12045o.m19162a(strArr);
        this.zzac = credentialPickerConfig == null ? new CredentialPickerConfig.C11692a().m19574a() : credentialPickerConfig;
        this.zzad = credentialPickerConfig2 == null ? new CredentialPickerConfig.C11692a().m19574a() : credentialPickerConfig2;
        if (i < 3) {
            this.zzae = true;
            this.zzaf = null;
            this.zzag = null;
        } else {
            this.zzae = z2;
            this.zzaf = str;
            this.zzag = str2;
        }
        this.zzah = z3;
    }

    private CredentialRequest(C11693a c11693a) {
        this(4, c11693a.f39002a, c11693a.f39003b, c11693a.f39004c, c11693a.f39005d, c11693a.f39006e, c11693a.f39007f, c11693a.f39008g, false);
    }

    public final String[] getAccountTypes() {
        return this.zzab;
    }

    public final Set<String> getAccountTypesSet() {
        return new HashSet(Arrays.asList(this.zzab));
    }

    public final CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.zzad;
    }

    public final CredentialPickerConfig getCredentialPickerConfig() {
        return this.zzac;
    }

    public final String getIdTokenNonce() {
        return this.zzag;
    }

    public final String getServerClientId() {
        return this.zzaf;
    }

    @Deprecated
    public final boolean getSupportsPasswordLogin() {
        return isPasswordLoginSupported();
    }

    public final boolean isIdTokenRequested() {
        return this.zzae;
    }

    public final boolean isPasswordLoginSupported() {
        return this.zzaa;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19101a(parcel, 1, isPasswordLoginSupported());
        C12050a.m19097a(parcel, 2, getAccountTypes(), false);
        C12050a.m19107a(parcel, 3, getCredentialPickerConfig(), i, false);
        C12050a.m19107a(parcel, 4, getCredentialHintPickerConfig(), i, false);
        C12050a.m19101a(parcel, 5, isIdTokenRequested());
        C12050a.m19104a(parcel, 6, getServerClientId(), false);
        C12050a.m19104a(parcel, 7, getIdTokenNonce(), false);
        C12050a.m19101a(parcel, 8, this.zzah);
        C12050a.m19112a(parcel, 1000, this.zzv);
        C12050a.m19095b(parcel, m19116a);
    }
}
