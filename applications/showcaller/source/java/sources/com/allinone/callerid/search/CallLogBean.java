package com.allinone.callerid.search;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.allinone.callerid.customview.SortToken;
import com.allinone.callerid.util.p205t9.T9MatchInfo;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/search/CallLogBean.class */
public class CallLogBean implements Parcelable {
    public static final Parcelable.Creator<CallLogBean> CREATOR = new C3576a();

    /* renamed from: A */
    private boolean f11478A;

    /* renamed from: B */
    public String f11479B;

    /* renamed from: C */
    public String f11480C;

    /* renamed from: D */
    private String f11481D;

    /* renamed from: E */
    private String f11482E;

    /* renamed from: F */
    private boolean f11483F;

    /* renamed from: G */
    private boolean f11484G;

    /* renamed from: H */
    private String f11485H;

    /* renamed from: I */
    private String f11486I;

    /* renamed from: J */
    private String f11487J;

    /* renamed from: K */
    private String f11488K;

    /* renamed from: L */
    private String f11489L;

    /* renamed from: M */
    private String f11490M;

    /* renamed from: N */
    private String f11491N;

    /* renamed from: O */
    private String f11492O;

    /* renamed from: P */
    private String f11493P;

    /* renamed from: Q */
    private String f11494Q;

    /* renamed from: R */
    private String f11495R;

    /* renamed from: S */
    private String f11496S;

    /* renamed from: T */
    private int f11497T;

    /* renamed from: U */
    private String f11498U;

    /* renamed from: V */
    private String f11499V;

    /* renamed from: W */
    private String f11500W;

    /* renamed from: X */
    private String f11501X;

    /* renamed from: Y */
    private Date f11502Y;

    /* renamed from: Z */
    private String f11503Z;

    /* renamed from: a0 */
    private Uri f11504a0;

    /* renamed from: b0 */
    public String f11505b0;

    /* renamed from: c0 */
    public String f11506c0;

    /* renamed from: d */
    private int f11507d;

    /* renamed from: d0 */
    public String f11508d0;

    /* renamed from: e */
    private String f11509e;

    /* renamed from: e0 */
    public boolean f11510e0;

    /* renamed from: f */
    private String f11511f;

    /* renamed from: f0 */
    public T9MatchInfo f11512f0;

    /* renamed from: g */
    private String f11513g;

    /* renamed from: g0 */
    public T9MatchInfo f11514g0;

    /* renamed from: h */
    private String f11515h;

    /* renamed from: h0 */
    public SortToken f11516h0;

    /* renamed from: i */
    private int f11517i;

    /* renamed from: i0 */
    public String f11518i0;

    /* renamed from: j */
    private int f11519j;

    /* renamed from: j0 */
    public String f11520j0;

    /* renamed from: k */
    private boolean f11521k;

    /* renamed from: k0 */
    public boolean f11522k0;

    /* renamed from: l */
    private String f11523l;

    /* renamed from: l0 */
    private boolean f11524l0;

    /* renamed from: m */
    private String f11525m;

    /* renamed from: n */
    private boolean f11526n;

    /* renamed from: o */
    private boolean f11527o;

    /* renamed from: p */
    private boolean f11528p;

    /* renamed from: q */
    private String f11529q;

    /* renamed from: r */
    private int f11530r;

    /* renamed from: s */
    private String f11531s;

    /* renamed from: t */
    public String f11532t;

    /* renamed from: u */
    public String f11533u;

    /* renamed from: v */
    private String f11534v;

    /* renamed from: w */
    private String f11535w;

    /* renamed from: x */
    private String f11536x;

    /* renamed from: y */
    private String f11537y;

    /* renamed from: z */
    private long f11538z;

    /* renamed from: com.allinone.callerid.search.CallLogBean$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/search/CallLogBean$a.class */
    class C3576a implements Parcelable.Creator<CallLogBean> {
        C3576a() {
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
        this.f11521k = false;
        this.f11483F = true;
        this.f11494Q = "";
        this.f11516h0 = new SortToken();
    }

