package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;
import javax.annotation.Nonnull;
import p081h.p203i.p204a.p224e.p226b.p227e.p229e.C6725b;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/credentials/Credential.class */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new C6725b();
    @Nonnull

    /* renamed from: a */
    public final String f6383a;
    @Nullable

    /* renamed from: b */
    public final String f6384b;
    @Nullable

    /* renamed from: c */
    public final Uri f6385c;
    @Nonnull

    /* renamed from: d */
    public final List<IdToken> f6386d;
    @Nullable

    /* renamed from: e */
    public final String f6387e;
    @Nullable

    /* renamed from: f */
    public final String f6388f;
    @Nullable

    /* renamed from: g */
    public final String f6389g;
    @Nullable

    /* renamed from: h */
    public final String f6390h;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a2, code lost:
        if ("https".equalsIgnoreCase(r0.getScheme()) != false) goto L_0x00a5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Credential(java.lang.String r5, java.lang.String r6, android.net.Uri r7, java.util.List<com.google.android.gms.auth.api.credentials.IdToken> r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.auth.api.credentials.Credential.<init>(java.lang.String, java.lang.String, android.net.Uri, java.util.List, java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Nullable
    /* renamed from: H */
    public String m32081H() {
        return this.f6390h;
    }

    @Nullable
    /* renamed from: I */
    public String m32080I() {
        return this.f6389g;
    }

    @Nonnull
    /* renamed from: J */
    public String m32079J() {
        return this.f6383a;
    }

    @Nonnull
    /* renamed from: K */
    public List<IdToken> m32078K() {
        return this.f6386d;
    }

    @Nullable
    /* renamed from: L */
    public String m32077L() {
        return this.f6384b;
    }

    @Nullable
    /* renamed from: M */
    public String m32076M() {
        return this.f6387e;
    }

    @Nullable
    /* renamed from: N */
    public Uri m32075N() {
        return this.f6385c;
    }

    @Nullable
    /* renamed from: c */
    public String m32074c() {
        return this.f6388f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Credential)) {
            return false;
        }
        Credential credential = (Credential) obj;
        return TextUtils.equals(this.f6383a, credential.f6383a) && TextUtils.equals(this.f6384b, credential.f6384b) && C7018s.m21297a(this.f6385c, credential.f6385c) && TextUtils.equals(this.f6387e, credential.f6387e) && TextUtils.equals(this.f6388f, credential.f6388f);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f6383a, this.f6384b, this.f6385c, this.f6387e, this.f6388f);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 1, m32079J(), false);
        C7031b.m21215a(parcel, 2, m32077L(), false);
        C7031b.m21220a(parcel, 3, (Parcelable) m32075N(), i, false);
        C7031b.m21201c(parcel, 4, m32078K(), false);
        C7031b.m21215a(parcel, 5, m32076M(), false);
        C7031b.m21215a(parcel, 6, m32074c(), false);
        C7031b.m21215a(parcel, 9, m32080I(), false);
        C7031b.m21215a(parcel, 10, m32081H(), false);
        C7031b.m21229a(parcel, a);
    }
}
