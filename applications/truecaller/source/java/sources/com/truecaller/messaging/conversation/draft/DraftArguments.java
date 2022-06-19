package com.truecaller.messaging.conversation.draft;

import android.os.Parcel;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Draft;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/DraftArguments.class */
public final class DraftArguments implements Parcelable {
    public static final Parcelable.Creator<DraftArguments> CREATOR = new C4175a();

    /* renamed from: a */
    public final DraftMode f13074a;

    /* renamed from: b */
    public final List<Draft> f13075b;

    /* renamed from: c */
    public final List<DraftUri> f13076c;

    /* renamed from: d */
    public final boolean f13077d;

    /* renamed from: e */
    public final String f13078e;

    /* renamed from: f */
    public final boolean f13079f;

    /* renamed from: com.truecaller.messaging.conversation.draft.DraftArguments$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/DraftArguments$a.class */
    public static final class C4175a implements Parcelable.Creator<DraftArguments> {
        @Override // android.os.Parcelable.Creator
        public DraftArguments createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            DraftMode draftMode = (DraftMode) Enum.valueOf(DraftMode.class, parcel.readString());
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(Draft.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            int readInt2 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(readInt2);
            while (readInt2 != 0) {
                arrayList2.add(DraftUri.CREATOR.createFromParcel(parcel));
                readInt2--;
            }
            return new DraftArguments(draftMode, arrayList, arrayList2, parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public DraftArguments[] newArray(int i) {
            return new DraftArguments[i];
        }
    }

    public DraftArguments(DraftMode draftMode, List<Draft> list, List<DraftUri> list2, boolean z, String str, boolean z2) {
        l.e(draftMode, AnalyticsConstants.MODE);
        l.e(list, "drafts");
        l.e(list2, "attachmentUris");
        l.e(str, "simToken");
        this.f13074a = draftMode;
        this.f13075b = list;
        this.f13076c = list2;
        this.f13077d = z;
        this.f13078e = str;
        this.f13079f = z2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof DraftArguments)) {
                return false;
            }
            DraftArguments draftArguments = (DraftArguments) obj;
            return l.a(this.f13074a, draftArguments.f13074a) && l.a(this.f13075b, draftArguments.f13075b) && l.a(this.f13076c, draftArguments.f13076c) && this.f13077d == draftArguments.f13077d && l.a(this.f13078e, draftArguments.f13078e) && this.f13079f == draftArguments.f13079f;
        }
        return true;
    }

    public int hashCode() {
        DraftMode draftMode = this.f13074a;
        int i = 0;
        int hashCode = draftMode != null ? draftMode.hashCode() : 0;
        List<Draft> list = this.f13075b;
        int hashCode2 = list != null ? list.hashCode() : 0;
        List<DraftUri> list2 = this.f13076c;
        int hashCode3 = list2 != null ? list2.hashCode() : 0;
        boolean z = this.f13077d;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        String str = this.f13078e;
        if (str != null) {
            i = str.hashCode();
        }
        boolean z2 = this.f13079f;
        if (!z2) {
            i2 = z2 ? 1 : 0;
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i3) * 31) + i) * 31) + i2;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DraftArguments(mode=");
        m8728C.append(this.f13074a);
        m8728C.append(", drafts=");
        m8728C.append(this.f13075b);
        m8728C.append(", attachmentUris=");
        m8728C.append(this.f13076c);
        m8728C.append(", isIm=");
        m8728C.append(this.f13077d);
        m8728C.append(", simToken=");
        m8728C.append(this.f13078e);
        m8728C.append(", isShareIntent=");
        return C22128a.m8590o(m8728C, this.f13079f, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f13074a.name());
        List<Draft> list = this.f13075b;
        parcel.writeInt(list.size());
        for (Draft draft : list) {
            draft.writeToParcel(parcel, 0);
        }
        List<DraftUri> list2 = this.f13076c;
        parcel.writeInt(list2.size());
        for (DraftUri draftUri : list2) {
            draftUri.writeToParcel(parcel, 0);
        }
        parcel.writeInt(this.f13077d ? 1 : 0);
        parcel.writeString(this.f13078e);
        parcel.writeInt(this.f13079f ? 1 : 0);
    }
}