    protected CallLogBean(Parcel parcel) {
        this.f11521k = false;
        this.f11483F = true;
        this.f11494Q = "";
        this.f11516h0 = new SortToken();
        this.f11507d = parcel.readInt();
        this.f11509e = parcel.readString();
        this.f11511f = parcel.readString();
        this.f11513g = parcel.readString();
        this.f11515h = parcel.readString();
        this.f11517i = parcel.readInt();
        this.f11519j = parcel.readInt();
        this.f11521k = parcel.readByte() != 0;
        this.f11523l = parcel.readString();
        this.f11525m = parcel.readString();
        this.f11526n = parcel.readByte() != 0;
        this.f11527o = parcel.readByte() != 0;
        this.f11528p = parcel.readByte() != 0;
        this.f11529q = parcel.readString();
        this.f11530r = parcel.readInt();
        this.f11531s = parcel.readString();
        this.f11532t = parcel.readString();
        this.f11533u = parcel.readString();
        this.f11534v = parcel.readString();
        this.f11535w = parcel.readString();
        this.f11536x = parcel.readString();
        this.f11537y = parcel.readString();
        this.f11538z = parcel.readLong();
        this.f11478A = parcel.readByte() != 0;
        this.f11479B = parcel.readString();
        this.f11480C = parcel.readString();
        this.f11481D = parcel.readString();
        this.f11482E = parcel.readString();
        this.f11483F = parcel.readByte() != 0;
        this.f11484G = parcel.readByte() != 0;
        this.f11485H = parcel.readString();
        this.f11486I = parcel.readString();
        this.f11487J = parcel.readString();
        this.f11488K = parcel.readString();
        this.f11489L = parcel.readString();
        this.f11490M = parcel.readString();
        this.f11491N = parcel.readString();
        this.f11492O = parcel.readString();
        this.f11493P = parcel.readString();
        this.f11494Q = parcel.readString();
        this.f11495R = parcel.readString();
        this.f11496S = parcel.readString();
        this.f11497T = parcel.readInt();
        this.f11498U = parcel.readString();
        this.f11499V = parcel.readString();
        this.f11500W = parcel.readString();
        this.f11501X = parcel.readString();
        long readLong = parcel.readLong();
        this.f11502Y = readLong == -1 ? null : new Date(readLong);
        this.f11503Z = parcel.readString();
        this.f11504a0 = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.f11505b0 = parcel.readString();
        this.f11506c0 = parcel.readString();
        this.f11508d0 = parcel.readString();
        this.f11510e0 = parcel.readByte() != 0;
        this.f11512f0 = (T9MatchInfo) parcel.readParcelable(T9MatchInfo.class.getClassLoader());
        this.f11514g0 = (T9MatchInfo) parcel.readParcelable(T9MatchInfo.class.getClassLoader());
        this.f11516h0 = (SortToken) parcel.readParcelable(SortToken.class.getClassLoader());
        this.f11518i0 = parcel.readString();
        this.f11520j0 = parcel.readString();
        this.f11522k0 = parcel.readByte() != 0;
        this.f11524l0 = parcel.readByte() != 0;
    }

    /* renamed from: A */
    public long m24960A() {
        return this.f11538z;
    }

    /* renamed from: A0 */
    public void m24959A0(Uri uri) {
        this.f11504a0 = uri;
    }

    /* renamed from: B */
    public String m24958B() {
        return this.f11488K;
    }

    /* renamed from: B0 */
    public void m24957B0(String str) {
        this.f11513g = str;
    }

    /* renamed from: C */
    public String m24956C() {
        return this.f11523l;
    }

    /* renamed from: C0 */
    public void m24955C0(String str) {
        this.f11509e = str;
    }

    /* renamed from: D */
    public String m24954D() {
        return this.f11532t;
    }

    /* renamed from: D0 */
    public void m24953D0(String str) {
        this.f11535w = str;
    }

    /* renamed from: E */
    public String m24952E() {
        return this.f11493P;
    }

    /* renamed from: E0 */
    public void m24951E0(String str) {
        this.f11511f = str;
    }

    /* renamed from: F */
    public String m24950F() {
        return this.f11479B;
    }

    /* renamed from: F0 */
    public void m24949F0(String str) {
        this.f11503Z = str;
    }

    /* renamed from: G */
    public String m24948G() {
        return this.f11480C;
    }

    /* renamed from: G0 */
    public void m24947G0(String str) {
        this.f11531s = str;
    }

    /* renamed from: H */
    public String m24946H() {
        return this.f11481D;
    }

    /* renamed from: H0 */
    public void m24945H0(String str) {
        this.f11487J = str;
    }

    /* renamed from: I0 */
    public void m24944I0(String str) {
        this.f11505b0 = str;
    }

    /* renamed from: J */
    public String m24943J() {
        return this.f11494Q;
    }

