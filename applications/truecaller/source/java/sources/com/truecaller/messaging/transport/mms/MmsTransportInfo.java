package com.truecaller.messaging.transport.mms;

import android.content.ContentUris;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Telephony;
import android.util.SparseArray;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import java.util.HashSet;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import w3.b.a.b;
import w3.b.a.e0.e;
import w3.c.a.a.a.h;
/* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/MmsTransportInfo.class */
public final class MmsTransportInfo implements TransportInfo {
    public static final Parcelable.Creator<MmsTransportInfo> CREATOR = new C4260a();

    /* renamed from: A */
    public final int f13781A;

    /* renamed from: B */
    public final int f13782B;

    /* renamed from: C */
    public final boolean f13783C;

    /* renamed from: D */
    public boolean f13784D;

    /* renamed from: E */
    public final SparseArray<Set<String>> f13785E;

    /* renamed from: a */
    public final long f13786a;

    /* renamed from: b */
    public final long f13787b;

    /* renamed from: c */
    public final int f13788c;

    /* renamed from: d */
    public final long f13789d;

    /* renamed from: e */
    public final Uri f13790e;

    /* renamed from: f */
    public final int f13791f;

    /* renamed from: g */
    public final int f13792g;

    /* renamed from: h */
    public final String f13793h;

    /* renamed from: i */
    public final int f13794i;

    /* renamed from: j */
    public final String f13795j;

    /* renamed from: k */
    public final int f13796k;

    /* renamed from: l */
    public final Uri f13797l;

    /* renamed from: m */
    public final String f13798m;

    /* renamed from: n */
    public final int f13799n;

    /* renamed from: o */
    public final String f13800o;

    /* renamed from: p */
    public final b f13801p;

    /* renamed from: q */
    public final int f13802q;

    /* renamed from: r */
    public final int f13803r;

    /* renamed from: s */
    public final int f13804s;

    /* renamed from: t */
    public final String f13805t;

    /* renamed from: u */
    public final String f13806u;

    /* renamed from: v */
    public final String f13807v;

    /* renamed from: w */
    public final int f13808w;

    /* renamed from: x */
    public final int f13809x;

    /* renamed from: y */
    public final int f13810y;

    /* renamed from: z */
    public final long f13811z;

    /* renamed from: com.truecaller.messaging.transport.mms.MmsTransportInfo$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/MmsTransportInfo$a.class */
    public class C4260a implements Parcelable.Creator<MmsTransportInfo> {
        @Override // android.os.Parcelable.Creator
        public MmsTransportInfo createFromParcel(Parcel parcel) {
            return new MmsTransportInfo(parcel, (C4260a) null);
        }

        @Override // android.os.Parcelable.Creator
        public MmsTransportInfo[] newArray(int i) {
            return new MmsTransportInfo[i];
        }
    }

    /* renamed from: com.truecaller.messaging.transport.mms.MmsTransportInfo$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/messaging/transport/mms/MmsTransportInfo$b.class */
    public static class C4261b {

        /* renamed from: A */
        public int f13812A;

        /* renamed from: B */
        public int f13813B;

        /* renamed from: C */
        public boolean f13814C;

        /* renamed from: D */
        public boolean f13815D;

        /* renamed from: E */
        public SparseArray<Set<String>> f13816E;

        /* renamed from: a */
        public long f13817a;

        /* renamed from: b */
        public long f13818b;

        /* renamed from: c */
        public int f13819c;

        /* renamed from: d */
        public long f13820d;

        /* renamed from: e */
        public Uri f13821e;

        /* renamed from: f */
        public int f13822f;

        /* renamed from: g */
        public String f13823g;

        /* renamed from: h */
        public int f13824h;

        /* renamed from: i */
        public String f13825i;

        /* renamed from: j */
        public int f13826j;

        /* renamed from: k */
        public Uri f13827k;

        /* renamed from: l */
        public String f13828l;

        /* renamed from: m */
        public int f13829m;

        /* renamed from: n */
        public String f13830n;

        /* renamed from: o */
        public String f13831o;

        /* renamed from: p */
        public String f13832p;

        /* renamed from: q */
        public b f13833q;

        /* renamed from: r */
        public int f13834r;

        /* renamed from: s */
        public int f13835s;

        /* renamed from: t */
        public int f13836t;

        /* renamed from: u */
        public String f13837u;

        /* renamed from: v */
        public int f13838v;

        /* renamed from: w */
        public int f13839w;

        /* renamed from: x */
        public int f13840x;

        /* renamed from: y */
        public int f13841y;

        /* renamed from: z */
        public long f13842z;

        public C4261b() {
            this.f13818b = -1L;
        }

