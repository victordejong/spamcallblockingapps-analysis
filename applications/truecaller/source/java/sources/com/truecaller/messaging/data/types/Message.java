package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.transport.NullTransportInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Message.class */
public final class Message implements Parcelable, AbstractC6225a {
    public static final Parcelable.Creator<Message> CREATOR = new C4208a();

    /* renamed from: A */
    public final boolean f13365A;

    /* renamed from: B */
    public final long f13366B;

    /* renamed from: C */
    public final long f13367C;

    /* renamed from: D */
    public final int f13368D;

    /* renamed from: E */
    public final int f13369E;

    /* renamed from: J */
    public final long f13370J;

    /* renamed from: K */
    public final long f13371K;

    /* renamed from: L */
    public final long f13372L;

    /* renamed from: M */
    public final long f13373M;

    /* renamed from: N */
    public final boolean f13374N;

    /* renamed from: O */
    public final b f13375O;

    /* renamed from: P */
    public final ImForwardInfo f13376P;

    /* renamed from: Q */
    public final int f13377Q;

    /* renamed from: R */
    public final long f13378R;

    /* renamed from: S */
    public final long f13379S;

    /* renamed from: a */
    public final long f13380a;

    /* renamed from: b */
    public final long f13381b;

    /* renamed from: c */
    public final Participant f13382c;

    /* renamed from: d */
    public final b f13383d;

    /* renamed from: e */
    public final b f13384e;

    /* renamed from: f */
    public final b f13385f;

    /* renamed from: g */
    public final int f13386g;

    /* renamed from: h */
    public final boolean f13387h;

    /* renamed from: i */
    public final boolean f13388i;

    /* renamed from: j */
    public final boolean f13389j;

    /* renamed from: k */
    public final int f13390k;

    /* renamed from: l */
    public final int f13391l;

    /* renamed from: m */
    public final String f13392m;

    /* renamed from: n */
    public final TransportInfo f13393n;

    /* renamed from: o */
    public final Entity[] f13394o;

    /* renamed from: p */
    public final Mention[] f13395p;

    /* renamed from: q */
    public final String f13396q;

    /* renamed from: r */
    public final String f13397r;

    /* renamed from: s */
    public final String f13398s;

    /* renamed from: t */
    public final int f13399t;

    /* renamed from: u */
    public final int f13400u;

    /* renamed from: v */
    public final int f13401v;

    /* renamed from: w */
    public final int f13402w;

    /* renamed from: x */
    public final b f13403x;

    /* renamed from: y */
    public final ReplySnippet f13404y;

    /* renamed from: z */
    public final String f13405z;

    /* renamed from: com.truecaller.messaging.data.types.Message$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Message$a.class */
    public class C4208a implements Parcelable.Creator<Message> {
        @Override // android.os.Parcelable.Creator
        public Message createFromParcel(Parcel parcel) {
            return new Message(parcel, (C4208a) null);
        }

        @Override // android.os.Parcelable.Creator
        public Message[] newArray(int i) {
            return new Message[i];
        }
    }

    /* renamed from: com.truecaller.messaging.data.types.Message$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Message$b.class */
    public static final class C4209b {

        /* renamed from: A */
        public ReplySnippet f13406A;

        /* renamed from: B */
        public String f13407B;

        /* renamed from: C */
        public long f13408C;

        /* renamed from: D */
        public int f13409D;

        /* renamed from: E */
        public int f13410E;

        /* renamed from: F */
        public long f13411F;

        /* renamed from: G */
        public long f13412G;

        /* renamed from: H */
        public long f13413H;

        /* renamed from: I */
        public long f13414I;

        /* renamed from: J */
        public boolean f13415J;

        /* renamed from: K */
        public b f13416K;

        /* renamed from: L */
        public ImForwardInfo f13417L;

        /* renamed from: M */
        public int f13418M;

        /* renamed from: N */
        public long f13419N;

