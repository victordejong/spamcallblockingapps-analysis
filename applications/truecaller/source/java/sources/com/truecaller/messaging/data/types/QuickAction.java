package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/QuickAction.class */
public final class QuickAction implements Parcelable {
    public static final Parcelable.Creator<QuickAction> CREATOR = new C4210a();

    /* renamed from: a */
    public final long f13447a;

    /* renamed from: b */
    public final long f13448b;

    /* renamed from: c */
    public final int f13449c;

    /* renamed from: d */
    public final String f13450d;

    /* renamed from: com.truecaller.messaging.data.types.QuickAction$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/QuickAction$a.class */
    public static final class C4210a implements Parcelable.Creator<QuickAction> {
        @Override // android.os.Parcelable.Creator
        public QuickAction createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new QuickAction(parcel.readLong(), parcel.readLong(), parcel.readInt(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public QuickAction[] newArray(int i) {
            return new QuickAction[i];
        }
    }

    public QuickAction(long j, long j2, int i, String str) {
        l.e(str, "action");
        this.f13447a = j;
        this.f13448b = j2;
        this.f13449c = i;
        this.f13450d = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public /* synthetic */ QuickAction(long j, long j2, int i, String str, int i2) {
        this((i2 & 1) != 0 ? -1 : j, (i2 & 2) != 0 ? -1 : j2, (i2 & 4) != 0 ? 0 : i, str);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof QuickAction)) {
                return false;
            }
            QuickAction quickAction = (QuickAction) obj;
            return this.f13447a == quickAction.f13447a && this.f13448b == quickAction.f13448b && this.f13449c == quickAction.f13449c && l.a(this.f13450d, quickAction.f13450d);
        }
        return true;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.f13447a);
        int m34274a2 = C4876d.m34274a(this.f13448b);
        int i = this.f13449c;
        String str = this.f13450d;
        return (((((m34274a * 31) + m34274a2) * 31) + i) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("QuickAction(id=");
        m8728C.append(this.f13447a);
        m8728C.append(", messageId=");
        m8728C.append(this.f13448b);
        m8728C.append(", type=");
        m8728C.append(this.f13449c);
        m8728C.append(", action=");
        return C22128a.m8618h(m8728C, this.f13450d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13447a);
        parcel.writeLong(this.f13448b);
        parcel.writeInt(this.f13449c);
        parcel.writeString(this.f13450d);
    }
}