        public C4261b(MmsTransportInfo mmsTransportInfo, C4260a c4260a) {
            this.f13818b = -1L;
            this.f13817a = mmsTransportInfo.f13786a;
            this.f13818b = mmsTransportInfo.f13787b;
            this.f13819c = mmsTransportInfo.f13788c;
            this.f13820d = mmsTransportInfo.f13789d;
            this.f13821e = mmsTransportInfo.f13790e;
            this.f13822f = mmsTransportInfo.f13791f;
            this.f13823g = mmsTransportInfo.f13793h;
            this.f13824h = mmsTransportInfo.f13794i;
            this.f13825i = mmsTransportInfo.f13795j;
            this.f13826j = mmsTransportInfo.f13796k;
            this.f13827k = mmsTransportInfo.f13797l;
            this.f13828l = mmsTransportInfo.f13798m;
            this.f13829m = mmsTransportInfo.f13799n;
            this.f13830n = mmsTransportInfo.f13805t;
            this.f13831o = mmsTransportInfo.f13806u;
            this.f13832p = mmsTransportInfo.f13800o;
            this.f13833q = mmsTransportInfo.f13801p;
            this.f13834r = mmsTransportInfo.f13802q;
            this.f13835s = mmsTransportInfo.f13803r;
            this.f13836t = mmsTransportInfo.f13804s;
            this.f13837u = mmsTransportInfo.f13807v;
            this.f13838v = mmsTransportInfo.f13808w;
            this.f13839w = mmsTransportInfo.f13792g;
            this.f13840x = mmsTransportInfo.f13809x;
            this.f13841y = mmsTransportInfo.f13810y;
            this.f13842z = mmsTransportInfo.f13811z;
            this.f13812A = mmsTransportInfo.f13781A;
            this.f13813B = mmsTransportInfo.f13782B;
            this.f13814C = mmsTransportInfo.f13783C;
            this.f13815D = mmsTransportInfo.f13784D;
            this.f13816E = mmsTransportInfo.f13785E;
        }

        /* renamed from: a */
        public C4261b m34900a(int i, String str) {
            if (this.f13816E == null) {
                this.f13816E = new SparseArray<>();
            }
            Set<String> set = this.f13816E.get(i);
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
                this.f13816E.put(i, hashSet);
            }
            hashSet.add(str);
            return this;
        }

        /* renamed from: b */
        public MmsTransportInfo m34899b() {
            return new MmsTransportInfo(this, (C4260a) null);
        }

        /* renamed from: c */
        public C4261b m34898c(long j) {
            this.f13833q = new b(j * 1000);
            return this;
        }