        /* renamed from: O */
        public long f13420O;

        /* renamed from: a */
        public long f13421a;

        /* renamed from: b */
        public long f13422b;

        /* renamed from: c */
        public Participant f13423c;

        /* renamed from: d */
        public b f13424d;

        /* renamed from: e */
        public b f13425e;

        /* renamed from: f */
        public b f13426f;

        /* renamed from: g */
        public int f13427g;

        /* renamed from: h */
        public boolean f13428h;

        /* renamed from: i */
        public boolean f13429i;

        /* renamed from: j */
        public boolean f13430j;

        /* renamed from: k */
        public int f13431k;

        /* renamed from: l */
        public int f13432l;

        /* renamed from: m */
        public String f13433m;

        /* renamed from: n */
        public TransportInfo f13434n;

        /* renamed from: o */
        public List<Entity> f13435o;

        /* renamed from: p */
        public Set<Mention> f13436p;

        /* renamed from: q */
        public boolean f13437q;

        /* renamed from: r */
        public String f13438r;

        /* renamed from: s */
        public String f13439s;

        /* renamed from: t */
        public String f13440t;

        /* renamed from: u */
        public int f13441u;

        /* renamed from: v */
        public int f13442v;

        /* renamed from: w */
        public int f13443w;

        /* renamed from: x */
        public int f13444x;

        /* renamed from: y */
        public b f13445y;

        /* renamed from: z */
        public long f13446z;

        public C4209b() {
            this.f13421a = -1L;
            this.f13422b = -1L;
            this.f13431k = 3;
            this.f13432l = 3;
            this.f13433m = "-1";
            this.f13434n = NullTransportInfo.f13677b;
            this.f13436p = new HashSet();
            this.f13437q = false;
            this.f13446z = -1L;
            this.f13418M = 0;
            this.f13419N = -1L;
        }

        public C4209b(Message message, C4208a c4208a) {
            this.f13421a = -1L;
            this.f13422b = -1L;
            this.f13431k = 3;
            this.f13432l = 3;
            this.f13433m = "-1";
            this.f13434n = NullTransportInfo.f13677b;
            this.f13436p = new HashSet();
            this.f13437q = false;
            this.f13446z = -1L;
            this.f13418M = 0;
            this.f13419N = -1L;
            this.f13421a = message.f13380a;
            this.f13422b = message.f13381b;
            this.f13423c = message.f13382c;
            this.f13425e = message.f13384e;
            this.f13424d = message.f13383d;
            this.f13426f = message.f13385f;
            this.f13427g = message.f13386g;
            this.f13428h = message.f13387h;
            this.f13429i = message.f13388i;
            this.f13430j = message.f13389j;
            this.f13431k = message.f13390k;
            this.f13432l = message.f13391l;
            this.f13434n = message.f13393n;
            this.f13433m = message.f13392m;
            if (message.f13394o.length > 0) {
                ArrayList arrayList = new ArrayList();
                this.f13435o = arrayList;
                Collections.addAll(arrayList, message.f13394o);
            }
            this.f13438r = message.f13398s;
            this.f13437q = message.f13365A;
            this.f13441u = message.f13399t;
            this.f13442v = message.f13400u;
            this.f13443w = message.f13401v;
            this.f13444x = message.f13402w;
            this.f13445y = message.f13403x;
            this.f13446z = message.f13366B;
            this.f13439s = message.f13396q;
            this.f13440t = message.f13397r;
            this.f13406A = message.f13404y;
            this.f13408C = message.f13367C;
            this.f13409D = message.f13368D;
            this.f13410E = message.f13369E;
            this.f13411F = message.f13370J;
            this.f13412G = message.f13371K;
            this.f13415J = message.f13374N;
            this.f13416K = message.f13375O;
            this.f13417L = message.f13376P;
            this.f13418M = message.f13377Q;
            this.f13419N = message.f13379S;
            this.f13420O = message.f13378R;
            Collections.addAll(this.f13436p, message.f13395p);
        }

