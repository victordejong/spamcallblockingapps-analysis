package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p193e.p194a.p437c.p578p.C10480a;
import w3.b.a.b;
import w3.b.a.e0.e;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Conversation.class */
public class Conversation implements Parcelable {
    public static final Parcelable.Creator<Conversation> CREATOR = new C4190a();

    /* renamed from: A */
    public final int f13186A;

    /* renamed from: B */
    public final int f13187B;

    /* renamed from: C */
    public final boolean f13188C;

    /* renamed from: D */
    public final int f13189D;

    /* renamed from: E */
    public final int f13190E;

    /* renamed from: J */
    public String f13191J;

    /* renamed from: K */
    public final boolean f13192K;

    /* renamed from: L */
    public final b f13193L;

    /* renamed from: M */
    public final b f13194M;

    /* renamed from: N */
    public final b f13195N;

    /* renamed from: O */
    public final Mention[] f13196O;

    /* renamed from: P */
    public final b f13197P;

    /* renamed from: Q */
    public String f13198Q;

    /* renamed from: a */
    public final long f13199a;

    /* renamed from: b */
    public final long f13200b;

    /* renamed from: c */
    public final int f13201c;

    /* renamed from: d */
    public final long f13202d;

    /* renamed from: e */
    public final int f13203e;

    /* renamed from: f */
    public final int f13204f;

    /* renamed from: g */
    public final String f13205g;

    /* renamed from: h */
    public final String f13206h;

    /* renamed from: i */
    public final b f13207i;

    /* renamed from: j */
    public final String f13208j;

    /* renamed from: k */
    public final boolean f13209k;

    /* renamed from: l */
    public final int f13210l;

    /* renamed from: m */
    public final Participant[] f13211m;

    /* renamed from: n */
    public final boolean f13212n;

    /* renamed from: o */
    public final int f13213o;

    /* renamed from: p */
    public final int f13214p;

    /* renamed from: q */
    public final boolean f13215q;

    /* renamed from: r */
    public final int f13216r;

    /* renamed from: s */
    public final int f13217s;

    /* renamed from: t */
    public final int f13218t;

    /* renamed from: u */
    public final int f13219u;

    /* renamed from: v */
    public final int f13220v;

    /* renamed from: w */
    public final int f13221w;

    /* renamed from: x */
    public final int f13222x;

    /* renamed from: y */
    public final int f13223y;

    /* renamed from: z */
    public final ImGroupInfo f13224z;

    /* renamed from: com.truecaller.messaging.data.types.Conversation$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Conversation$a.class */
    public class C4190a implements Parcelable.Creator<Conversation> {
        @Override // android.os.Parcelable.Creator
        public Conversation createFromParcel(Parcel parcel) {
            return new Conversation(parcel, (C4190a) null);
        }

        @Override // android.os.Parcelable.Creator
        public Conversation[] newArray(int i) {
            return new Conversation[i];
        }
    }

    /* renamed from: com.truecaller.messaging.data.types.Conversation$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Conversation$b.class */
    public static final class C4191b {

        /* renamed from: A */
        public int f13225A;

        /* renamed from: B */
        public boolean f13226B;

        /* renamed from: C */
        public int f13227C;

        /* renamed from: D */
        public int f13228D;

        /* renamed from: E */
        public boolean f13229E;

        /* renamed from: F */
        public b f13230F;

        /* renamed from: G */
        public b f13231G;

        /* renamed from: H */
        public b f13232H;

        /* renamed from: I */
        public b f13233I;

        /* renamed from: J */
        public final Set<Mention> f13234J;

        /* renamed from: K */
        public int f13235K;

        /* renamed from: L */
        public String f13236L;

        /* renamed from: a */
        public long f13237a;

        /* renamed from: b */
        public long f13238b;

        /* renamed from: c */
        public int f13239c;

        /* renamed from: d */
        public long f13240d;

        /* renamed from: e */
        public int f13241e;

        /* renamed from: f */
        public int f13242f;

        /* renamed from: g */
        public String f13243g;

        /* renamed from: h */
        public String f13244h;

        /* renamed from: i */
        public b f13245i;

        /* renamed from: j */
        public String f13246j;

        /* renamed from: k */
        public boolean f13247k;

        /* renamed from: l */
        public int f13248l;

        /* renamed from: m */
        public List<Participant> f13249m;

        /* renamed from: n */
        public boolean f13250n;

        /* renamed from: o */
        public int f13251o;

        /* renamed from: p */
        public int f13252p;

        /* renamed from: q */
        public boolean f13253q;

        /* renamed from: r */
        public int f13254r;

        /* renamed from: s */
        public int f13255s;

        /* renamed from: t */
        public int f13256t;

        /* renamed from: u */
        public int f13257u;

        /* renamed from: v */
        public int f13258v;

        /* renamed from: w */
        public int f13259w;

        /* renamed from: x */
        public int f13260x;