        /* renamed from: d */
        public C4261b m34897d(long j) {
            this.f13821e = ContentUris.withAppendedId(Telephony.Mms.CONTENT_URI, j);
            return this;
        }
    }

    public MmsTransportInfo(Parcel parcel, C4260a c4260a) {
        this.f13786a = parcel.readLong();
        this.f13787b = parcel.readLong();
        this.f13788c = parcel.readInt();
        this.f13789d = parcel.readLong();
        this.f13790e = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f13791f = parcel.readInt();
        this.f13793h = parcel.readString();
        this.f13794i = parcel.readInt();
        this.f13795j = parcel.readString();
        this.f13796k = parcel.readInt();
        this.f13797l = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f13798m = parcel.readString();
        this.f13799n = parcel.readInt();
        this.f13800o = parcel.readString();
        this.f13801p = new b(parcel.readLong());
        this.f13802q = parcel.readInt();
        this.f13803r = parcel.readInt();
        this.f13804s = parcel.readInt();
        this.f13805t = parcel.readString();
        this.f13806u = parcel.readString();
        this.f13807v = parcel.readString();
        this.f13808w = parcel.readInt();
        this.f13792g = parcel.readInt();
        this.f13809x = parcel.readInt();
        this.f13810y = parcel.readInt();
        this.f13811z = parcel.readLong();
        this.f13781A = parcel.readInt();
        this.f13782B = parcel.readInt();
        this.f13783C = parcel.readInt() != 0;
        this.f13784D = parcel.readInt() != 0;
        this.f13785E = null;
    }

    public MmsTransportInfo(C4261b c4261b, C4260a c4260a) {
        this.f13786a = c4261b.f13817a;
        this.f13787b = c4261b.f13818b;
        this.f13788c = c4261b.f13819c;
        this.f13789d = c4261b.f13820d;
        this.f13790e = c4261b.f13821e;
        this.f13791f = c4261b.f13822f;
        this.f13793h = c4261b.f13823g;
        this.f13794i = c4261b.f13824h;
        this.f13795j = c4261b.f13825i;
        this.f13796k = c4261b.f13826j;
        this.f13797l = c4261b.f13827k;
        String str = c4261b.f13832p;
        this.f13800o = str == null ? "" : str;
        b bVar = c4261b.f13833q;
        this.f13801p = bVar == null ? new b(0L) : bVar;
        this.f13802q = c4261b.f13834r;
        this.f13803r = c4261b.f13835s;
        this.f13804s = c4261b.f13836t;
        String str2 = c4261b.f13837u;
        this.f13807v = str2 == null ? "" : str2;
        this.f13808w = c4261b.f13838v;
        this.f13792g = c4261b.f13839w;
        this.f13809x = c4261b.f13840x;
        this.f13810y = c4261b.f13841y;
        this.f13811z = c4261b.f13842z;
        String str3 = c4261b.f13828l;
        this.f13798m = str3 == null ? "" : str3;
        this.f13799n = c4261b.f13829m;
        this.f13805t = c4261b.f13830n;
        String str4 = c4261b.f13831o;
        this.f13806u = str4 == null ? "" : str4;
        this.f13781A = c4261b.f13812A;
        this.f13782B = c4261b.f13813B;
        this.f13783C = c4261b.f13814C;
        this.f13784D = c4261b.f13815D;
        this.f13785E = c4261b.f13816E;
    }

    /* renamed from: b */
    public static int m34902b(int i) {
        if ((i & 1) != 0) {
            if ((i & 8) != 0) {
                return 5;
            }
            if ((i & 4) != 0 || (i & 16) != 0) {
            }
            return 4;
        }
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (r3 != 5) goto L20;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m34901c(int r3, int r4, int r5) {
        /*
            r0 = 9
            r6 = r0
            r0 = r3
            r1 = 1
            if (r0 == r1) goto L36
            r0 = r3
            r1 = 2
            if (r0 == r1) goto L21
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L1c
            r0 = r6
            r4 = r0
            r0 = r3
            r1 = 5
            if (r0 == r1) goto L44
            goto L42
        L1c:
            r0 = 5
            r4 = r0
            goto L44
        L21:
            r0 = r5
            if (r0 == 0) goto L31
            r0 = r5
            r1 = 128(0x80, float:1.794E-43)
            if (r0 == r1) goto L31
            r0 = r6
            r4 = r0
            goto L44
        L31:
            r0 = 1
            r4 = r0
            goto L44
        L36:
            r0 = r4
            r1 = 130(0x82, float:1.82E-43)
            if (r0 != r1) goto L42
            r0 = 4
            r4 = r0
            goto L44
        L42:
            r0 = 0
            r4 = r0
        L44:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.transport.mms.MmsTransportInfo.m34901c(int, int, int):int");
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: E */
    public int mo34885E() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: J0 */
    public boolean mo34884J0() {
        return true;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: L1 */
    public int mo34883L1() {
        return 0;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: T1 */
    public String mo34882T1(b bVar) {
        return Message.m35022d(this.f13787b, bVar);
    }

    /* renamed from: a */
    public C4261b m34903a() {
        return new C4261b(this, null);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MmsTransportInfo.class != obj.getClass()) {
            return false;
        }
        MmsTransportInfo mmsTransportInfo = (MmsTransportInfo) obj;
        if (this.f13786a != mmsTransportInfo.f13786a || this.f13787b != mmsTransportInfo.f13787b || this.f13788c != mmsTransportInfo.f13788c || this.f13791f != mmsTransportInfo.f13791f || this.f13792g != mmsTransportInfo.f13792g || this.f13794i != mmsTransportInfo.f13794i || this.f13796k != mmsTransportInfo.f13796k || this.f13799n != mmsTransportInfo.f13799n || this.f13802q != mmsTransportInfo.f13802q || this.f13803r != mmsTransportInfo.f13803r || this.f13804s != mmsTransportInfo.f13804s || this.f13808w != mmsTransportInfo.f13808w || this.f13809x != mmsTransportInfo.f13809x || this.f13810y != mmsTransportInfo.f13810y || this.f13811z != mmsTransportInfo.f13811z || this.f13781A != mmsTransportInfo.f13781A || this.f13782B != mmsTransportInfo.f13782B || this.f13783C != mmsTransportInfo.f13783C || this.f13784D != mmsTransportInfo.f13784D) {
            return false;
        }
        Uri uri = this.f13790e;
        if (uri != null) {
            if (!uri.equals(mmsTransportInfo.f13790e)) {
                return false;
            }
        } else if (mmsTransportInfo.f13790e != null) {
            return false;
        }
        String str = this.f13793h;
        if (str != null) {
            if (!str.equals(mmsTransportInfo.f13793h)) {
                return false;
            }
        } else if (mmsTransportInfo.f13793h != null) {
            return false;
        }
        String str2 = this.f13795j;
        if (str2 != null) {
            if (!str2.equals(mmsTransportInfo.f13795j)) {
                return false;
            }
        } else if (mmsTransportInfo.f13795j != null) {
            return false;
        }
        Uri uri2 = this.f13797l;
        if (uri2 != null) {
            if (!uri2.equals(mmsTransportInfo.f13797l)) {
                return false;
            }
        } else if (mmsTransportInfo.f13797l != null) {
            return false;
        }
        return this.f13798m.equals(mmsTransportInfo.f13798m) && this.f13800o.equals(mmsTransportInfo.f13800o) && this.f13801p.equals(mmsTransportInfo.f13801p) && h.e(this.f13805t, mmsTransportInfo.f13805t) && this.f13806u.equals(mmsTransportInfo.f13806u) && h.e(this.f13807v, mmsTransportInfo.f13807v);
    }

    public int hashCode() {
        long j = this.f13786a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f13787b;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        int i3 = this.f13788c;
        Uri uri = this.f13790e;
        int i4 = 0;
        int hashCode = uri != null ? uri.hashCode() : 0;
        int i5 = this.f13791f;
        int i6 = this.f13792g;
        String str = this.f13793h;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int i7 = this.f13794i;
        String str2 = this.f13795j;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        int i8 = this.f13796k;
        Uri uri2 = this.f13797l;
        if (uri2 != null) {
            i4 = uri2.hashCode();
        }
        int m8579q2 = C22128a.m8579q2(this.f13800o, (C22128a.m8579q2(this.f13798m, ((((((((((((((((((((i * 31) + i2) * 31) + i3) * 31) + hashCode) * 31) + i5) * 31) + i6) * 31) + hashCode2) * 31) + i7) * 31) + hashCode3) * 31) + i8) * 31) + i4) * 31, 31) + this.f13799n) * 31, 31);
        int hashCode4 = this.f13801p.hashCode();
        int m8579q22 = C22128a.m8579q2(this.f13807v, C22128a.m8579q2(this.f13806u, C22128a.m8579q2(this.f13805t, (((((((hashCode4 + m8579q2) * 31) + this.f13802q) * 31) + this.f13803r) * 31) + this.f13804s) * 31, 31), 31), 31);
        int i9 = this.f13808w;
        int i10 = this.f13809x;
        int i11 = this.f13810y;
        long j3 = this.f13811z;
        return ((((((((((((((m8579q22 + i9) * 31) + i10) * 31) + i11) * 31) + ((int) ((j3 >>> 32) ^ j3))) * 31) + this.f13781A) * 31) + this.f13782B) * 31) + (this.f13783C ? 1 : 0)) * 31) + (this.f13784D ? 1 : 0);
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: k0 */
    public long mo34881k0() {
        return this.f13787b;
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: m1 */
    public long mo34880m1() {
        return this.f13789d;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{ type : mms, messageId: ");
        m8728C.append(this.f13786a);
        m8728C.append(", uri: \"");
        m8728C.append(String.valueOf(this.f13790e));
        m8728C.append("\" }");
        return m8728C.toString();
    }

    @Override // com.truecaller.messaging.data.types.TransportInfo
    /* renamed from: u */
    public long mo34879u() {
        return this.f13786a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f13786a);
        parcel.writeLong(this.f13787b);
        parcel.writeInt(this.f13788c);
        parcel.writeLong(this.f13789d);
        parcel.writeParcelable(this.f13790e, 0);
        parcel.writeInt(this.f13791f);
        parcel.writeString(this.f13793h);
        parcel.writeInt(this.f13794i);
        parcel.writeString(this.f13795j);
        parcel.writeInt(this.f13796k);
        parcel.writeParcelable(this.f13797l, 0);
        parcel.writeString(this.f13798m);
        parcel.writeInt(this.f13799n);
        parcel.writeString(this.f13800o);
        parcel.writeLong(((e) this.f13801p).a);
        parcel.writeInt(this.f13802q);
        parcel.writeInt(this.f13803r);
        parcel.writeInt(this.f13804s);
        parcel.writeString(this.f13805t);
        parcel.writeString(this.f13806u);
        parcel.writeString(this.f13807v);
        parcel.writeInt(this.f13808w);
        parcel.writeInt(this.f13792g);
        parcel.writeInt(this.f13809x);
        parcel.writeInt(this.f13810y);
        parcel.writeLong(this.f13811z);
        parcel.writeInt(this.f13781A);
        parcel.writeInt(this.f13782B);
        parcel.writeInt(this.f13783C ? 1 : 0);
        parcel.writeInt(this.f13784D ? 1 : 0);
    }
}