        /* renamed from: a */
        public Message m35012a() {
            AssertionUtil.isNotNull(this.f13423c, new String[0]);
            return new Message(this, (C4208a) null);
        }

        /* renamed from: b */
        public C4209b m35011b() {
            List<Entity> list = this.f13435o;
            if (list != null) {
                list.clear();
            }
            return this;
        }

        /* renamed from: c */
        public C4209b m35010c(long j) {
            this.f13425e = new b(j);
            return this;
        }

        /* renamed from: d */
        public C4209b m35009d(long j) {
            this.f13424d = new b(j);
            return this;
        }

        /* renamed from: e */
        public C4209b m35008e(Long l) {
            this.f13419N = l.longValue();
            return this;
        }

        /* renamed from: f */
        public C4209b m35007f(Collection<Entity> collection) {
            if (this.f13435o == null) {
                this.f13435o = new ArrayList();
            }
            this.f13435o.addAll(collection);
            return this;
        }

        /* renamed from: g */
        public C4209b m35006g(Entity entity) {
            if (this.f13435o == null) {
                this.f13435o = new ArrayList();
            }
            this.f13435o.add(entity);
            return this;
        }

        /* renamed from: h */
        public C4209b m35005h(Participant participant) {
            this.f13423c = participant;
            return this;
        }

        /* renamed from: i */
        public C4209b m35004i(long j) {
            this.f13426f = new b(j);
            return this;
        }

        /* renamed from: j */
        public C4209b m35003j(String str) {
            String str2 = str;
            if (str == null) {
                str2 = "-1";
            }
            this.f13433m = str2;
            return this;
        }

        /* renamed from: k */
        public C4209b m35002k(int i, TransportInfo transportInfo) {
            this.f13431k = i;
            this.f13434n = transportInfo;
            return this;
        }
    }

    public Message(Parcel parcel, C4208a c4208a) {
        this.f13380a = parcel.readLong();
        this.f13381b = parcel.readLong();
        this.f13382c = (Participant) parcel.readParcelable(Participant.class.getClassLoader());
        this.f13384e = new b(parcel.readLong());
        this.f13383d = new b(parcel.readLong());
        this.f13385f = new b(parcel.readLong());
        this.f13386g = parcel.readInt();
        this.f13387h = parcel.readInt() != 0;
        this.f13388i = parcel.readInt() != 0;
        this.f13389j = parcel.readInt() != 0;
        this.f13390k = parcel.readInt();
        this.f13391l = parcel.readInt();
        this.f13393n = (TransportInfo) parcel.readParcelable(TransportInfo.class.getClassLoader());
        this.f13392m = parcel.readString();
        Parcelable[] readParcelableArray = parcel.readParcelableArray(Entity.class.getClassLoader());
        if (readParcelableArray != null) {
            this.f13394o = new Entity[readParcelableArray.length];
            int i = 0;
            while (true) {
                Entity[] entityArr = this.f13394o;
                if (i >= entityArr.length) {
                    break;
                }
                entityArr[i] = (Entity) readParcelableArray[i];
                i++;
            }
        } else {
            this.f13394o = new Entity[0];
        }
        this.f13396q = parcel.readString();
        this.f13397r = parcel.readString();
        this.f13365A = parcel.readInt() != 0;
        this.f13398s = parcel.readString();
        this.f13399t = parcel.readInt();
        this.f13400u = parcel.readInt();
        this.f13401v = parcel.readInt();
        this.f13402w = parcel.readInt();
        this.f13403x = new b(parcel.readLong());
        this.f13366B = parcel.readLong();
        this.f13404y = (ReplySnippet) parcel.readParcelable(ReplySnippet.class.getClassLoader());
        this.f13367C = parcel.readLong();
        this.f13368D = parcel.readInt();
        this.f13369E = parcel.readInt();
        this.f13370J = parcel.readLong();
        this.f13371K = parcel.readLong();
        this.f13372L = parcel.readLong();
        this.f13373M = parcel.readLong();
        this.f13374N = parcel.readInt() != 0;
        this.f13375O = new b(parcel.readLong());
        this.f13405z = parcel.readString();
        this.f13376P = (ImForwardInfo) parcel.readParcelable(ImForwardInfo.class.getClassLoader());
        this.f13377Q = parcel.readInt();
        this.f13379S = parcel.readLong();
        this.f13378R = parcel.readLong();
        Parcelable[] readParcelableArray2 = parcel.readParcelableArray(Mention.class.getClassLoader());
        if (readParcelableArray2 == null) {
            this.f13395p = new Mention[0];
            return;
        }
        this.f13395p = new Mention[readParcelableArray2.length];
        int i2 = 0;
        while (true) {
            Mention[] mentionArr = this.f13395p;
            if (i2 >= mentionArr.length) {
                return;
            }
            mentionArr[i2] = (Mention) readParcelableArray2[i2];
            i2++;
        }
    }

