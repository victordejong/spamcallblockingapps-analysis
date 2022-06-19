package com.truecaller.messaging.data.types;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.NullTransportInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Draft.class */
public final class Draft implements Parcelable {

    /* renamed from: a */
    public final long f13266a;

    /* renamed from: b */
    public final Conversation f13267b;

    /* renamed from: c */
    public final String f13268c;

    /* renamed from: d */
    public final boolean f13269d;

    /* renamed from: e */
    public final Participant[] f13270e;

    /* renamed from: f */
    public final Mention[] f13271f;

    /* renamed from: g */
    public final BinaryEntity[] f13272g;

    /* renamed from: h */
    public final boolean f13273h;

    /* renamed from: i */
    public final String f13274i;

    /* renamed from: j */
    public final long f13275j;

    /* renamed from: k */
    public final boolean f13276k;

    /* renamed from: l */
    public final boolean f13277l;

    /* renamed from: m */
    public final ReplySnippet f13278m;

    /* renamed from: n */
    public final int f13279n;

    /* renamed from: o */
    public final ImForwardInfo f13280o;

    /* renamed from: p */
    public final int f13281p;

    /* renamed from: q */
    public final long f13282q;

    /* renamed from: r */
    public final int f13283r;

    /* renamed from: s */
    public static final BinaryEntity[] f13265s = new BinaryEntity[0];
    public static final Parcelable.Creator<Draft> CREATOR = new C4193a();

    /* renamed from: com.truecaller.messaging.data.types.Draft$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Draft$a.class */
    public class C4193a implements Parcelable.Creator<Draft> {
        @Override // android.os.Parcelable.Creator
        public Draft createFromParcel(Parcel parcel) {
            return new Draft(parcel, (C4193a) null);
        }

        @Override // android.os.Parcelable.Creator
        public Draft[] newArray(int i) {
            return new Draft[i];
        }
    }

    /* renamed from: com.truecaller.messaging.data.types.Draft$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/data/types/Draft$b.class */
    public static class C4194b {

        /* renamed from: a */
        public long f13284a;

        /* renamed from: b */
        public Conversation f13285b;

        /* renamed from: c */
        public Set<Participant> f13286c;

        /* renamed from: d */
        public Set<Mention> f13287d;

        /* renamed from: e */
        public String f13288e;

        /* renamed from: f */
        public boolean f13289f;

        /* renamed from: g */
        public List<BinaryEntity> f13290g;

        /* renamed from: h */
        public boolean f13291h;

        /* renamed from: i */
        public long f13292i;

        /* renamed from: j */
        public ReplySnippet f13293j;

        /* renamed from: k */
        public boolean f13294k;

        /* renamed from: l */
        public boolean f13295l;

        /* renamed from: m */
        public int f13296m;

        /* renamed from: n */
        public ImForwardInfo f13297n;

        /* renamed from: o */
        public int f13298o;

        /* renamed from: p */
        public long f13299p;

        /* renamed from: q */
        public int f13300q;

        public C4194b() {
            this.f13284a = -1L;
            this.f13286c = new HashSet();
            this.f13287d = new HashSet();
            this.f13289f = false;
            this.f13291h = false;
            this.f13292i = -1L;
            this.f13294k = true;
            this.f13295l = false;
            this.f13296m = 3;
            this.f13299p = -1L;
            this.f13300q = 3;
        }

        public C4194b(Draft draft, C4193a c4193a) {
            this.f13284a = -1L;
            this.f13286c = new HashSet();
            this.f13287d = new HashSet();
            this.f13289f = false;
            this.f13291h = false;
            this.f13292i = -1L;
            this.f13294k = true;
            this.f13295l = false;
            this.f13296m = 3;
            this.f13299p = -1L;
            this.f13300q = 3;
            this.f13284a = draft.f13266a;
            this.f13285b = draft.f13267b;
            this.f13288e = draft.f13268c;
            this.f13289f = draft.f13269d;
            Collections.addAll(this.f13286c, draft.f13270e);
            if (draft.f13272g.length > 0) {
                ArrayList arrayList = new ArrayList(draft.f13272g.length);
                this.f13290g = arrayList;
                Collections.addAll(arrayList, draft.f13272g);
            }
            this.f13291h = draft.f13273h;
            this.f13293j = draft.f13278m;
            this.f13292i = draft.f13275j;
            this.f13294k = draft.f13276k;
            this.f13295l = draft.f13277l;
            this.f13296m = draft.f13279n;
            this.f13297n = draft.f13280o;
            this.f13298o = draft.f13281p;
            this.f13299p = draft.f13282q;
            this.f13300q = draft.f13283r;
            Collections.addAll(this.f13287d, draft.f13271f);
        }

