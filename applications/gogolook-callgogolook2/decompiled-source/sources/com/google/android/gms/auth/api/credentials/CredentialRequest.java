package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p229e.C6728e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/CredentialRequest.class */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new C6728e();

    /* renamed from: a */
    public final int f6398a;

    /* renamed from: b */
    public final boolean f6399b;

    /* renamed from: c */
    public final String[] f6400c;

    /* renamed from: d */
    public final CredentialPickerConfig f6401d;

    /* renamed from: e */
    public final CredentialPickerConfig f6402e;

    /* renamed from: f */
    public final boolean f6403f;

    /* renamed from: g */
    public final String f6404g;

    /* renamed from: h */
    public final String f6405h;

    /* renamed from: i */
    public final boolean f6406i;

    public CredentialRequest(int i, boolean z, String[] strArr, CredentialPickerConfig credentialPickerConfig, CredentialPickerConfig credentialPickerConfig2, boolean z2, String str, String str2, boolean z3) {
        this.f6398a = i;
        this.f6399b = z;
        C7021t.m21290a(strArr);
        this.f6400c = strArr;
        this.f6401d = credentialPickerConfig == null ? new CredentialPickerConfig.C3557a().m32070a() : credentialPickerConfig;
        this.f6402e = credentialPickerConfig2 == null ? new CredentialPickerConfig.C3557a().m32070a() : credentialPickerConfig2;
        if (i < 3) {
            this.f6403f = true;
            this.f6404g = null;
            this.f6405h = null;
        } else {
            this.f6403f = z2;
            this.f6404g = str;
            this.f6405h = str2;
        }
        this.f6406i = z3;
    }

    @NonNull
    /* renamed from: H */
    public final CredentialPickerConfig m32066H() {
        return this.f6402e;
    }

    @NonNull
    /* renamed from: I */
    public final CredentialPickerConfig m32065I() {
        return this.f6401d;
    }

    @Nullable
    /* renamed from: J */
    public final String m32064J() {
        return this.f6405h;
    }

    @Nullable
    /* renamed from: K */
    public final String m32063K() {
        return this.f6404g;
    }

    /* renamed from: L */
    public final boolean m32062L() {
        return this.f6403f;
    }

    /* renamed from: M */
    public final boolean m32061M() {
        return this.f6399b;
    }

    @NonNull
    /* renamed from: c */
    public final String[] m32060c() {
        return this.f6400c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21212a(parcel, 1, m32061M());
        C7031b.m21208a(parcel, 2, m32060c(), false);
        C7031b.m21220a(parcel, 3, (Parcelable) m32065I(), i, false);
        C7031b.m21220a(parcel, 4, (Parcelable) m32066H(), i, false);
        C7031b.m21212a(parcel, 5, m32062L());
        C7031b.m21215a(parcel, 6, m32063K(), false);
        C7031b.m21215a(parcel, 7, m32064J(), false);
        C7031b.m21225a(parcel, 1000, this.f6398a);
        C7031b.m21212a(parcel, 8, this.f6406i);
        C7031b.m21229a(parcel, a);
    }
}
