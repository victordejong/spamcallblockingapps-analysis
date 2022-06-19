package com.truecaller.data.entity.messaging;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Patterns;
import com.razorpay.AnalyticsConstants;
import com.truecaller.account.network.TokenResponseDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.SpamData;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import w3.c.a.a.a.h;
import w3.c.a.a.a.j.a;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/messaging/Participant.class */
public class Participant implements Parcelable {

    /* renamed from: B */
    public static final Participant f11566B;
    public static final Parcelable.Creator<Participant> CREATOR = new C3847a();

    /* renamed from: A */
    public final int f11567A;

    /* renamed from: a */
    public final long f11568a;

    /* renamed from: b */
    public final int f11569b;

    /* renamed from: c */
    public final String f11570c;

    /* renamed from: d */
    public final String f11571d;

    /* renamed from: e */
    public final String f11572e;

    /* renamed from: f */
    public final String f11573f;

    /* renamed from: g */
    public final String f11574g;

    /* renamed from: h */
    public final long f11575h;

    /* renamed from: i */
    public final int f11576i;

    /* renamed from: j */
    public final boolean f11577j;

    /* renamed from: k */
    public final int f11578k;

    /* renamed from: l */
    public final String f11579l;

    /* renamed from: m */
    public final String f11580m;

    /* renamed from: n */
    public final int f11581n;

    /* renamed from: o */
    public final long f11582o;

    /* renamed from: p */
    public final int f11583p;

    /* renamed from: q */
    public final String f11584q;

    /* renamed from: r */
    public final int f11585r;

    /* renamed from: s */
    public final String f11586s;

    /* renamed from: t */
    public final long f11587t;

    /* renamed from: u */
    public final Contact.PremiumLevel f11588u;

    /* renamed from: v */
    public final Long f11589v;

    /* renamed from: w */
    public final int f11590w;

    /* renamed from: x */
    public final List<Long> f11591x;

    /* renamed from: y */
    public final int f11592y;

    /* renamed from: z */
    public final int f11593z;

    /* renamed from: com.truecaller.data.entity.messaging.Participant$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/messaging/Participant$a.class */
    public class C3847a implements Parcelable.Creator<Participant> {
        @Override // android.os.Parcelable.Creator
        public Participant createFromParcel(Parcel parcel) {
            return new Participant(parcel, (C3847a) null);
        }

