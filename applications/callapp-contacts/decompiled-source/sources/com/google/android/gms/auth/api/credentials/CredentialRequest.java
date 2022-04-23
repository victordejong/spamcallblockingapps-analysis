package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest.class */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new h();
    private final boolean zzaa;
    private final String[] zzab;
    private final CredentialPickerConfig zzac;
    private final CredentialPickerConfig zzad;
    private final boolean zzae;
    private final String zzaf;
    private final String zzag;
    private final boolean zzah;
    private final int zzv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f22468a;

        /* renamed from: b  reason: collision with root package name */
        String[] f22469b;

        /* renamed from: c  reason: collision with root package name */
        CredentialPickerConfig f22470c;

        /* renamed from: d  reason: collision with root package name */
        CredentialPickerConfig f22471d;
        String g;
        boolean e = false;
        private boolean h = false;
        String f = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.zzv = i;
        this.zzaa = z;
        this.zzab = (String[]) o.a(strArr);
        this.zzac = credentialPickerConfig == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig;
        this.zzad = credentialPickerConfig2 == null ? new CredentialPickerConfig.a().a() : credentialPickerConfig2;
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

    private CredentialRequest(a aVar) {
        this(4, aVar.f22468a, aVar.f22469b, aVar.f22470c, aVar.f22471d, aVar.e, aVar.f, aVar.g, false);
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
        int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1, isPasswordLoginSupported());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 2, getAccountTypes(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 3, getCredentialPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 4, getCredentialHintPickerConfig(), i, false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 5, isIdTokenRequested());
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 6, getServerClientId(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 7, getIdTokenNonce(), false);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 8, this.zzah);
        com.google.android.gms.common.internal.safeparcel.a.a(parcel, 1000, this.zzv);
        com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2);
    }
}
