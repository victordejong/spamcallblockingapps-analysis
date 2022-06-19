package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaje.class */
public final class zzaje implements zzaiu {
    public static final Parcelable.Creator<zzaje> CREATOR = new C7209z7();

    /* renamed from: d */
    public final String f33489d;

    /* renamed from: e */
    public final String f33490e;

    public zzaje(Parcel parcel) {
        String readString = parcel.readString();
        int i = C7101wa.f31475a;
        this.f33489d = readString;
        this.f33490e = parcel.readString();
    }

    public zzaje(String str, String str2) {
        this.f33489d = str;
        this.f33490e = str2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.zzaiu
    /* renamed from: I */
    public final void mo8113I(C6689l5 c6689l5) {
        boolean z;
        String str = this.f33489d;
        switch (str.hashCode()) {
            case 62359119:
                if (str.equals("ALBUM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            c6689l5.m13723B(this.f33490e);
        } else if (z) {
            c6689l5.m13722C(this.f33490e);
        } else if (z) {
            c6689l5.m13721D(this.f33490e);
        } else if (z) {
            c6689l5.m13720E(this.f33490e);
        } else if (!z) {
        } else {
            c6689l5.m13719F(this.f33490e);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzaje.class != obj.getClass()) {
            return false;
        }
        zzaje zzajeVar = (zzaje) obj;
        return this.f33489d.equals(zzajeVar.f33489d) && this.f33490e.equals(zzajeVar.f33490e);
    }

    public final int hashCode() {
        return ((this.f33489d.hashCode() + 527) * 31) + this.f33490e.hashCode();
    }

    public final String toString() {
        String str = this.f33489d;
        String str2 = this.f33490e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str2).length());
        sb.append("VC: ");
        sb.append(str);
        sb.append("=");
        sb.append(str2);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f33489d);
        parcel.writeString(this.f33490e);
    }
}
