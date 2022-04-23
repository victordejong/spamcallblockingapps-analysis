package com.google.firebase.auth;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* loaded from: classes-dex2jar.jar:com/google/firebase/auth/UserProfileChangeRequest.class */
public class UserProfileChangeRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UserProfileChangeRequest> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    public final int f4433a;

    /* renamed from: b  reason: collision with root package name */
    String f4434b;
    String c;
    boolean d;
    boolean e;
    private Uri f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserProfileChangeRequest(int i, String str, String str2, boolean z, boolean z2) {
        this.f4433a = i;
        this.f4434b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = TextUtils.isEmpty(str2) ? null : Uri.parse(str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel);
    }
}
