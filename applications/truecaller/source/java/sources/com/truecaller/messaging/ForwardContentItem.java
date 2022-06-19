package com.truecaller.messaging;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.ImForwardInfo;
import com.truecaller.messaging.data.types.Mention;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/ForwardContentItem.class */
public final class ForwardContentItem implements Parcelable {
    public static final Parcelable.Creator<ForwardContentItem> CREATOR = new C4159a();

    /* renamed from: a */
    public final String f12984a;

    /* renamed from: b */
    public final boolean f12985b;

    /* renamed from: c */
    public final BinaryEntity f12986c;

    /* renamed from: d */
    public final int f12987d;

    /* renamed from: e */
    public final List<Mention> f12988e;

    /* renamed from: f */
    public final ImForwardInfo f12989f;

    /* renamed from: com.truecaller.messaging.ForwardContentItem$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/ForwardContentItem$a.class */
    public static final class C4159a implements Parcelable.Creator<ForwardContentItem> {
        @Override // android.os.Parcelable.Creator
        public ForwardContentItem createFromParcel(Parcel parcel) {
            ArrayList arrayList;
            l.e(parcel, "in");
            String readString = parcel.readString();
            boolean z = parcel.readInt() != 0;
            BinaryEntity binaryEntity = (BinaryEntity) parcel.readParcelable(ForwardContentItem.class.getClassLoader());
            int readInt = parcel.readInt();
            if (parcel.readInt() != 0) {
                int readInt2 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt2);
                while (true) {
                    arrayList = arrayList2;
                    if (readInt2 == 0) {
                        break;
                    }
                    arrayList2.add((Mention) parcel.readParcelable(ForwardContentItem.class.getClassLoader()));
                    readInt2--;
                }
            } else {
                arrayList = null;
            }
            return new ForwardContentItem(readString, z, binaryEntity, readInt, arrayList, (ImForwardInfo) parcel.readParcelable(ForwardContentItem.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public ForwardContentItem[] newArray(int i) {
            return new ForwardContentItem[i];
        }
    }

    public ForwardContentItem(String str, boolean z, BinaryEntity binaryEntity, int i, List<Mention> list, ImForwardInfo imForwardInfo) {
        l.e(str, "text");
        this.f12984a = str;
        this.f12985b = z;
        this.f12986c = binaryEntity;
        this.f12987d = i;
        this.f12988e = list;
        this.f12989f = imForwardInfo;
    }

    public /* synthetic */ ForwardContentItem(String str, boolean z, BinaryEntity binaryEntity, int i, List list, ImForwardInfo imForwardInfo, int i2) {
        this(str, z, binaryEntity, i, list, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ForwardContentItem)) {
                return false;
            }
            ForwardContentItem forwardContentItem = (ForwardContentItem) obj;
            return l.a(this.f12984a, forwardContentItem.f12984a) && this.f12985b == forwardContentItem.f12985b && l.a(this.f12986c, forwardContentItem.f12986c) && this.f12987d == forwardContentItem.f12987d && l.a(this.f12988e, forwardContentItem.f12988e) && l.a(this.f12989f, forwardContentItem.f12989f);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f12984a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f12985b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        BinaryEntity binaryEntity = this.f12986c;
        int hashCode2 = binaryEntity != null ? binaryEntity.hashCode() : 0;
        int i3 = this.f12987d;
        List<Mention> list = this.f12988e;
        int hashCode3 = list != null ? list.hashCode() : 0;
        ImForwardInfo imForwardInfo = this.f12989f;
        if (imForwardInfo != null) {
            i = imForwardInfo.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ForwardContentItem(text=");
        m8728C.append(this.f12984a);
        m8728C.append(", isRichText=");
        m8728C.append(this.f12985b);
        m8728C.append(", mediaContent=");
        m8728C.append(this.f12986c);
        m8728C.append(", transport=");
        m8728C.append(this.f12987d);
        m8728C.append(", mentions=");
        m8728C.append(this.f12988e);
        m8728C.append(", imForwardInfo=");
        m8728C.append(this.f12989f);
        m8728C.append(")");
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f12984a);
        parcel.writeInt(this.f12985b ? 1 : 0);
        parcel.writeParcelable(this.f12986c, i);
        parcel.writeInt(this.f12987d);
        List<Mention> list = this.f12988e;
        if (list != null) {
            parcel.writeInt(1);
            parcel.writeInt(list.size());
            for (Mention mention : list) {
                parcel.writeParcelable(mention, i);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeParcelable(this.f12989f, i);
    }
}