        /* renamed from: y */
        public ImGroupInfo f13261y;

        /* renamed from: z */
        public int f13262z;

        public C4191b() {
            this.f13244h = "-1";
            this.f13254r = 1;
            this.f13256t = 3;
            this.f13228D = 0;
            this.f13234J = new HashSet();
            this.f13235K = 1;
            this.f13249m = new ArrayList();
        }

        public C4191b(Conversation conversation) {
            this.f13244h = "-1";
            this.f13254r = 1;
            this.f13256t = 3;
            this.f13228D = 0;
            HashSet hashSet = new HashSet();
            this.f13234J = hashSet;
            this.f13235K = 1;
            this.f13237a = conversation.f13199a;
            this.f13238b = conversation.f13200b;
            this.f13239c = conversation.f13201c;
            this.f13240d = conversation.f13202d;
            this.f13241e = conversation.f13203e;
            this.f13242f = conversation.f13204f;
            this.f13243g = conversation.f13205g;
            this.f13244h = conversation.f13206h;
            this.f13245i = conversation.f13207i;
            this.f13246j = conversation.f13208j;
            this.f13248l = conversation.f13210l;
            ArrayList arrayList = new ArrayList();
            this.f13249m = arrayList;
            Collections.addAll(arrayList, conversation.f13211m);
            this.f13250n = conversation.f13212n;
            this.f13251o = conversation.f13213o;
            this.f13252p = conversation.f13214p;
            this.f13253q = conversation.f13215q;
            this.f13254r = conversation.f13216r;
            this.f13255s = conversation.f13218t;
            this.f13256t = conversation.f13219u;
            this.f13257u = conversation.f13220v;
            this.f13258v = conversation.f13221w;
            this.f13259w = conversation.f13222x;
            this.f13260x = conversation.f13223y;
            this.f13261y = conversation.f13224z;
            this.f13262z = conversation.f13186A;
            this.f13225A = conversation.f13187B;
            this.f13226B = conversation.f13188C;
            this.f13227C = conversation.f13189D;
            this.f13228D = conversation.f13190E;
            this.f13229E = conversation.f13192K;
            this.f13230F = conversation.f13193L;
            this.f13231G = conversation.f13194M;
            this.f13232H = conversation.f13195N;
            this.f13233I = conversation.f13197P;
            Collections.addAll(hashSet, conversation.f13196O);
            this.f13235K = conversation.f13217s;
            this.f13236L = conversation.f13198Q;
        }

        /* renamed from: a */
        public C4191b m35064a(Participant participant) {
            this.f13249m.add(participant);
            return this;
        }

        /* renamed from: b */
        public Conversation m35063b() {
            return new Conversation(this, (C4190a) null);
        }
    }

    public Conversation(Parcel parcel, C4190a c4190a) {
        this.f13199a = parcel.readLong();
        this.f13200b = parcel.readLong();
        this.f13201c = parcel.readInt();
        this.f13202d = parcel.readLong();
        this.f13203e = parcel.readInt();
        this.f13204f = parcel.readInt();
        this.f13205g = parcel.readString();
        this.f13206h = parcel.readString();
        this.f13207i = new b(parcel.readLong());
        this.f13208j = parcel.readString();
        int i = 0;
        this.f13209k = parcel.readInt() == 1;
        this.f13210l = parcel.readInt();
        Participant[] participantArr = new Participant[parcel.readInt()];
        this.f13211m = participantArr;
        parcel.readTypedArray(participantArr, Participant.CREATOR);
        this.f13212n = parcel.readByte() == 1;
        this.f13213o = parcel.readInt();
        this.f13214p = parcel.readInt();
        this.f13215q = parcel.readInt() == 1;
        this.f13216r = parcel.readInt();
        this.f13218t = parcel.readInt();
        this.f13219u = parcel.readInt();
        this.f13220v = parcel.readInt();
        this.f13221w = parcel.readInt();
        this.f13223y = parcel.readInt();
        this.f13222x = parcel.readInt();
        this.f13224z = (ImGroupInfo) parcel.readParcelable(ImGroupInfo.class.getClassLoader());
        this.f13186A = parcel.readInt();
        this.f13187B = parcel.readInt();
        this.f13188C = parcel.readInt() == 1;
        this.f13189D = parcel.readInt();
        this.f13190E = parcel.readInt();
        this.f13192K = parcel.readInt() == 1;
        this.f13193L = new b(parcel.readLong());
        this.f13194M = new b(parcel.readLong());
        this.f13195N = new b(parcel.readLong());
        this.f13197P = new b(parcel.readLong());
        Parcelable[] readParcelableArray = parcel.readParcelableArray(Mention.class.getClassLoader());
        this.f13196O = new Mention[readParcelableArray.length];
        while (true) {
            Mention[] mentionArr = this.f13196O;
            if (i >= mentionArr.length) {
                this.f13217s = parcel.readInt();
                this.f13198Q = parcel.readString();
                return;
            }
            mentionArr[i] = (Mention) readParcelableArray[i];
            i++;
        }
    }

