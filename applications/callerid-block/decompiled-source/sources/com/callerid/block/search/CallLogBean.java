package com.callerid.block.search;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.callerid.block.util.SortToken;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callerid/block/search/CallLogBean.class */
public class CallLogBean implements Parcelable {
    public static final Parcelable.Creator<CallLogBean> CREATOR = new C1127a();

    /* renamed from: A */
    private String f4765A;

    /* renamed from: B */
    private String f4766B;

    /* renamed from: C */
    private boolean f4767C;

    /* renamed from: D */
    private String f4768D;

    /* renamed from: E */
    private String f4769E;

    /* renamed from: F */
    private String f4770F;

    /* renamed from: G */
    private SortToken f4771G;

    /* renamed from: H */
    private String f4772H;

    /* renamed from: I */
    private String f4773I;

    /* renamed from: J */
    private boolean f4774J;

    /* renamed from: K */
    private long f4775K;

    /* renamed from: L */
    private String f4776L;

    /* renamed from: M */
    private String f4777M;

    /* renamed from: N */
    private int f4778N;

    /* renamed from: O */
    private String f4779O;

    /* renamed from: P */
    private String f4780P;

    /* renamed from: Q */
    private String f4781Q;

    /* renamed from: R */
    private String f4782R;

    /* renamed from: S */
    private Date f4783S;

    /* renamed from: T */
    private String f4784T;

    /* renamed from: U */
    private Uri f4785U;

    /* renamed from: V */
    public String f4786V;

    /* renamed from: b */
    private boolean f4787b;

    /* renamed from: c */
    private boolean f4788c;

    /* renamed from: d */
    public boolean f4789d;

    /* renamed from: e */
    private String f4790e;

    /* renamed from: f */
    private int f4791f;

    /* renamed from: g */
    private String f4792g;

    /* renamed from: h */
    private String f4793h;

    /* renamed from: i */
    private String f4794i;

    /* renamed from: j */
    private int f4795j;

    /* renamed from: k */
    private int f4796k;

    /* renamed from: l */
    private boolean f4797l;

    /* renamed from: m */
    private boolean f4798m;

    /* renamed from: n */
    private boolean f4799n;

    /* renamed from: o */
    private String f4800o;

    /* renamed from: p */
    private int f4801p;

    /* renamed from: q */
    private String f4802q;

    /* renamed from: r */
    private long f4803r;

    /* renamed from: s */
    private String f4804s;

    /* renamed from: t */
    private String f4805t;

    /* renamed from: u */
    private String f4806u;

    /* renamed from: v */
    private String f4807v;

    /* renamed from: w */
    private String f4808w;

    /* renamed from: x */
    private String f4809x;

    /* renamed from: y */
    private String f4810y;

    /* renamed from: z */
    private String f4811z;

    /* renamed from: com.callerid.block.search.CallLogBean$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/search/CallLogBean$a.class */
    static final class C1127a implements Parcelable.Creator<CallLogBean> {
        C1127a() {
        }

        /* renamed from: a */
        public CallLogBean createFromParcel(Parcel parcel) {
            return new CallLogBean(parcel);
        }

        /* renamed from: b */
        public CallLogBean[] newArray(int i) {
            return new CallLogBean[i];
        }
    }

    public CallLogBean() {
        this.f4787b = true;
        this.f4804s = "";
        this.f4771G = new SortToken();
    }