    /* renamed from: J0 */
    public void m24942J0(int i) {
        this.f11519j = i;
    }

    /* renamed from: K */
    public String m24941K() {
        return this.f11485H;
    }

    /* renamed from: K0 */
    public void m24940K0(String str) {
        this.f11508d0 = str;
    }

    /* renamed from: L0 */
    public void m24939L0(String str) {
        this.f11491N = str;
    }

    /* renamed from: M */
    public String m24938M() {
        return this.f11529q;
    }

    /* renamed from: M0 */
    public void m24937M0(String str) {
        this.f11492O = str;
    }

    /* renamed from: N */
    public String m24936N() {
        return this.f11525m;
    }

    /* renamed from: N0 */
    public void m24935N0(long j) {
        this.f11538z = j;
    }

    /* renamed from: O */
    public int m24934O() {
        return this.f11517i;
    }

    /* renamed from: O0 */
    public void m24933O0(String str) {
        this.f11488K = str;
    }

    /* renamed from: P */
    public String m24932P() {
        return this.f11489L;
    }

    /* renamed from: P0 */
    public void m24931P0(boolean z) {
        this.f11526n = z;
    }

    /* renamed from: Q0 */
    public void m24930Q0(boolean z) {
        this.f11524l0 = z;
    }

    /* renamed from: R0 */
    public void m24929R0(boolean z) {
        this.f11521k = z;
    }

    /* renamed from: S */
    public String m24928S() {
        return this.f11490M;
    }

    /* renamed from: S0 */
    public void m24927S0(String str) {
        this.f11523l = str;
    }

    /* renamed from: T */
    public String m24926T() {
        return this.f11500W;
    }

    /* renamed from: T0 */
    public void m24925T0(String str) {
        this.f11533u = str;
    }

    /* renamed from: U0 */
    public void m24924U0(String str) {
        this.f11532t = str;
    }

    /* renamed from: V */
    public boolean m24923V() {
        return this.f11483F;
    }

    /* renamed from: V0 */
    public void m24922V0(String str) {
        this.f11493P = str;
    }

    /* renamed from: W0 */
    public void m24921W0(String str) {
        this.f11479B = str;
    }

    /* renamed from: X */
    public boolean m24920X() {
        return this.f11510e0;
    }

    /* renamed from: X0 */
    public void m24919X0(String str) {
        this.f11480C = str;
    }

    /* renamed from: Y */
    public boolean m24918Y() {
        return this.f11528p;
    }

    /* renamed from: Y0 */
    public void m24917Y0(String str) {
        this.f11481D = str;
    }

    /* renamed from: Z */
    public boolean m24916Z() {
        return this.f11526n;
    }

    /* renamed from: Z0 */
    public void m24915Z0(String str) {
        this.f11494Q = str;
    }

    /* renamed from: a */
    public String m24914a() {
        return this.f11498U;
    }

    /* renamed from: a1 */
    public void m24913a1(String str) {
        this.f11485H = str;
    }

    /* renamed from: b */
    public Date m24912b() {
        return this.f11502Y;
    }

    /* renamed from: b0 */
    public boolean m24911b0() {
        return this.f11524l0;
    }

    /* renamed from: b1 */
    public void m24910b1(String str) {
        this.f11529q = str;
    }

    /* renamed from: c */
    public String m24909c() {
        return this.f11496S;
    }

    /* renamed from: c0 */
    public boolean m24908c0() {
        return this.f11521k;
    }

    /* renamed from: c1 */
    public void m24907c1(String str) {
        this.f11525m = str;
    }

    /* renamed from: d */
    public String m24906d() {
        return this.f11520j0;
    }

    /* renamed from: d0 */
    public void m24905d0(String str) {
        this.f11495R = str;
    }