        /* renamed from: a */
        public C4194b m35057a(Collection<BinaryEntity> collection) {
            if (!collection.isEmpty()) {
                if (this.f13290g == null) {
                    this.f13290g = new ArrayList(collection.size());
                }
                this.f13290g.addAll(collection);
            }
            return this;
        }

        /* renamed from: b */
        public C4194b m35056b(BinaryEntity binaryEntity) {
            AssertionUtil.AlwaysFatal.isFalse(binaryEntity.mo34894r(), new String[0]);
            if (this.f13290g == null) {
                this.f13290g = new ArrayList();
            }
            this.f13290g.add(binaryEntity);
            return this;
        }

        /* renamed from: c */
        public Draft m35055c() {
            return new Draft(this, (C4193a) null);
        }

        /* renamed from: d */
        public C4194b m35054d() {
            List<BinaryEntity> list = this.f13290g;
            if (list != null) {
                list.clear();
            }
            return this;
        }

        /* renamed from: e */
        public C4194b m35053e() {
            this.f13293j = null;
            this.f13292i = -1L;
            return this;
        }

        /* renamed from: f */
        public C4194b m35052f() {
            if (this.f13288e != null) {
                this.f13288e = null;
            }
            this.f13289f = false;
            return this;
        }

        /* renamed from: g */
        public C4194b m35051g(Mention[] mentionArr) {
            this.f13287d.clear();
            Collections.addAll(this.f13287d, mentionArr);
            return this;
        }
    }

    public Draft(Parcel parcel, C4193a c4193a) {
        this.f13266a = parcel.readLong();
        this.f13267b = (Conversation) parcel.readParcelable(Conversation.class.getClassLoader());
        this.f13268c = parcel.readString();
        this.f13269d = parcel.readInt() != 0;
        this.f13270e = (Participant[]) parcel.createTypedArray(Participant.CREATOR);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(Entity.class.getClassLoader());
        this.f13272g = new BinaryEntity[readParcelableArray.length];
        int i = 0;
        while (true) {
            BinaryEntity[] binaryEntityArr = this.f13272g;
            if (i >= binaryEntityArr.length) {
                break;
            }
            binaryEntityArr[i] = (BinaryEntity) readParcelableArray[i];
            i++;
        }
        this.f13273h = parcel.readInt() != 0;
        this.f13274i = parcel.readString();
        this.f13278m = (ReplySnippet) parcel.readParcelable(ReplySnippet.class.getClassLoader());
        this.f13275j = parcel.readLong();
        this.f13276k = parcel.readInt() != 0;
        this.f13277l = parcel.readInt() != 0;
        this.f13279n = parcel.readInt();
        Parcelable[] readParcelableArray2 = parcel.readParcelableArray(Mention.class.getClassLoader());
        this.f13271f = new Mention[readParcelableArray2.length];
        int i2 = 0;
        while (true) {
            Mention[] mentionArr = this.f13271f;
            if (i2 >= mentionArr.length) {
                this.f13280o = (ImForwardInfo) parcel.readParcelable(ImForwardInfo.class.getClassLoader());
                this.f13281p = parcel.readInt();
                this.f13282q = parcel.readLong();
                this.f13283r = parcel.readInt();
                return;
            }
            mentionArr[i2] = (Mention) readParcelableArray2[i2];
            i2++;
        }
    }

    public Draft(C4194b c4194b, C4193a c4193a) {
        this.f13266a = c4194b.f13284a;
        this.f13267b = c4194b.f13285b;
        String str = c4194b.f13288e;
        this.f13268c = str == null ? "" : str;
        this.f13269d = c4194b.f13289f;
        Set<Participant> set = c4194b.f13286c;
        this.f13270e = (Participant[]) set.toArray(new Participant[set.size()]);
        List<BinaryEntity> list = c4194b.f13290g;
        if (list == null) {
            this.f13272g = f13265s;
        } else {
            this.f13272g = (BinaryEntity[]) list.toArray(new BinaryEntity[list.size()]);
        }
        this.f13273h = c4194b.f13291h;
        this.f13274i = UUID.randomUUID().toString();
        this.f13278m = c4194b.f13293j;
        this.f13275j = c4194b.f13292i;
        this.f13276k = c4194b.f13294k;
        this.f13277l = c4194b.f13295l;
        this.f13279n = c4194b.f13296m;
        Set<Mention> set2 = c4194b.f13287d;
        this.f13271f = (Mention[]) set2.toArray(new Mention[set2.size()]);
        this.f13280o = c4194b.f13297n;
        this.f13281p = c4194b.f13298o;
        this.f13282q = c4194b.f13299p;
        this.f13283r = c4194b.f13300q;
    }