    protected CallLogBean(Parcel parcel) {
        boolean z = true;
        this.f4787b = true;
        this.f4804s = "";
        this.f4771G = new SortToken();
        this.f4787b = parcel.readByte() != 0;
        this.f4788c = parcel.readByte() != 0;
        this.f4789d = parcel.readByte() != 0;
        this.f4790e = parcel.readString();
        this.f4791f = parcel.readInt();
        this.f4792g = parcel.readString();
        this.f4793h = parcel.readString();
        this.f4794i = parcel.readString();
        this.f4795j = parcel.readInt();
        this.f4796k = parcel.readInt();
        this.f4797l = parcel.readByte() != 0;
        this.f4798m = parcel.readByte() != 0;
        this.f4799n = parcel.readByte() != 0;
        this.f4800o = parcel.readString();
        this.f4801p = parcel.readInt();
        this.f4802q = parcel.readString();
        this.f4803r = parcel.readLong();
        this.f4804s = parcel.readString();
        this.f4805t = parcel.readString();
        this.f4806u = parcel.readString();
        this.f4807v = parcel.readString();
        this.f4808w = parcel.readString();
        this.f4809x = parcel.readString();
        this.f4810y = parcel.readString();
        this.f4811z = parcel.readString();
        this.f4765A = parcel.readString();
        this.f4766B = parcel.readString();
        this.f4767C = parcel.readByte() != 0;
        this.f4768D = parcel.readString();
        this.f4769E = parcel.readString();
        this.f4770F = parcel.readString();
        this.f4771G = (SortToken) parcel.readParcelable(SortToken.class.getClassLoader());
        this.f4772H = parcel.readString();
        this.f4773I = parcel.readString();
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.f4774J = z;
        this.f4775K = parcel.readLong();
        this.f4776L = parcel.readString();
        this.f4777M = parcel.readString();
        this.f4778N = parcel.readInt();
        this.f4779O = parcel.readString();
        this.f4780P = parcel.readString();
        this.f4781Q = parcel.readString();
        this.f4782R = parcel.readString();
        long readLong = parcel.readLong();
        this.f4783S = readLong == -1 ? null : new Date(readLong);
        this.f4784T = parcel.readString();
        this.f4785U = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f4786V = parcel.readString();
    }

    /* renamed from: A0 */
    public void m10106A0(SortToken sortToken) {
        this.f4771G = sortToken;
    }

    /* renamed from: B */
    public String m10105B() {
        return this.f4769E;
    }

    /* renamed from: B0 */
    public void m10104B0(String str) {
        this.f4765A = str;
    }

    /* renamed from: C */
    public SortToken m10103C() {
        return this.f4771G;
    }

    /* renamed from: C0 */
    public void m10102C0(String str) {
        this.f4804s = str;
    }

    /* renamed from: D */
    public String m10101D() {
        return this.f4765A;
    }

    /* renamed from: D0 */
    public void m10100D0(String str) {
        this.f4805t = str;
    }

    /* renamed from: E */
    public String m10099E() {
        return this.f4804s;
    }

    /* renamed from: E0 */
    public void m10098E0(long j) {
        this.f4775K = j;
    }

    /* renamed from: F */
    public String m10097F() {
        return this.f4805t;
    }

    /* renamed from: F0 */
    public void m10096F0(String str) {
        this.f4800o = str;
    }

    /* renamed from: G */
    public long m10095G() {
        return this.f4775K;
    }

    /* renamed from: G0 */
    public void m10094G0(int i) {
        this.f4795j = i;
    }

    /* renamed from: H */
    public String m10093H() {
        return this.f4800o;
    }

    /* renamed from: H0 */
    public void m10092H0(String str) {
        this.f4809x = str;
    }

    /* renamed from: I */
    public int m10091I() {
        return this.f4795j;
    }

    /* renamed from: I0 */
    public void m10090I0(String str) {
        this.f4781Q = str;
    }

    /* renamed from: J */
    public String m10089J() {
        return this.f4809x;
    }

    /* renamed from: J0 */
    public void m10088J0(boolean z) {
        this.f4774J = z;
    }

    /* renamed from: K */
    public String m10087K() {
        return this.f4781Q;
    }

    /* renamed from: L */
    public boolean m10086L() {
        return this.f4787b;
    }

    /* renamed from: M */
    public boolean m10085M() {
        return this.f4767C;
    }

    /* renamed from: N */
    public boolean m10084N() {
        return this.f4799n;
    }

    /* renamed from: O */
    public boolean m10083O() {
        return this.f4797l;
    }

    /* renamed from: P */
    public boolean m10082P() {
        return this.f4788c;
    }

    /* renamed from: Q */
    public boolean m10081Q() {
        return this.f4774J;
    }

    /* renamed from: R */
    public void m10080R(String str) {
        this.f4773I = str;
    }

    /* renamed from: S */
    public void m10079S(String str) {
        this.f4772H = str;
    }

    /* renamed from: T */
    public void m10078T(String str) {
        this.f4776L = str;
    }

    /* renamed from: U */
    public void m10077U(String str) {
        this.f4779O = str;
    }

    /* renamed from: V */
    public void m10076V(Date date) {
        this.f4783S = date;
    }

    /* renamed from: W */
    public void m10075W(String str) {
        this.f4777M = str;
    }