    public Message(C4209b c4209b, C4208a c4208a) {
        this.f13380a = c4209b.f13421a;
        this.f13381b = c4209b.f13422b;
        this.f13382c = c4209b.f13423c;
        b bVar = c4209b.f13425e;
        this.f13384e = bVar == null ? new b(0L) : bVar;
        b bVar2 = c4209b.f13424d;
        this.f13383d = bVar2 == null ? new b(0L) : bVar2;
        b bVar3 = c4209b.f13426f;
        this.f13385f = bVar3 == null ? new b(0L) : bVar3;
        this.f13386g = c4209b.f13427g;
        this.f13387h = c4209b.f13428h;
        this.f13388i = c4209b.f13429i;
        this.f13389j = c4209b.f13430j;
        this.f13390k = c4209b.f13431k;
        this.f13393n = c4209b.f13434n;
        this.f13391l = c4209b.f13432l;
        this.f13392m = c4209b.f13433m;
        this.f13396q = c4209b.f13439s;
        this.f13397r = c4209b.f13440t;
        this.f13365A = c4209b.f13437q;
        this.f13398s = c4209b.f13438r;
        this.f13399t = c4209b.f13441u;
        this.f13400u = c4209b.f13442v;
        this.f13401v = c4209b.f13443w;
        this.f13402w = c4209b.f13444x;
        b bVar4 = c4209b.f13445y;
        this.f13403x = bVar4 == null ? new b(0L) : bVar4;
        this.f13366B = c4209b.f13446z;
        this.f13404y = c4209b.f13406A;
        this.f13367C = c4209b.f13408C;
        this.f13368D = c4209b.f13409D;
        this.f13369E = c4209b.f13410E;
        this.f13370J = c4209b.f13411F;
        this.f13371K = c4209b.f13412G;
        this.f13372L = c4209b.f13413H;
        this.f13373M = c4209b.f13414I;
        this.f13374N = c4209b.f13415J;
        b bVar5 = c4209b.f13416K;
        this.f13375O = bVar5 == null ? new b(0L) : bVar5;
        this.f13405z = c4209b.f13407B;
        List<Entity> list = c4209b.f13435o;
        if (list == null) {
            this.f13394o = new Entity[0];
        } else {
            this.f13394o = (Entity[]) list.toArray(new Entity[list.size()]);
        }
        this.f13376P = c4209b.f13417L;
        this.f13377Q = c4209b.f13418M;
        this.f13379S = c4209b.f13419N;
        this.f13378R = c4209b.f13420O;
        Set<Mention> set = c4209b.f13436p;
        this.f13395p = (Mention[]) set.toArray(new Mention[set.size()]);
    }

    /* renamed from: d */
    public static String m35022d(long j, b bVar) {
        return h.r(Long.toHexString(j), 16, '0') + h.r(Long.toHexString(((e) bVar).a), 16, '0');
    }