        @Override // android.os.Parcelable.Creator
        public Participant[] newArray(int i) {
            return new Participant[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.messaging.Participant$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/messaging/Participant$b.class */
    public static class C3848b {

        /* renamed from: a */
        public final int f11594a;

        /* renamed from: b */
        public long f11595b;

        /* renamed from: c */
        public String f11596c;

        /* renamed from: d */
        public String f11597d;

        /* renamed from: e */
        public String f11598e;

        /* renamed from: f */
        public String f11599f;

        /* renamed from: g */
        public String f11600g;

        /* renamed from: h */
        public long f11601h;

        /* renamed from: i */
        public int f11602i;

        /* renamed from: j */
        public boolean f11603j;

        /* renamed from: k */
        public int f11604k;

        /* renamed from: l */
        public String f11605l;

        /* renamed from: m */
        public String f11606m;

        /* renamed from: n */
        public int f11607n;

        /* renamed from: o */
        public long f11608o;

        /* renamed from: p */
        public int f11609p;

        /* renamed from: q */
        public String f11610q;

        /* renamed from: r */
        public String f11611r;

        /* renamed from: s */
        public long f11612s;

        /* renamed from: t */
        public Contact.PremiumLevel f11613t;

        /* renamed from: u */
        public Long f11614u;

        /* renamed from: v */
        public int f11615v;

        /* renamed from: w */
        public List<Long> f11616w;

        /* renamed from: x */
        public int f11617x;

        /* renamed from: y */
        public int f11618y;

        /* renamed from: z */
        public int f11619z;

        public C3848b(int i) {
            this.f11595b = -1L;
            this.f11601h = -1L;
            this.f11608o = -1L;
            this.f11615v = 0;
            this.f11616w = Collections.emptyList();
            this.f11617x = -1;
            this.f11618y = 0;
            this.f11619z = 0;
            this.f11594a = i;
        }

        public C3848b(Participant participant, C3847a c3847a) {
            this.f11595b = -1L;
            this.f11601h = -1L;
            this.f11608o = -1L;
            this.f11615v = 0;
            this.f11616w = Collections.emptyList();
            this.f11617x = -1;
            this.f11618y = 0;
            this.f11619z = 0;
            this.f11594a = participant.f11569b;
            this.f11595b = participant.f11568a;
            this.f11596c = participant.f11570c;
            this.f11597d = participant.f11571d;
            this.f11601h = participant.f11575h;
            this.f11598e = participant.f11572e;
            this.f11599f = participant.f11573f;
            this.f11600g = participant.f11574g;
            this.f11602i = participant.f11576i;
            this.f11603j = participant.f11577j;
            this.f11604k = participant.f11578k;
            this.f11605l = participant.f11579l;
            this.f11606m = participant.f11580m;
            this.f11607n = participant.f11581n;
            this.f11608o = participant.f11582o;
            this.f11609p = participant.f11583p;
            this.f11610q = participant.f11584q;
            this.f11615v = participant.f11585r;
            this.f11611r = participant.f11586s;
            this.f11612s = participant.f11587t;
            this.f11613t = participant.f11588u;
            this.f11614u = participant.f11589v;
            this.f11616w = participant.f11591x;
            this.f11617x = participant.f11592y;
            this.f11618y = participant.f11593z;
            this.f11619z = participant.f11567A;
        }

        /* renamed from: a */
        public Participant m35443a() {
            AssertionUtil.AlwaysFatal.isNotNull(this.f11598e, new String[0]);
            return new Participant(this, (C3847a) null);
        }
    }

    static {
        C3848b c3848b = new C3848b(3);
        c3848b.f11598e = "";
        f11566B = c3848b.m35443a();
    }

    public Participant(Parcel parcel, C3847a c3847a) {
        this.f11568a = parcel.readLong();
        int readInt = parcel.readInt();
        this.f11569b = readInt;
        this.f11570c = parcel.readString();
        this.f11571d = parcel.readString();
        String readString = parcel.readString();
        this.f11572e = readString;
        this.f11573f = parcel.readString();
        this.f11575h = parcel.readLong();
        this.f11574g = parcel.readString();
        this.f11576i = parcel.readInt();
        this.f11577j = parcel.readInt() != 1 ? false : true;
        this.f11578k = parcel.readInt();
        this.f11579l = parcel.readString();
        this.f11580m = parcel.readString();
        this.f11581n = parcel.readInt();
        this.f11582o = parcel.readLong();
        this.f11583p = parcel.readInt();
        this.f11584q = parcel.readString();
        this.f11585r = parcel.readInt();
        this.f11586s = parcel.readString();
        this.f11587t = parcel.readLong();
        this.f11588u = Contact.PremiumLevel.values()[parcel.readInt()];
        this.f11589v = (Long) parcel.readValue(Long.class.getClassLoader());
        a aVar = new a();
        aVar.b(readString);
        aVar.a(readInt);
        this.f11590w = Integer.valueOf(aVar.a).intValue();
        this.f11591x = Collections.unmodifiableList(SpamData.Companion.m35459a(parcel.readString()));
        this.f11592y = parcel.readInt();
        this.f11593z = parcel.readInt();
        this.f11567A = parcel.readInt();
    }

    public Participant(C3848b c3848b, C3847a c3847a) {
        this.f11568a = c3848b.f11595b;
        int i = c3848b.f11594a;
        this.f11569b = i;
        this.f11570c = c3848b.f11596c;
        String str = c3848b.f11597d;
        String str2 = "";
        this.f11571d = str == null ? "" : str;
        String str3 = c3848b.f11598e;
        String str4 = str3 == null ? "" : str3;
        this.f11572e = str4;
        String str5 = c3848b.f11599f;
        this.f11573f = str5 != null ? str5 : str2;
        this.f11575h = c3848b.f11601h;
        this.f11574g = c3848b.f11600g;
        this.f11576i = c3848b.f11602i;
        this.f11577j = c3848b.f11603j;
        this.f11578k = c3848b.f11604k;
        this.f11579l = c3848b.f11605l;
        this.f11580m = c3848b.f11606m;
        this.f11581n = c3848b.f11607n;
        this.f11582o = c3848b.f11608o;
        this.f11583p = c3848b.f11609p;
        this.f11584q = c3848b.f11610q;
        this.f11585r = c3848b.f11615v;
        this.f11586s = c3848b.f11611r;
        this.f11587t = c3848b.f11612s;
        Contact.PremiumLevel premiumLevel = c3848b.f11613t;
        this.f11588u = premiumLevel == null ? Contact.PremiumLevel.NONE : premiumLevel;
        this.f11589v = c3848b.f11614u;
        a aVar = new a();
        aVar.b(str4);
        aVar.a(i);
        this.f11590w = Integer.valueOf(aVar.a).intValue();
        this.f11591x = Collections.unmodifiableList(c3848b.f11616w);
        this.f11592y = c3848b.f11617x;
        this.f11593z = c3848b.f11618y;
        this.f11567A = c3848b.f11619z;
    }

    /* renamed from: a */
    public static Participant m35458a(String str, AbstractC8621z abstractC8621z, String str2) {
        if (str.indexOf(64) > -1) {
            if (Patterns.EMAIL_ADDRESS.matcher(str).matches()) {
                C3848b c3848b = new C3848b(2);
                c3848b.f11597d = str;
                c3848b.f11598e = str;
                return c3848b.m35443a();
            }
            C3848b c3848b2 = new C3848b(1);
            c3848b2.f11597d = str;
            c3848b2.f11598e = str;
            return c3848b2.m35443a();
        }
        return m35455d(str, abstractC8621z, str2);
    }

    /* renamed from: b */
    public static Participant m35457b(Contact contact, String str, AbstractC8621z abstractC8621z, Uri uri) {
        C3848b c3848b = new C3848b(0);
        if (str != null) {
            c3848b.f11598e = str;
        } else {
            Number m35493v = contact.m35493v();
            if (m35493v != null) {
                c3848b.f11598e = m35493v.m35479e();
                c3848b.f11599f = m35493v.getCountryCode();
            } else {
                AssertionUtil.reportThrowableButNeverCrash(new IllegalArgumentException("Normalized number cannot be null"));
            }
        }
        if (abstractC8621z != null && h.j(c3848b.f11599f) && !h.i(c3848b.f11598e)) {
            String mo28180k = abstractC8621z.mo28180k(c3848b.f11598e);
            if (!h.i(mo28180k)) {
                c3848b.f11599f = mo28180k;
            }
        }
        if (contact.m35509l() != null) {
            c3848b.f11601h = contact.m35509l().longValue();
        }
        if (!h.j(contact.m35489x())) {
            c3848b.f11605l = contact.m35489x();
        }
        if (uri != null) {
            c3848b.f11606m = uri.toString();
        }
        return c3848b.m35443a();
    }

    /* renamed from: c */
    public static Participant[] m35456c(Uri uri, AbstractC8621z abstractC8621z, String str) {
        String[] strArr;
        ArrayList arrayList = new ArrayList();
        String scheme = uri.getScheme();
        if (TokenResponseDto.METHOD_SMS.equals(scheme) || "smsto".equals(scheme)) {
            String schemeSpecificPart = uri.getSchemeSpecificPart();
            String query = uri.getQuery();
            String str2 = schemeSpecificPart;
            if (!TextUtils.isEmpty(query)) {
                str2 = schemeSpecificPart.substring(0, (schemeSpecificPart.length() - query.length()) - 1);
            }
            if (str2 == null) {
                strArr = null;
            } else {
                int length = str2.length();
                if (length == 0) {
                    strArr = w3.c.a.a.a.a.b;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    int i = 0;
                    boolean z = false;
                    int i2 = 0;
                    int i3 = 1;
                    while (i < length) {
                        if (",;".indexOf(str2.charAt(i)) >= 0) {
                            if (z) {
                                if (i3 == -1) {
                                    i = length;
                                }
                                arrayList2.add(str2.substring(i2, i));
                                i3++;
                                z = false;
                            }
                            i2 = i + 1;
                            i = i2;
                        } else {
                            i++;
                            z = true;
                        }
                    }
                    if (z) {
                        arrayList2.add(str2.substring(i2, i));
                    }
                    strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
                }
            }
            for (String str3 : strArr) {
                Participant m35458a = m35458a(str3, abstractC8621z, str);
                int i4 = m35458a.f11569b;
                if (i4 == 0 || i4 == 1) {
                    arrayList.add(m35458a);
                }
            }
        }
        return (Participant[]) arrayList.toArray(new Participant[arrayList.size()]);
    }

    /* renamed from: d */
    public static Participant m35455d(String str, AbstractC8621z abstractC8621z, String str2) {
        C3848b c3848b;
        String mo28186e = abstractC8621z.mo28186e(str, str2, true);
        if (mo28186e == null) {
            c3848b = new C3848b(1);
            c3848b.f11598e = str;
        } else {
            C3848b c3848b2 = new C3848b(0);
            c3848b2.f11598e = mo28186e;
            String mo28180k = abstractC8621z.mo28180k(mo28186e);
            if (!h.i(mo28180k)) {
                c3848b2.f11599f = mo28180k;
            }
            c3848b = c3848b2;
        }
        c3848b.f11597d = str;
        return c3848b.m35443a();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public C3848b m35454e() {
        return new C3848b(this, null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Participant)) {
            return false;
        }
        Participant participant = (Participant) obj;
        boolean z = false;
        if (this.f11569b == participant.f11569b) {
            z = false;
            if (this.f11572e.equals(participant.f11572e)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: f */
    public String m35453f() {
        return (this.f11569b != 0 || !this.f11572e.startsWith("+")) ? this.f11572e : this.f11572e.substring(1);
    }

    /* renamed from: g */
    public String m35452g() {
        int i = this.f11569b;
        if (i != 0) {
            if (i == 1) {
                return "alphanum";
            }
            if (i == 2) {
                return AnalyticsConstants.EMAIL;
            }
            if (i == 3) {
                return "tc";
            }
            if (i == 4) {
                return "im_group";
            }
            if (i == 5) {
                return "hidden";
            }
            AssertionUtil.OnlyInDebug.fail("Should never happen");
            return "unknwon";
        }
        return "phone_number";
    }

    /* renamed from: h */
    public boolean m35451h(int i) {
        return (i & this.f11585r) != 0;
    }

    public int hashCode() {
        return this.f11590w;
    }

    /* renamed from: i */
    public boolean m35450i() {
        return h.m(this.f11570c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
        if (r4 == false) goto L8;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m35449k(boolean r4) {
        /*
            r3 = this;
            r0 = r3
            int r0 = r0.f11576i
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 2
            if (r0 == r1) goto L25
            r0 = r3
            boolean r0 = r0.f11577j
            if (r0 == 0) goto L1a
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 != 0) goto L28
        L1a:
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L25
            r0 = r6
            r7 = r0
            goto L28
        L25:
            r0 = 0
            r7 = r0
        L28:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.data.entity.messaging.Participant.m35449k(boolean):boolean");
    }

    /* renamed from: l */
    public boolean m35448l() {
        boolean z = true;
        if (this.f11592y != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: m */
    public boolean m35447m() {
        return (this.f11581n & 2) == 2;
    }

    /* renamed from: n */
    public boolean m35446n() {
        boolean z;
        if (this.f11576i != 2) {
            z = true;
            if (!this.f11577j) {
                z = true;
                if (!m35445o()) {
                    if (this.f11576i == 1) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: o */
    public boolean m35445o() {
        return this.f11584q != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
        if (((r3.f11581n & 32) == 32) == false) goto L13;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m35444p() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.m35447m()
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L2d
            r0 = r3
            r1 = 2
            boolean r0 = r0.m35451h(r1)
            if (r0 != 0) goto L2d
            r0 = r3
            int r0 = r0.f11581n
            r1 = 32
            r0 = r0 & r1
            r1 = 32
            if (r0 != r1) goto L24
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r6
            if (r0 != 0) goto L2d
            goto L2f
        L2d:
            r0 = 0
            r5 = r0
        L2f:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.data.entity.messaging.Participant.m35444p():boolean");
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{id : ");
        m8728C.append(this.f11568a);
        m8728C.append(", type: ");
        m8728C.append(m35452g());
        m8728C.append(", source : \"");
        return C22128a.m8697J2(m8728C, this.f11581n, "\"}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        parcel.writeLong(this.f11568a);
        parcel.writeInt(this.f11569b);
        parcel.writeString(this.f11570c);
        parcel.writeString(this.f11571d);
        parcel.writeString(this.f11572e);
        parcel.writeString(this.f11573f);
        parcel.writeLong(this.f11575h);
        parcel.writeString(this.f11574g);
        parcel.writeInt(this.f11576i);
        parcel.writeInt(this.f11577j ? 1 : 0);
        parcel.writeInt(this.f11578k);
        parcel.writeString(this.f11579l);
        parcel.writeString(this.f11580m);
        parcel.writeInt(this.f11581n);
        parcel.writeLong(this.f11582o);
        parcel.writeInt(this.f11583p);
        parcel.writeString(this.f11584q);
        parcel.writeInt(this.f11585r);
        parcel.writeString(this.f11586s);
        parcel.writeLong(this.f11587t);
        Contact.PremiumLevel premiumLevel = this.f11588u;
        if (premiumLevel != null) {
            i2 = premiumLevel.ordinal();
        } else {
            Contact.PremiumLevel premiumLevel2 = Contact.PremiumLevel.NONE;
            i2 = 0;
        }
        parcel.writeInt(i2);
        parcel.writeValue(this.f11589v);
        parcel.writeString(TextUtils.join(",", this.f11591x));
        parcel.writeInt(this.f11592y);
        parcel.writeInt(this.f11593z);
        parcel.writeInt(this.f11567A);
    }
}