    /* renamed from: X */
    public void m10074X(String str) {
        this.f4766B = str;
    }

    /* renamed from: Y */
    public void m10073Y(boolean z) {
        this.f4787b = z;
    }

    /* renamed from: Z */
    public void m10072Z(boolean z) {
        this.f4767C = z;
    }

    /* renamed from: a */
    public String m10071a() {
        return this.f4773I;
    }

    /* renamed from: a0 */
    public void m10070a0(boolean z) {
        this.f4799n = z;
    }

    /* renamed from: b */
    public String m10069b() {
        return this.f4772H;
    }

    /* renamed from: b0 */
    public void m10068b0(String str) {
        this.f4794i = str;
    }

    /* renamed from: c */
    public String m10067c() {
        return this.f4779O;
    }

    /* renamed from: c0 */
    public void m10066c0(String str) {
        this.f4782R = str;
    }

    /* renamed from: d */
    public Date m10065d() {
        return this.f4783S;
    }

    /* renamed from: d0 */
    public void m10064d0(boolean z) {
        this.f4798m = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m10063e() {
        return this.f4777M;
    }

    /* renamed from: e0 */
    public void m10062e0(int i) {
        this.f4778N = i;
    }

    /* renamed from: f */
    public String m10061f() {
        return this.f4766B;
    }

    /* renamed from: f0 */
    public void m10060f0(String str) {
        this.f4780P = str;
    }

    /* renamed from: g */
    public String m10059g() {
        return this.f4794i;
    }

    /* renamed from: g0 */
    public void m10058g0(String str) {
        this.f4790e = str;
    }

    /* renamed from: h */
    public String m10057h() {
        return this.f4782R;
    }

    /* renamed from: h0 */
    public void m10056h0(String str) {
        this.f4806u = str;
    }

    /* renamed from: i */
    public String m10055i() {
        return this.f4806u;
    }

    /* renamed from: i0 */
    public void m10054i0(int i) {
        this.f4791f = i;
    }

    /* renamed from: j0 */
    public void m10053j0(Uri uri) {
        this.f4785U = uri;
    }

    /* renamed from: k0 */
    public void m10052k0(String str) {
        this.f4768D = str;
    }

    /* renamed from: l */
    public int m10051l() {
        return this.f4791f;
    }

    /* renamed from: l0 */
    public void m10050l0(String str) {
        this.f4792g = str;
    }

    /* renamed from: m */
    public String m10049m() {
        return this.f4768D;
    }

    /* renamed from: m0 */
    public void m10048m0(String str) {
        this.f4793h = str;
    }

    /* renamed from: n */
    public String m10047n() {
        return this.f4792g;
    }

    /* renamed from: n0 */
    public void m10046n0(String str) {
        this.f4784T = str;
    }

    /* renamed from: o */
    public String m10045o() {
        return this.f4793h;
    }

    /* renamed from: o0 */
    public void m10044o0(String str) {
        this.f4802q = str;
    }

    /* renamed from: p */
    public String m10043p() {
        return this.f4784T;
    }

    /* renamed from: p0 */
    public void m10042p0(String str) {
        this.f4807v = str;
    }

    /* renamed from: q */
    public String m10041q() {
        return this.f4802q;
    }

    /* renamed from: q0 */
    public void m10040q0(String str) {
        this.f4786V = str;
    }

    /* renamed from: r0 */
    public void m10039r0(int i) {
        this.f4796k = i;
    }

    /* renamed from: s */
    public String m10038s() {
        return this.f4786V;
    }

    /* renamed from: s0 */
    public void m10037s0(String str) {
        this.f4810y = str;
    }

    /* renamed from: t */
    public int m10036t() {
        return this.f4796k;
    }

    /* renamed from: t0 */
    public void m10035t0(String str) {
        this.f4811z = str;
    }

    public String toString() {
        return "CallLogBean{isCanSearch=" + this.f4787b + ", isSelect=" + this.f4788c + ", isUnkonwnNumber=" + this.f4789d + ", formatFriendly='" + this.f4790e + "', id=" + this.f4791f + ", name='" + this.f4792g + "', number='" + this.f4793h + "', date='" + this.f4794i + "', type=" + this.f4795j + ", raw_contact_id=" + this.f4796k + ", isSearched=" + this.f4797l + ", isExistPhoto=" + this.f4798m + ", isContact=" + this.f4799n + ", tempId='" + this.f4800o + "', count=" + this.f4801p + ", old_tel_number='" + this.f4802q + "', search_time=" + this.f4803r + ", t_p='" + this.f4804s + "', tel_number='" + this.f4805t + "', format_tel_number='" + this.f4806u + "', operator='" + this.f4807v + "', search_type='" + this.f4808w + "', type_label='" + this.f4809x + "', report_count='" + this.f4810y + "', search_name='" + this.f4811z + "', starred='" + this.f4765A + "', cached_formatted_number='" + this.f4766B + "', can_show_progress=" + this.f4767C + ", multiple_number='" + this.f4768D + "', sortLetters='" + this.f4769E + "', sortKey='" + this.f4770F + "', sortToken=" + this.f4771G + ", account_type='" + this.f4772H + "', account_name='" + this.f4773I + "', isWhatsAppCall=" + this.f4774J + ", telltime=" + this.f4775K + ", address='" + this.f4776L + "', belong_area='" + this.f4777M + "', faild_error_log=" + this.f4778N + ", avatar='" + this.f4779O + "', fb_avatar='" + this.f4780P + "', website='" + this.f4781Q + "', duration='" + this.f4782R + "', befor_date=" + this.f4783S + ", numberlabel='" + this.f4784T + "', lookuri=" + this.f4785U + ", photo_id='" + this.f4786V + "'}";
    }

    /* renamed from: u0 */
    public void m10034u0(long j) {
        this.f4803r = j;
    }

    /* renamed from: v */
    public String m10033v() {
        return this.f4810y;
    }

    /* renamed from: v0 */
    public void m10032v0(String str) {
        this.f4808w = str;
    }

    /* renamed from: w */
    public String m10031w() {
        return this.f4811z;
    }

    /* renamed from: w0 */
    public void m10030w0(boolean z) {
        this.f4797l = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByte(this.f4787b ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4788c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4789d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f4790e);
        parcel.writeInt(this.f4791f);
        parcel.writeString(this.f4792g);
        parcel.writeString(this.f4793h);
        parcel.writeString(this.f4794i);
        parcel.writeInt(this.f4795j);
        parcel.writeInt(this.f4796k);
        parcel.writeByte(this.f4797l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4798m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f4799n ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f4800o);
        parcel.writeInt(this.f4801p);
        parcel.writeString(this.f4802q);
        parcel.writeLong(this.f4803r);
        parcel.writeString(this.f4804s);
        parcel.writeString(this.f4805t);
        parcel.writeString(this.f4806u);
        parcel.writeString(this.f4807v);
        parcel.writeString(this.f4808w);
        parcel.writeString(this.f4809x);
        parcel.writeString(this.f4810y);
        parcel.writeString(this.f4811z);
        parcel.writeString(this.f4765A);
        parcel.writeString(this.f4766B);
        parcel.writeByte(this.f4767C ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f4768D);
        parcel.writeString(this.f4769E);
        parcel.writeString(this.f4770F);
        parcel.writeParcelable(this.f4771G, i);
        parcel.writeString(this.f4772H);
        parcel.writeString(this.f4773I);
        parcel.writeByte(this.f4774J ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f4775K);
        parcel.writeString(this.f4776L);
        parcel.writeString(this.f4777M);
        parcel.writeInt(this.f4778N);
        parcel.writeString(this.f4779O);
        parcel.writeString(this.f4780P);
        parcel.writeString(this.f4781Q);
        parcel.writeString(this.f4782R);
        Date date = this.f4783S;
        parcel.writeLong(date != null ? date.getTime() : -1L);
        parcel.writeString(this.f4784T);
        parcel.writeParcelable(this.f4785U, i);
        parcel.writeString(this.f4786V);
    }

    /* renamed from: x */
    public long m10029x() {
        return this.f4803r;
    }

    /* renamed from: x0 */
    public void m10028x0(boolean z) {
        this.f4788c = z;
    }

    /* renamed from: y */
    public String m10027y() {
        return this.f4808w;
    }

    /* renamed from: y0 */
    public void m10026y0(String str) {
        this.f4770F = str;
    }

    /* renamed from: z */
    public String m10025z() {
        return this.f4770F;
    }

    /* renamed from: z0 */
    public void m10024z0(String str) {
        this.f4769E = str;
    }
}
