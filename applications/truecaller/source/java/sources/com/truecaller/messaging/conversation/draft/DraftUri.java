package com.truecaller.messaging.conversation.draft;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/DraftUri.class */
public final class DraftUri implements Parcelable {
    public static final Parcelable.Creator<DraftUri> CREATOR = new C4176a();

    /* renamed from: a */
    public final Uri f13080a;

    /* renamed from: b */
    public final UriTypeHint f13081b;

    /* renamed from: c */
    public final boolean f13082c;

    /* renamed from: com.truecaller.messaging.conversation.draft.DraftUri$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/DraftUri$a.class */
    public static final class C4176a implements Parcelable.Creator<DraftUri> {
        @Override // android.os.Parcelable.Creator
        public DraftUri createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new DraftUri((Uri) parcel.readParcelable(DraftUri.class.getClassLoader()), (UriTypeHint) Enum.valueOf(UriTypeHint.class, parcel.readString()), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public DraftUri[] newArray(int i) {
            return new DraftUri[i];
        }
    }

    public DraftUri(Uri uri, UriTypeHint uriTypeHint, boolean z) {
        l.e(uri, "uri");
        l.e(uriTypeHint, "typeHint");
        this.f13080a = uri;
        this.f13081b = uriTypeHint;
        this.f13082c = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof DraftUri)) {
                return false;
            }
            DraftUri draftUri = (DraftUri) obj;
            return l.a(this.f13080a, draftUri.f13080a) && l.a(this.f13081b, draftUri.f13081b) && this.f13082c == draftUri.f13082c;
        }
        return true;
    }

    public int hashCode() {
        Uri uri = this.f13080a;
        int i = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        UriTypeHint uriTypeHint = this.f13081b;
        if (uriTypeHint != null) {
            i = uriTypeHint.hashCode();
        }
        boolean z = this.f13082c;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((hashCode * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DraftUri(uri=");
        m8728C.append(this.f13080a);
        m8728C.append(", typeHint=");
        m8728C.append(this.f13081b);
        m8728C.append(", isTemporary=");
        return C22128a.m8590o(m8728C, this.f13082c, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeParcelable(this.f13080a, i);
        parcel.writeString(this.f13081b.name());
        parcel.writeInt(this.f13082c ? 1 : 0);
    }
}
