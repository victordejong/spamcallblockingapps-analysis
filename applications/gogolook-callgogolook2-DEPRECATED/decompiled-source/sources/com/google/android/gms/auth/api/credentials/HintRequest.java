package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p226b.p227e.p229e.C6729f;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/HintRequest.class */
public final class HintRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<HintRequest> CREATOR = new C6729f();

    /* renamed from: a */
    public final int f6407a;

    /* renamed from: b */
    public final CredentialPickerConfig f6408b;

    /* renamed from: c */
    public final boolean f6409c;

    /* renamed from: d */
    public final boolean f6410d;

    /* renamed from: e */
    public final String[] f6411e;

    /* renamed from: f */
    public final boolean f6412f;

    /* renamed from: g */
    public final String f6413g;

    /* renamed from: h */
    public final String f6414h;

    public HintRequest(int i, CredentialPickerConfig credentialPickerConfig, boolean z, boolean z2, String[] strArr, boolean z3, String str, String str2) {
        this.f6407a = i;
        C7021t.m21290a(credentialPickerConfig);
        this.f6408b = credentialPickerConfig;
        this.f6409c = z;
        this.f6410d = z2;
        C7021t.m21290a(strArr);
        this.f6411e = strArr;
        if (this.f6407a < 2) {
            this.f6412f = true;
            this.f6413g = null;
            this.f6414h = null;
            return;
        }
        this.f6412f = z3;
        this.f6413g = str;
        this.f6414h = str2;
    }

    @NonNull
    /* renamed from: H */
    public final CredentialPickerConfig m32059H() {
        return this.f6408b;
    }

    @Nullable
    /* renamed from: I */
    public final String m32058I() {
        return this.f6414h;
    }

    @Nullable
    /* renamed from: J */
    public final String m32057J() {
        return this.f6413g;
    }

    /* renamed from: K */
    public final boolean m32056K() {
        return this.f6409c;
    }

    /* renamed from: L */
    public final boolean m32055L() {
        return this.f6412f;
    }

    @NonNull
    /* renamed from: c */
    public final String[] m32054c() {
        return this.f6411e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 1, (Parcelable) m32059H(), i, false);
        C7031b.m21212a(parcel, 2, m32056K());
        C7031b.m21212a(parcel, 3, this.f6410d);
        C7031b.m21208a(parcel, 4, m32054c(), false);
        C7031b.m21212a(parcel, 5, m32055L());
        C7031b.m21215a(parcel, 6, m32057J(), false);
        C7031b.m21215a(parcel, 7, m32058I(), false);
        C7031b.m21225a(parcel, 1000, this.f6407a);
        C7031b.m21229a(parcel, a);
    }
}