    public Conversation(C4191b c4191b, C4190a c4190a) {
        this.f13199a = c4191b.f13237a;
        this.f13200b = c4191b.f13238b;
        this.f13201c = c4191b.f13239c;
        this.f13202d = c4191b.f13240d;
        this.f13203e = c4191b.f13241e;
        this.f13204f = c4191b.f13242f;
        this.f13205g = c4191b.f13243g;
        this.f13206h = c4191b.f13244h;
        b bVar = c4191b.f13245i;
        this.f13207i = bVar == null ? new b(0L) : bVar;
        String str = c4191b.f13246j;
        this.f13208j = str == null ? "" : str;
        this.f13209k = c4191b.f13247k;
        this.f13210l = c4191b.f13248l;
        List<Participant> list = c4191b.f13249m;
        this.f13211m = (Participant[]) list.toArray(new Participant[list.size()]);
        this.f13212n = c4191b.f13250n;
        this.f13213o = c4191b.f13251o;
        this.f13214p = c4191b.f13252p;
        this.f13215q = c4191b.f13253q;
        this.f13216r = c4191b.f13254r;
        this.f13218t = c4191b.f13255s;
        this.f13219u = c4191b.f13256t;
        this.f13222x = c4191b.f13259w;
        this.f13220v = c4191b.f13257u;
        this.f13221w = c4191b.f13258v;
        this.f13223y = c4191b.f13260x;
        this.f13224z = c4191b.f13261y;
        this.f13186A = c4191b.f13262z;
        this.f13187B = c4191b.f13225A;
        this.f13188C = c4191b.f13226B;
        this.f13189D = c4191b.f13227C;
        this.f13190E = c4191b.f13228D;
        this.f13192K = c4191b.f13229E;
        b bVar2 = c4191b.f13230F;
        this.f13193L = bVar2 == null ? new b(0L) : bVar2;
        b bVar3 = c4191b.f13231G;
        this.f13194M = bVar3 == null ? new b(0L) : bVar3;
        b bVar4 = c4191b.f13232H;
        this.f13195N = bVar4 == null ? new b(0L) : bVar4;
        b bVar5 = c4191b.f13233I;
        this.f13197P = bVar5 == null ? new b(0L) : bVar5;
        Set<Mention> set = c4191b.f13234J;
        this.f13196O = (Mention[]) set.toArray(new Mention[set.size()]);
        this.f13217s = c4191b.f13235K;
        this.f13198Q = c4191b.f13236L;
    }

    /* renamed from: a */
    public String m35066a() {
        if (this.f13191J == null) {
            this.f13191J = C10480a.m26073F1(this.f13211m);
        }
        return this.f13191J;
    }

    /* renamed from: b */
    public boolean m35065b() {
        for (Participant participant : this.f13211m) {
            if (participant.m35446n()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13199a);
        parcel.writeLong(this.f13200b);
        parcel.writeInt(this.f13201c);
        parcel.writeLong(this.f13202d);
        parcel.writeInt(this.f13203e);
        parcel.writeInt(this.f13204f);
        parcel.writeString(this.f13205g);
        parcel.writeString(this.f13206h);
        parcel.writeLong(((e) this.f13207i).a);
        parcel.writeString(this.f13208j);
        parcel.writeInt(this.f13209k ? 1 : 0);
        parcel.writeInt(this.f13210l);
        parcel.writeInt(this.f13211m.length);
        parcel.writeTypedArray(this.f13211m, 0);
        parcel.writeByte(this.f13212n ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f13213o);
        parcel.writeInt(this.f13214p);
        parcel.writeInt(this.f13215q ? 1 : 0);
        parcel.writeInt(this.f13216r);
        parcel.writeInt(this.f13218t);
        parcel.writeInt(this.f13219u);
        parcel.writeInt(this.f13220v);
        parcel.writeInt(this.f13221w);
        parcel.writeInt(this.f13223y);
        parcel.writeInt(this.f13222x);
        parcel.writeParcelable(this.f13224z, i);
        parcel.writeInt(this.f13186A);
        parcel.writeInt(this.f13187B);
        parcel.writeInt(this.f13188C ? 1 : 0);
        parcel.writeInt(this.f13189D);
        parcel.writeInt(this.f13190E);
        parcel.writeInt(this.f13192K ? 1 : 0);
        parcel.writeLong(((e) this.f13193L).a);
        parcel.writeLong(((e) this.f13194M).a);
        parcel.writeLong(((e) this.f13195N).a);
        parcel.writeLong(((e) this.f13197P).a);
        parcel.writeParcelableArray(this.f13196O, i);
        parcel.writeInt(this.f13217s);
        parcel.writeString(this.f13198Q);
    }
}
