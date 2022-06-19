package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractC2663a;
import com.google.android.gms.common.internal.safeparcel.C2664b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/internal/SignInConfiguration.class */
public final class SignInConfiguration extends AbstractC2663a implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new C2444x();

    /* renamed from: a */
    private final String f6939a;

    /* renamed from: b */
    private GoogleSignInOptions f6940b;

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this.f6939a = C2662s.m13979a(str);
        this.f6940b = googleSignInOptions;
    }

    /* renamed from: a */
    public final GoogleSignInOptions m14543a() {
        return this.f6940b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r0.f6940b == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if (r3.f6940b.equals(r0.f6940b) != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.gms.auth.api.signin.internal.SignInConfiguration
            if (r0 != 0) goto Ld
            r0 = r5
            r6 = r0
        Lb:
            r0 = r6
            return r0
        Ld:
            r0 = r4
            com.google.android.gms.auth.api.signin.internal.SignInConfiguration r0 = (com.google.android.gms.auth.api.signin.internal.SignInConfiguration) r0
            r4 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f6939a
            r1 = r4
            java.lang.String r1 = r1.f6939a
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            r0 = r3
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = r0.f6940b
            if (r0 != 0) goto L37
            r0 = r5
            r6 = r0
            r0 = r4
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = r0.f6940b
            if (r0 != 0) goto Lb
        L32:
            r0 = 1
            r6 = r0
            goto Lb
        L37:
            r0 = r5
            r6 = r0
            r0 = r3
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r0 = r0.f6940b
            r1 = r4
            com.google.android.gms.auth.api.signin.GoogleSignInOptions r1 = r1.f6940b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.signin.internal.SignInConfiguration.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return new C2422b().m14533a(this.f6939a).m14533a(this.f6940b).m14534a();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m13944a = C2664b.m13944a(parcel);
        C2664b.m13932a(parcel, 2, this.f6939a, false);
        C2664b.m13937a(parcel, 5, (Parcelable) this.f6940b, i, false);
        C2664b.m13943a(parcel, m13944a);
    }
}
