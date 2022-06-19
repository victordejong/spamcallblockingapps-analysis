package p193e.p194a.p1146q2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17654m3;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.q2.p0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/p0.class */
public abstract class AbstractC19534p0 {

    /* renamed from: e.a.q2.p0$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/p0$a.class */
    public static final class C19535a extends AbstractC19534p0 {

        /* renamed from: a */
        public final String f54264a;

        /* renamed from: b */
        public final String f54265b;

        /* renamed from: c */
        public final String f54266c;

        /* renamed from: d */
        public final String f54267d;

        /* renamed from: e */
        public final long f54268e;

        /* renamed from: f */
        public final String f54269f;

        /* renamed from: g */
        public final String f54270g;

        /* renamed from: h */
        public final C17654m3 f54271h;

        /* renamed from: i */
        public final String f54272i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19535a(String str, String str2, String str3, String str4, long j, String str5, String str6, C17654m3 c17654m3, String str7) {
            super(null);
            l.e(str, "eventMessageId");
            l.e(str2, "messageType");
            l.e(str5, "marking");
            l.e(c17654m3, "contactInfo");
            l.e(str7, "tab");
            this.f54264a = str;
            this.f54265b = str2;
            this.f54266c = str3;
            this.f54267d = str4;
            this.f54268e = j;
            this.f54269f = str5;
            this.f54270g = str6;
            this.f54271h = c17654m3;
            this.f54272i = str7;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19535a)) {
                    return false;
                }
                C19535a c19535a = (C19535a) obj;
                return l.a(this.f54264a, c19535a.f54264a) && l.a(this.f54265b, c19535a.f54265b) && l.a(this.f54266c, c19535a.f54266c) && l.a(this.f54267d, c19535a.f54267d) && this.f54268e == c19535a.f54268e && l.a(this.f54269f, c19535a.f54269f) && l.a(this.f54270g, c19535a.f54270g) && l.a(this.f54271h, c19535a.f54271h) && l.a(this.f54272i, c19535a.f54272i);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f54264a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f54265b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f54266c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f54267d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            int m34274a = C4876d.m34274a(this.f54268e);
            String str5 = this.f54269f;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            String str6 = this.f54270g;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            C17654m3 c17654m3 = this.f54271h;
            int hashCode7 = c17654m3 != null ? c17654m3.hashCode() : 0;
            String str7 = this.f54272i;
            if (str7 != null) {
                i = str7.hashCode();
            }
            return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + m34274a) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("CommonAnalyticsInfo(eventMessageId=");
            m8728C.append(this.f54264a);
            m8728C.append(", messageType=");
            m8728C.append(this.f54265b);
            m8728C.append(", senderId=");
            m8728C.append(this.f54266c);
            m8728C.append(", senderType=");
            m8728C.append(this.f54267d);
            m8728C.append(", date=");
            m8728C.append(this.f54268e);
            m8728C.append(", marking=");
            m8728C.append(this.f54269f);
            m8728C.append(", context=");
            m8728C.append(this.f54270g);
            m8728C.append(", contactInfo=");
            m8728C.append(this.f54271h);
            m8728C.append(", tab=");
            return C22128a.m8618h(m8728C, this.f54272i, ")");
        }
    }

    /* renamed from: e.a.q2.p0$b */
    /* loaded from: classes4-dex2jar.jar:e/a/q2/p0$b.class */
    public static final class C19536b extends AbstractC19534p0 {

        /* renamed from: a */
        public final String f54273a;

        /* renamed from: b */
        public final String f54274b;

        /* renamed from: c */
        public final String f54275c;

        /* renamed from: d */
        public final String f54276d;

        /* renamed from: e */
        public final String f54277e;

        /* renamed from: f */
        public final boolean f54278f;

        /* renamed from: g */
        public final boolean f54279g;

        /* renamed from: h */
        public final boolean f54280h;

        /* renamed from: i */
        public final long f54281i;

        /* renamed from: j */
        public final String f54282j;

        /* renamed from: k */
        public final String f54283k;

        /* renamed from: l */
        public final C17654m3 f54284l;

        /* renamed from: m */
        public final String f54285m;

        /* renamed from: n */
        public final String f54286n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19536b(String str, String str2, String str3, String str4, String str5, boolean z, boolean z2, boolean z3, long j, String str6, String str7, C17654m3 c17654m3, String str8, String str9) {
            super(null);
            l.e(str, "messageId");
            l.e(str2, "senderImId");
            l.e(str6, "marking");
            l.e(c17654m3, "contactInfo");
            l.e(str8, "tab");
            l.e(str9, RemoteMessageConst.URGENCY);
            this.f54273a = str;
            this.f54274b = str2;
            this.f54275c = str3;
            this.f54276d = str4;
            this.f54277e = str5;
            this.f54278f = z;
            this.f54279g = z2;
            this.f54280h = z3;
            this.f54281i = j;
            this.f54282j = str6;
            this.f54283k = str7;
            this.f54284l = c17654m3;
            this.f54285m = str8;
            this.f54286n = str9;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C19536b)) {
                    return false;
                }
                C19536b c19536b = (C19536b) obj;
                return l.a(this.f54273a, c19536b.f54273a) && l.a(this.f54274b, c19536b.f54274b) && l.a(this.f54275c, c19536b.f54275c) && l.a(this.f54276d, c19536b.f54276d) && l.a(this.f54277e, c19536b.f54277e) && this.f54278f == c19536b.f54278f && this.f54279g == c19536b.f54279g && this.f54280h == c19536b.f54280h && this.f54281i == c19536b.f54281i && l.a(this.f54282j, c19536b.f54282j) && l.a(this.f54283k, c19536b.f54283k) && l.a(this.f54284l, c19536b.f54284l) && l.a(this.f54285m, c19536b.f54285m) && l.a(this.f54286n, c19536b.f54286n);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f54273a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f54274b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f54275c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f54276d;
            int hashCode4 = str4 != null ? str4.hashCode() : 0;
            String str5 = this.f54277e;
            int hashCode5 = str5 != null ? str5.hashCode() : 0;
            boolean z = this.f54278f;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f54279g;
            int i4 = z2 ? 1 : 0;
            if (z2) {
                i4 = 1;
            }
            boolean z3 = this.f54280h;
            if (!z3) {
                i2 = z3 ? 1 : 0;
            }
            int m34274a = C4876d.m34274a(this.f54281i);
            String str6 = this.f54282j;
            int hashCode6 = str6 != null ? str6.hashCode() : 0;
            String str7 = this.f54283k;
            int hashCode7 = str7 != null ? str7.hashCode() : 0;
            C17654m3 c17654m3 = this.f54284l;
            int hashCode8 = c17654m3 != null ? c17654m3.hashCode() : 0;
            String str8 = this.f54285m;
            int hashCode9 = str8 != null ? str8.hashCode() : 0;
            String str9 = this.f54286n;
            if (str9 != null) {
                i = str9.hashCode();
            }
            return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + i3) * 31) + i4) * 31) + i2) * 31) + m34274a) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ImAnalyticsInfo(messageId=");
            m8728C.append(this.f54273a);
            m8728C.append(", senderImId=");
            m8728C.append(this.f54274b);
            m8728C.append(", groupId=");
            m8728C.append(this.f54275c);
            m8728C.append(", attachmentType=");
            m8728C.append(this.f54276d);
            m8728C.append(", mimeType=");
            m8728C.append(this.f54277e);
            m8728C.append(", hasText=");
            m8728C.append(this.f54278f);
            m8728C.append(", isNumberHidden=");
            m8728C.append(this.f54279g);
            m8728C.append(", isBusinessMessage=");
            m8728C.append(this.f54280h);
            m8728C.append(", date=");
            m8728C.append(this.f54281i);
            m8728C.append(", marking=");
            m8728C.append(this.f54282j);
            m8728C.append(", context=");
            m8728C.append(this.f54283k);
            m8728C.append(", contactInfo=");
            m8728C.append(this.f54284l);
            m8728C.append(", tab=");
            m8728C.append(this.f54285m);
            m8728C.append(", urgency=");
            return C22128a.m8618h(m8728C, this.f54286n, ")");
        }
    }

    public AbstractC19534p0() {
    }

    public AbstractC19534p0(f fVar) {
    }
}