    /* renamed from: a */
    public Message m35062a(String str, String str2) {
        NullTransportInfo nullTransportInfo;
        Message.C4209b c4209b = new Message.C4209b();
        long j = this.f13266a;
        if (j != -1) {
            c4209b.f13421a = j;
        }
        Conversation conversation = this.f13267b;
        if (conversation != null) {
            c4209b.f13422b = conversation.f13199a;
        }
        c4209b.f13428h = this.f13276k;
        c4209b.f13429i = true;
        c4209b.f13430j = false;
        c4209b.f13425e = new b();
        c4209b.f13424d = new b();
        Participant[] participantArr = this.f13270e;
        c4209b.f13423c = participantArr[0];
        if (str == null) {
            str = "-1";
        }
        c4209b.f13433m = str;
        c4209b.f13439s = this.f13274i;
        c4209b.f13440t = str2;
        c4209b.f13427g = 3;
        c4209b.f13437q = this.f13273h;
        c4209b.f13438r = participantArr[0].f11571d;
        c4209b.f13441u = 2;
        c4209b.f13446z = this.f13275j;
        c4209b.f13417L = this.f13280o;
        c4209b.f13415J = this.f13277l;
        c4209b.f13418M = this.f13281p;
        c4209b.m35008e(Long.valueOf(this.f13282q));
        Collections.addAll(c4209b.f13436p, this.f13271f);
        long j2 = this.f13266a;
        if (j2 != -1) {
            NullTransportInfo.C4246b c4246b = new NullTransportInfo.C4246b();
            c4246b.f13679a = j2;
            nullTransportInfo = c4246b.m34914a();
        } else {
            nullTransportInfo = NullTransportInfo.f13677b;
        }
        c4209b.f13431k = 3;
        c4209b.f13434n = nullTransportInfo;
        for (BinaryEntity binaryEntity : this.f13272g) {
            c4209b.m35006g(binaryEntity);
        }
        if (!TextUtils.isEmpty(this.f13268c) || m35060c()) {
            c4209b.m35006g(Entity.C4195a.m35042a(Entity.f13305h, -1L, "text/plain", 0, this.f13268c, this.f13269d, 0, 0, 0, 0L, null, null, null, null, 0, null, null, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, PlaceLikelihood.LIKELIHOOD_MIN_VALUE, 262112));
        }
        return c4209b.m35012a();
    }

    /* renamed from: b */
    public C4194b m35061b() {
        return new C4194b(this, null);
    }

    /* renamed from: c */
    public boolean m35060c() {
        return this.f13282q != -1;
    }

    /* renamed from: d */
    public boolean m35059d() {
        return h.j(this.f13268c) && this.f13272g.length == 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public boolean m35058e() {
        return this.f13275j != -1;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Draft{messageId=");
        m8728C.append(this.f13266a);
        m8728C.append(", conversation=");
        m8728C.append(this.f13267b);
        m8728C.append(", participants=");
        m8728C.append(Arrays.toString(this.f13270e));
        m8728C.append(", mentions=");
        m8728C.append(Arrays.toString(this.f13271f));
        m8728C.append(", hiddenNumber=");
        return C22128a.m8598m(m8728C, this.f13273h, '}');
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13266a);
        parcel.writeParcelable(this.f13267b, i);
        parcel.writeString(this.f13268c);
        parcel.writeInt(this.f13269d ? 1 : 0);
        parcel.writeTypedArray(this.f13270e, i);
        parcel.writeParcelableArray(this.f13272g, i);
        parcel.writeInt(this.f13273h ? 1 : 0);
        parcel.writeString(this.f13274i);
        parcel.writeParcelable(this.f13278m, i);
        parcel.writeLong(this.f13275j);
        parcel.writeInt(this.f13276k ? 1 : 0);
        parcel.writeInt(this.f13277l ? 1 : 0);
        parcel.writeInt(this.f13279n);
        parcel.writeParcelableArray(this.f13271f, i);
        parcel.writeParcelable(this.f13280o, i);
        parcel.writeInt(this.f13281p);
        parcel.writeLong(this.f13282q);
        parcel.writeInt(this.f13283r);
    }
}