    /* renamed from: a */
    public String m35025a() {
        Entity[] entityArr;
        StringBuilder sb = new StringBuilder();
        for (Entity entity : this.f13394o) {
            if (entity.mo34894r()) {
                TextEntity textEntity = (TextEntity) entity;
                if (sb.length() > 0) {
                    sb.append('\n');
                }
                sb.append(textEntity.f13465i);
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public C4209b m35024b() {
        return new C4209b(this, null);
    }

    /* renamed from: c */
    public boolean m35023c() {
        Entity[] entityArr;
        for (Entity entity : this.f13394o) {
            if (!entity.mo34894r() && !entity.mo34996o() && entity.f13308c == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public <T extends TransportInfo> T m35021e() {
        return (T) this.f13393n;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Message.class != obj.getClass()) {
            return false;
        }
        Message message = (Message) obj;
        if (this.f13380a != message.f13380a || this.f13381b != message.f13381b || this.f13386g != message.f13386g || this.f13387h != message.f13387h || this.f13388i != message.f13388i || this.f13389j != message.f13389j || this.f13390k != message.f13390k || this.f13391l != message.f13391l || !this.f13382c.equals(message.f13382c) || !this.f13383d.equals(message.f13383d) || !this.f13384e.equals(message.f13384e) || !this.f13393n.equals(message.f13393n) || !this.f13392m.equals(message.f13392m) || this.f13402w != message.f13402w || !this.f13403x.equals(message.f13403x) || this.f13366B != message.f13366B || this.f13367C != message.f13367C || this.f13374N != message.f13374N) {
            return false;
        }
        return Arrays.equals(this.f13394o, message.f13394o);
    }

    /* renamed from: f */
    public boolean m35020f() {
        return this.f13394o.length != 0;
    }

    /* renamed from: g */
    public boolean m35019g() {
        return this.f13380a != -1;
    }

    @Override // p193e.p194a.p195a.p231g.p234l0.AbstractC6225a
    public long getId() {
        return this.f13380a;
    }

    /* renamed from: h */
    public boolean m35018h() {
        Entity[] entityArr;
        for (Entity entity : this.f13394o) {
            if (!entity.mo34894r() && !entity.mo34998k() && !entity.mo34997n() && !entity.mo34996o()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        long j = this.f13380a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f13381b;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        int i3 = this.f13382c.f11590w;
        int hashCode = this.f13383d.hashCode();
        int hashCode2 = this.f13384e.hashCode();
        int i4 = this.f13386g;
        boolean z = this.f13387h;
        boolean z2 = this.f13388i;
        boolean z3 = this.f13389j;
        int i5 = this.f13390k;
        int i6 = this.f13391l;
        int m8579q2 = C22128a.m8579q2(this.f13392m, (this.f13393n.hashCode() + ((((((((((((((hashCode2 + ((hashCode + (((((i * 31) + i2) * 31) + i3) * 31)) * 31)) * 31) + i4) * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + i5) * 31) + i6) * 31)) * 31, 31);
        int i7 = this.f13402w;
        int hashCode3 = this.f13403x.hashCode();
        long j3 = this.f13366B;
        int i8 = (int) (j3 ^ (j3 >>> 32));
        long j4 = this.f13367C;
        return ((((((((hashCode3 + ((m8579q2 + i7) * 31)) * 31) + i8) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + Arrays.hashCode(this.f13394o)) * 31) + (this.f13374N ? 1 : 0);
    }

    /* renamed from: i */
    public boolean m35017i() {
        for (Entity entity : this.f13394o) {
            if (entity.mo34894r()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    public boolean m35016k() {
        return this.f13390k == 3 && (this.f13386g & 17) == 17;
    }

    /* renamed from: l */
    public boolean m35015l() {
        int i = this.f13386g;
        boolean z = true;
        if ((i & 1) != 0 || (i & 4) == 0 || this.f13390k != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public boolean m35014m() {
        return this.f13366B != -1;
    }

    /* renamed from: n */
    public boolean m35013n() {
        boolean z;
        int i;
        if (this.f13390k == 2 && ((i = this.f13386g) == 1 || i == 0)) {
            z = true;
            if (m35018h()) {
                if (m35023c()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public String toString() {
        StringBuilder m8704I = C22128a.m8704I("{", "id : ");
        m8704I.append(this.f13380a);
        m8704I.append(", conversation : ");
        m8704I.append(this.f13381b);
        m8704I.append(", status : ");
        m8704I.append(this.f13386g);
        m8704I.append(", participant: ");
        m8704I.append(this.f13382c);
        m8704I.append(", date : ");
        m8704I.append(this.f13384e);
        m8704I.append(", dateSent : ");
        m8704I.append(this.f13383d);
        m8704I.append(", seen : ");
        m8704I.append(this.f13387h);
        m8704I.append(", read : ");
        m8704I.append(this.f13388i);
        m8704I.append(", locked : ");
        m8704I.append(this.f13389j);
        m8704I.append(", transport : ");
        m8704I.append(this.f13390k);
        m8704I.append(", sim : ");
        m8704I.append(this.f13392m);
        m8704I.append(", scheduledTransport : ");
        m8704I.append(this.f13391l);
        m8704I.append(", transportInfo : ");
        m8704I.append(this.f13393n);
        m8704I.append(", rawAddress : ");
        m8704I.append(this.f13398s);
        if (this.f13394o.length > 0) {
            m8704I.append(", entities : [");
            m8704I.append(this.f13394o[0]);
            for (int i = 1; i < this.f13394o.length; i++) {
                m8704I.append(", ");
                m8704I.append(this.f13394o[i]);
            }
            m8704I.append("]");
        }
        m8704I.append("}");
        return m8704I.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13380a);
        parcel.writeLong(this.f13381b);
        parcel.writeParcelable(this.f13382c, i);
        parcel.writeLong(((e) this.f13384e).a);
        parcel.writeLong(((e) this.f13383d).a);
        parcel.writeLong(((e) this.f13385f).a);
        parcel.writeInt(this.f13386g);
        parcel.writeInt(this.f13387h ? 1 : 0);
        parcel.writeInt(this.f13388i ? 1 : 0);
        parcel.writeInt(this.f13389j ? 1 : 0);
        parcel.writeInt(this.f13390k);
        parcel.writeInt(this.f13391l);
        parcel.writeParcelable(this.f13393n, i);
        parcel.writeString(this.f13392m);
        parcel.writeParcelableArray(this.f13394o, i);
        parcel.writeString(this.f13396q);
        parcel.writeString(this.f13397r);
        parcel.writeInt(this.f13365A ? 1 : 0);
        parcel.writeString(this.f13398s);
        parcel.writeInt(this.f13399t);
        parcel.writeInt(this.f13400u);
        parcel.writeInt(this.f13401v);
        parcel.writeInt(this.f13402w);
        parcel.writeLong(((e) this.f13403x).a);
        parcel.writeLong(this.f13366B);
        parcel.writeParcelable(this.f13404y, i);
        parcel.writeLong(this.f13367C);
        parcel.writeInt(this.f13368D);
        parcel.writeInt(this.f13369E);
        parcel.writeLong(this.f13370J);
        parcel.writeLong(this.f13371K);
        parcel.writeLong(this.f13372L);
        parcel.writeLong(this.f13373M);
        parcel.writeInt(this.f13374N ? 1 : 0);
        parcel.writeLong(((e) this.f13375O).a);
        parcel.writeString(this.f13405z);
        parcel.writeParcelable(this.f13376P, i);
        parcel.writeInt(this.f13377Q);
        parcel.writeLong(this.f13379S);
        parcel.writeLong(this.f13378R);
        parcel.writeParcelableArray(this.f13395p, i);
    }
}