    /* renamed from: d1 */
    public void m24904d1(int i) {
        this.f11517i = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public String m24903e() {
        return this.f11506c0;
    }

    /* renamed from: e0 */
    public void m24902e0(String str) {
        this.f11498U = str;
    }

    /* renamed from: e1 */
    public void m24901e1(String str) {
        this.f11489L = str;
    }

    /* renamed from: f */
    public int m24900f() {
        return this.f11530r;
    }

    /* renamed from: f0 */
    public void m24899f0(Date date) {
        this.f11502Y = date;
    }

    /* renamed from: f1 */
    public void m24898f1(String str) {
        this.f11490M = str;
    }

    /* renamed from: g */
    public String m24897g() {
        return this.f11515h;
    }

    /* renamed from: g0 */
    public void m24896g0(String str) {
        this.f11496S = str;
    }

    /* renamed from: g1 */
    public void m24895g1(String str) {
        this.f11534v = str;
    }

    /* renamed from: h */
    public String m24894h() {
        return this.f11501X;
    }

    /* renamed from: h1 */
    public void m24893h1(boolean z) {
        this.f11484G = z;
    }

    /* renamed from: i */
    public String m24892i() {
        return this.f11486I;
    }

    /* renamed from: i1 */
    public void m24891i1(String str) {
        this.f11500W = str;
    }

    /* renamed from: j */
    public int m24890j() {
        return this.f11507d;
    }

    /* renamed from: j0 */
    public void m24889j0(String str) {
        this.f11520j0 = str;
    }

    /* renamed from: k */
    public String m24888k() {
        return this.f11482E;
    }

    /* renamed from: k0 */
    public void m24887k0(boolean z) {
        this.f11483F = z;
    }

    /* renamed from: l */
    public String m24886l() {
        return this.f11513g;
    }

    /* renamed from: l0 */
    public void m24885l0(boolean z) {
        this.f11510e0 = z;
    }

    /* renamed from: m */
    public String m24884m() {
        return this.f11509e;
    }

    /* renamed from: m0 */
    public void m24883m0(boolean z) {
        this.f11522k0 = z;
    }

    /* renamed from: n */
    public String m24882n() {
        return this.f11535w;
    }

    /* renamed from: n0 */
    public void m24881n0(String str) {
        this.f11506c0 = str;
    }

    /* renamed from: o */
    public String m24880o() {
        return this.f11511f;
    }

    /* renamed from: o0 */
    public void m24879o0(String str) {
        this.f11536x = str;
    }

    /* renamed from: p0 */
    public void m24878p0(boolean z) {
        this.f11528p = z;
    }

    /* renamed from: q0 */
    public void m24877q0(int i) {
        this.f11530r = i;
    }

    /* renamed from: r */
    public String m24876r() {
        return this.f11503Z;
    }

    /* renamed from: r0 */
    public void m24875r0(String str) {
        this.f11537y = str;
    }

    /* renamed from: s */
    public String m24874s() {
        return this.f11531s;
    }

    /* renamed from: s0 */
    public void m24873s0(String str) {
        this.f11515h = str;
    }

    /* renamed from: t */
    public String m24872t() {
        return this.f11487J;
    }

    /* renamed from: t0 */
    public void m24871t0(String str) {
        this.f11501X = str;
    }

    public String toString() {
        return "CallLogBean{id=" + this.f11507d + ", name='" + this.f11509e + "', number='" + this.f11511f + "', multiple_number='" + this.f11513g + "', date='" + this.f11515h + "', type=" + this.f11517i + ", raw_contact_id=" + this.f11519j + ", isShowRecord=" + this.f11521k + ", slotId='" + this.f11523l + "', tempSlotId='" + this.f11525m + "', isSearched=" + this.f11526n + ", isExistPhoto=" + this.f11527o + ", isContact=" + this.f11528p + ", tempId='" + this.f11529q + "', count=" + this.f11530r + ", old_tel_number='" + this.f11531s + "', sortLetters='" + this.f11532t + "', sortKey='" + this.f11533u + "', type_tags='" + this.f11534v + "', name_tags='" + this.f11535w + "', comment_tags='" + this.f11536x + "', country='" + this.f11537y + "', search_time=" + this.f11538z + ", showad=" + this.f11478A + ", subtype='" + this.f11479B + "', subtype_cc='" + this.f11480C + "', subtype_pdt='" + this.f11481D + "', keyword='" + this.f11482E + "', isCanSearch=" + this.f11483F + ", isUnkonwnNumber=" + this.f11484G + ", tel_number='" + this.f11485H + "', format_tel_number='" + this.f11486I + "', operator='" + this.f11487J + "', search_type='" + this.f11488K + "', type_label='" + this.f11489L + "', type_label_id='" + this.f11490M + "', report_count='" + this.f11491N + "', search_name='" + this.f11492O + "', starred='" + this.f11493P + "', t_p='" + this.f11494Q + "', address='" + this.f11495R + "', belong_area='" + this.f11496S + "', faild_error_log=" + this.f11497T + ", avatar='" + this.f11498U + "', fb_avatar='" + this.f11499V + "', website='" + this.f11500W + "', duration='" + this.f11501X + "', befor_date=" + this.f11502Y + ", numberlabel='" + this.f11503Z + "', lookuri=" + this.f11504a0 + ", photo_id='" + this.f11505b0 + "', comment_count='" + this.f11506c0 + "', recorder_count='" + this.f11508d0 + "', can_search_commentcount=" + this.f11510e0 + ", nameMatchInfo=" + this.f11512f0 + ", phoneNumberMatchInfo=" + this.f11514g0 + ", sortToken=" + this.f11516h0 + ", t9Key='" + this.f11518i0 + "', cached_formatted_number='" + this.f11520j0 + "', can_show_progress=" + this.f11522k0 + ", isSelect=" + this.f11524l0 + '}';
    }

    /* renamed from: u */
    public String m24870u() {
        return this.f11505b0;
    }

    /* renamed from: u0 */
    public void m24869u0(boolean z) {
        this.f11527o = z;
    }

    /* renamed from: v */
    public int m24868v() {
        return this.f11519j;
    }

    /* renamed from: v0 */
    public void m24867v0(int i) {
        this.f11497T = i;
    }

    /* renamed from: w */
    public String m24866w() {
        return this.f11508d0;
    }

    /* renamed from: w0 */
    public void m24865w0(String str) {
        this.f11499V = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r1v94 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f11507d);
        parcel.writeString(this.f11509e);
        parcel.writeString(this.f11511f);
        parcel.writeString(this.f11513g);
        parcel.writeString(this.f11515h);
        parcel.writeInt(this.f11517i);
        parcel.writeInt(this.f11519j);
        parcel.writeByte(this.f11521k ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11523l);
        parcel.writeString(this.f11525m);
        parcel.writeByte(this.f11526n ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f11527o ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f11528p ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11529q);
        parcel.writeInt(this.f11530r);
        parcel.writeString(this.f11531s);
        parcel.writeString(this.f11532t);
        parcel.writeString(this.f11533u);
        parcel.writeString(this.f11534v);
        parcel.writeString(this.f11535w);
        parcel.writeString(this.f11536x);
        parcel.writeString(this.f11537y);
        parcel.writeLong(this.f11538z);
        parcel.writeByte(this.f11478A ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11479B);
        parcel.writeString(this.f11480C);
        parcel.writeString(this.f11481D);
        parcel.writeString(this.f11482E);
        parcel.writeByte(this.f11483F ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f11484G ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f11485H);
        parcel.writeString(this.f11486I);
        parcel.writeString(this.f11487J);
        parcel.writeString(this.f11488K);
        parcel.writeString(this.f11489L);
        parcel.writeString(this.f11490M);
        parcel.writeString(this.f11491N);
        parcel.writeString(this.f11492O);
        parcel.writeString(this.f11493P);
        parcel.writeString(this.f11494Q);
        parcel.writeString(this.f11495R);
        parcel.writeString(this.f11496S);
        parcel.writeInt(this.f11497T);
        parcel.writeString(this.f11498U);
        parcel.writeString(this.f11499V);
        parcel.writeString(this.f11500W);
        parcel.writeString(this.f11501X);
        Date date = this.f11502Y;
        parcel.writeLong((date != null ? date.getTime() : true) == true ? 1L : 0L);
        parcel.writeString(this.f11503Z);
        parcel.writeParcelable(this.f11504a0, i);
        parcel.writeString(this.f11505b0);
        parcel.writeString(this.f11506c0);
        parcel.writeString(this.f11508d0);
        parcel.writeByte(this.f11510e0 ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.f11512f0, i);
        parcel.writeParcelable(this.f11514g0, i);
        parcel.writeParcelable(this.f11516h0, i);
        parcel.writeString(this.f11518i0);
        parcel.writeString(this.f11520j0);
        parcel.writeByte(this.f11522k0 ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f11524l0 ? (byte) 1 : (byte) 0);
    }

    /* renamed from: x */
    public String m24864x() {
        return this.f11491N;
    }

    /* renamed from: x0 */
    public void m24863x0(String str) {
        this.f11486I = str;
    }

    /* renamed from: y0 */
    public void m24862y0(int i) {
        this.f11507d = i;
    }

    /* renamed from: z */
    public String m24861z() {
        return this.f11492O;
    }

    /* renamed from: z0 */
    public void m24860z0(String str) {
        this.f11482E = str;
    }
}
