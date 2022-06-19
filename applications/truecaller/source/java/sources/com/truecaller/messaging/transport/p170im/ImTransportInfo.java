package com.truecaller.messaging.transport.p170im;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.QuickAction;
import com.truecaller.messaging.data.types.Reaction;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: com.truecaller.messaging.transport.im.ImTransportInfo */
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImTransportInfo.class */
public final class ImTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<ImTransportInfo> CREATOR = new C4258b();

    /* renamed from: a */
    public final long f13728a;

    /* renamed from: b */
    public final String f13729b;

    /* renamed from: c */
    public final int f13730c;

    /* renamed from: d */
    public final int f13731d;

    /* renamed from: e */
    public final int f13732e;

    /* renamed from: f */
    public final int f13733f;

    /* renamed from: g */
    public final int f13734g;

    /* renamed from: h */
    public final int f13735h;

    /* renamed from: i */
    public final int f13736i;

    /* renamed from: j */
    public final long f13737j;

    /* renamed from: k */
    public final Reaction[] f13738k;

    /* renamed from: l */
    public final long f13739l;

    /* renamed from: m */
    public final int f13740m;

    /* renamed from: n */
    public final int f13741n;

    /* renamed from: o */
    public final String f13742o;

    /* renamed from: p */
    public final QuickAction[] f13743p;

    /* renamed from: q */
    public final int f13744q;

    /* renamed from: r */
    public final int f13745r;

    /* renamed from: s */
    public final Participant f13746s;

    /* renamed from: com.truecaller.messaging.transport.im.ImTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImTransportInfo$a.class */
    public static final class C4257a {

        /* renamed from: a */
        public long f13747a;

        /* renamed from: c */
        public int f13749c;

        /* renamed from: d */
        public int f13750d;

        /* renamed from: e */
        public int f13751e;

        /* renamed from: f */
        public int f13752f;

        /* renamed from: g */
        public int f13753g;

        /* renamed from: i */
        public int f13755i;

        /* renamed from: j */
        public int f13756j;

        /* renamed from: k */
        public long f13757k;

        /* renamed from: l */
        public List<Reaction> f13758l;

        /* renamed from: m */
        public Participant f13759m;

        /* renamed from: n */
        public long f13760n;

        /* renamed from: o */
        public int f13761o;

        /* renamed from: p */
        public int f13762p;

        /* renamed from: q */
        public String f13763q;

        /* renamed from: r */
        public List<QuickAction> f13764r;

        /* renamed from: s */
        public int f13765s;

        /* renamed from: b */
        public String f13748b = "";

        /* renamed from: h */
        public int f13754h = -1;

        /* renamed from: a */
        public final ImTransportInfo m34905a() {
            Reaction[] reactionArr;
            QuickAction[] quickActionArr;
            long j = this.f13747a;
            String str = this.f13748b;
            int i = this.f13749c;
            int i2 = this.f13750d;
            int i3 = this.f13751e;
            int i4 = this.f13752f;
            int i5 = this.f13753g;
            int i6 = this.f13755i;
            int i7 = this.f13756j;
            long j2 = this.f13757k;
            List<Reaction> list = this.f13758l;
            if (list != null) {
                Object[] array = list.toArray(new Reaction[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                reactionArr = (Reaction[]) array;
            } else {
                reactionArr = null;
            }
            List<QuickAction> list2 = this.f13764r;
            if (list2 != null) {
                Object[] array2 = list2.toArray(new QuickAction[0]);
                Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                quickActionArr = (QuickAction[]) array2;
            } else {
                quickActionArr = null;
            }
            return new ImTransportInfo(j, str, i, i2, i3, i4, i5, i6, i7, j2, reactionArr, this.f13760n, this.f13761o, this.f13762p, this.f13763q, quickActionArr, this.f13765s, this.f13754h, this.f13759m);
        }

        /* renamed from: b */
        public final C4257a m34904b(String str) {
            l.e(str, "rawId");
            this.f13748b = str;
            return this;
        }
    }

    /* renamed from: com.truecaller.messaging.transport.im.ImTransportInfo$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/im/ImTransportInfo$b.class */
    public static final class C4258b implements Parcelable.Creator<ImTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public ImTransportInfo createFromParcel(Parcel parcel) {
            Reaction[] reactionArr;
            QuickAction[] quickActionArr;
            l.e(parcel, "in");
            long readLong = parcel.readLong();
            String readString = parcel.readString();
            int readInt = parcel.readInt();
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            int readInt4 = parcel.readInt();
            int readInt5 = parcel.readInt();
            int readInt6 = parcel.readInt();
            int readInt7 = parcel.readInt();
            long readLong2 = parcel.readLong();
            if (parcel.readInt() != 0) {
                int readInt8 = parcel.readInt();
                Reaction[] reactionArr2 = new Reaction[readInt8];
                int i = 0;
                while (true) {
                    reactionArr = reactionArr2;
                    if (readInt8 <= i) {
                        break;
                    }
                    reactionArr2[i] = Reaction.CREATOR.createFromParcel(parcel);
                    i++;
                }
            } else {
                reactionArr = null;
            }
            long readLong3 = parcel.readLong();
            int readInt9 = parcel.readInt();
            int readInt10 = parcel.readInt();
            String readString2 = parcel.readString();
            if (parcel.readInt() != 0) {
                int readInt11 = parcel.readInt();
                quickActionArr = new QuickAction[readInt11];
                for (int i2 = 0; readInt11 > i2; i2++) {
                    quickActionArr[i2] = QuickAction.CREATOR.createFromParcel(parcel);
                }
            } else {
                quickActionArr = null;
            }
            return new ImTransportInfo(readLong, readString, readInt, readInt2, readInt3, readInt4, readInt5, readInt6, readInt7, readLong2, reactionArr, readLong3, readInt9, readInt10, readString2, quickActionArr, parcel.readInt(), parcel.readInt(), (Participant) parcel.readParcelable(ImTransportInfo.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public ImTransportInfo[] newArray(int i) {
            return new ImTransportInfo[i];
        }
    }

    public ImTransportInfo(long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j2, Reaction[] reactionArr, long j3, int i8, int i9, String str2, QuickAction[] quickActionArr, int i10, int i11, Participant participant) {
        l.e(str, "rawId");
        this.f13728a = j;
        this.f13729b = str;
        this.f13730c = i;
        this.f13731d = i2;
        this.f13732e = i3;
        this.f13733f = i4;
        this.f13734g = i5;
        this.f13735h = i6;
        this.f13736i = i7;
        this.f13737j = j2;
        this.f13738k = reactionArr;
        this.f13739l = j3;
        this.f13740m = i8;
        this.f13741n = i9;
        this.f13742o = str2;
        this.f13743p = quickActionArr;
        this.f13744q = i10;
        this.f13745r = i11;
        this.f13746s = participant;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: E */
    public int mo34885E() {
        return this.f13731d;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: J0 */
    public boolean mo34884J0() {
        return false;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: L1 */
    public int mo34883L1() {
        return this.f13732e;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: T1 */
    public String mo34882T1(b bVar) {
        l.e(bVar, "date");
        return this.f13729b;
    }

    /* renamed from: a */
    public final C4257a m34906a() {
        l.e(this, "info");
        C4257a c4257a = new C4257a();
        c4257a.f13747a = this.f13728a;
        c4257a.f13748b = this.f13729b;
        c4257a.f13749c = this.f13730c;
        c4257a.f13750d = this.f13731d;
        c4257a.f13751e = this.f13732e;
        c4257a.f13752f = this.f13733f;
        c4257a.f13753g = this.f13734g;
        c4257a.f13754h = this.f13745r;
        c4257a.f13755i = this.f13735h;
        c4257a.f13756j = this.f13736i;
        c4257a.f13757k = this.f13737j;
        Reaction[] reactionArr = this.f13738k;
        c4257a.f13758l = reactionArr != null ? C25225a.m3892i3(reactionArr) : null;
        c4257a.f13763q = this.f13742o;
        QuickAction[] quickActionArr = this.f13743p;
        List<QuickAction> list = null;
        if (quickActionArr != null) {
            list = C25225a.m3892i3(quickActionArr);
        }
        c4257a.f13764r = list;
        c4257a.f13765s = this.f13744q;
        return c4257a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return 0L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return -1L;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13728a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeLong(this.f13728a);
        parcel.writeString(this.f13729b);
        parcel.writeInt(this.f13730c);
        parcel.writeInt(this.f13731d);
        parcel.writeInt(this.f13732e);
        parcel.writeInt(this.f13733f);
        parcel.writeInt(this.f13734g);
        parcel.writeInt(this.f13735h);
        parcel.writeInt(this.f13736i);
        parcel.writeLong(this.f13737j);
        Reaction[] reactionArr = this.f13738k;
        if (reactionArr != null) {
            parcel.writeInt(1);
            int length = reactionArr.length;
            parcel.writeInt(length);
            for (int i2 = 0; length > i2; i2++) {
                reactionArr[i2].writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeLong(this.f13739l);
        parcel.writeInt(this.f13740m);
        parcel.writeInt(this.f13741n);
        parcel.writeString(this.f13742o);
        QuickAction[] quickActionArr = this.f13743p;
        if (quickActionArr != null) {
            parcel.writeInt(1);
            int length2 = quickActionArr.length;
            parcel.writeInt(length2);
            for (int i3 = 0; length2 > i3; i3++) {
                quickActionArr[i3].writeToParcel(parcel, 0);
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.f13744q);
        parcel.writeInt(this.f13745r);
        parcel.writeParcelable(this.f13746s, i);
    }
}
