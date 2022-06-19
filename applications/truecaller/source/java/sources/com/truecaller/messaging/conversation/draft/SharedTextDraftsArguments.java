package com.truecaller.messaging.conversation.draft;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.Draft;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/SharedTextDraftsArguments.class */
public final class SharedTextDraftsArguments implements Parcelable {
    public static final Parcelable.Creator<SharedTextDraftsArguments> CREATOR = new C4177a();

    /* renamed from: a */
    public final List<Draft> f13083a;

    /* renamed from: b */
    public final boolean f13084b;

    /* renamed from: c */
    public final String f13085c;

    /* renamed from: d */
    public final String f13086d;

    /* renamed from: com.truecaller.messaging.conversation.draft.SharedTextDraftsArguments$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/draft/SharedTextDraftsArguments$a.class */
    public static final class C4177a implements Parcelable.Creator<SharedTextDraftsArguments> {
        @Override // android.os.Parcelable.Creator
        public SharedTextDraftsArguments createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(Draft.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new SharedTextDraftsArguments(arrayList, parcel.readInt() != 0, parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public SharedTextDraftsArguments[] newArray(int i) {
            return new SharedTextDraftsArguments[i];
        }
    }

    public SharedTextDraftsArguments(List<Draft> list, boolean z, String str, String str2) {
        l.e(list, "drafts");
        l.e(str, "simToken");
        l.e(str2, "text");
        this.f13083a = list;
        this.f13084b = z;
        this.f13085c = str;
        this.f13086d = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SharedTextDraftsArguments)) {
                return false;
            }
            SharedTextDraftsArguments sharedTextDraftsArguments = (SharedTextDraftsArguments) obj;
            return l.a(this.f13083a, sharedTextDraftsArguments.f13083a) && this.f13084b == sharedTextDraftsArguments.f13084b && l.a(this.f13085c, sharedTextDraftsArguments.f13085c) && l.a(this.f13086d, sharedTextDraftsArguments.f13086d);
        }
        return true;
    }

    public int hashCode() {
        List<Draft> list = this.f13083a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f13084b;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.f13085c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f13086d;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + (z2 ? 1 : 0)) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SharedTextDraftsArguments(drafts=");
        m8728C.append(this.f13083a);
        m8728C.append(", isIm=");
        m8728C.append(this.f13084b);
        m8728C.append(", simToken=");
        m8728C.append(this.f13085c);
        m8728C.append(", text=");
        return C22128a.m8618h(m8728C, this.f13086d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        List<Draft> list = this.f13083a;
        parcel.writeInt(list.size());
        for (Draft draft : list) {
            draft.writeToParcel(parcel, 0);
        }
        parcel.writeInt(this.f13084b ? 1 : 0);
        parcel.writeString(this.f13085c);
        parcel.writeString(this.f13086d);
    }
}
