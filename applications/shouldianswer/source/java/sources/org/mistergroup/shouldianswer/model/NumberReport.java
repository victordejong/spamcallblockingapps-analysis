package org.mistergroup.shouldianswer.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Date;
import kotlin.p073a.C1594a;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.json.JSONObject;
import org.mistergroup.shouldianswer.utils.C3077ab;
import org.mistergroup.shouldianswer.utils.C3104j;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberReport.class */
public final class NumberReport implements Parcelable {

    /* renamed from: b */
    private int f6811b;

    /* renamed from: c */
    private String f6812c;

    /* renamed from: d */
    private String f6813d;

    /* renamed from: e */
    private String f6814e;

    /* renamed from: f */
    private EnumC2395ag f6815f;

    /* renamed from: g */
    private EnumC2439m f6816g;

    /* renamed from: h */
    private String f6817h;

    /* renamed from: i */
    private String f6818i;

    /* renamed from: j */
    private String f6819j;

    /* renamed from: k */
    private Date f6820k;

    /* renamed from: l */
    private boolean f6821l;

    /* renamed from: m */
    private boolean f6822m;

    /* renamed from: n */
    private boolean f6823n;

    /* renamed from: a */
    public static final C2374a f6810a = new C2374a(null);
    public static final Parcelable.Creator<NumberReport> CREATOR = new C2375b();

    /* renamed from: org.mistergroup.shouldianswer.model.NumberReport$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberReport$a.class */
    public static final class C2374a {
        private C2374a() {
        }

        public /* synthetic */ C2374a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.NumberReport$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberReport$b.class */
    public static final class C2375b implements Parcelable.Creator<NumberReport> {
        C2375b() {
        }

        /* renamed from: a */
        public NumberReport createFromParcel(Parcel parcel) {
            C1694h.m3117b(parcel, "in");
            return new NumberReport(parcel, null);
        }

        /* renamed from: a */
        public NumberReport[] newArray(int i) {
            return new NumberReport[i];
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.NumberReport$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberReport$c.class */
    public static final class C2376c {

        /* renamed from: a */
        private String f6824a;

        /* renamed from: b */
        private String f6825b;

        /* renamed from: c */
        private String f6826c;

        /* renamed from: d */
        private String f6827d;

        public C2376c() {
            this(null, null, null, null, 15, null);
        }

        public C2376c(String str, String str2, String str3, String str4) {
            C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            C1694h.m3117b(str2, "action");
            C1694h.m3117b(str3, "website");
            C1694h.m3117b(str4, "comment");
            this.f6824a = str;
            this.f6825b = str2;
            this.f6826c = str3;
            this.f6827d = str4;
        }

        public /* synthetic */ C2376c(String str, String str2, String str3, String str4, int i, C1691e c1691e) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
        }

        /* renamed from: a */
        public final String m1397a() {
            return this.f6824a;
        }

        /* renamed from: a */
        public final void m1396a(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f6824a = str;
        }

        /* renamed from: b */
        public final String m1395b() {
            return this.f6825b;
        }

        /* renamed from: b */
        public final void m1394b(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f6825b = str;
        }

        /* renamed from: c */
        public final String m1393c() {
            return this.f6826c;
        }

        /* renamed from: c */
        public final void m1392c(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f6826c = str;
        }

        /* renamed from: d */
        public final String m1391d() {
            return this.f6827d;
        }

        /* renamed from: d */
        public final void m1390d(String str) {
            C1694h.m3117b(str, "<set-?>");
            this.f6827d = str;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C2376c)) {
                    return false;
                }
                C2376c c2376c = (C2376c) obj;
                return C1694h.m3123a((Object) this.f6824a, (Object) c2376c.f6824a) && C1694h.m3123a((Object) this.f6825b, (Object) c2376c.f6825b) && C1694h.m3123a((Object) this.f6826c, (Object) c2376c.f6826c) && C1694h.m3123a((Object) this.f6827d, (Object) c2376c.f6827d);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f6824a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f6825b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f6826c;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f6827d;
            if (str4 != null) {
                i = str4.hashCode();
            }
            return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
        }

        public String toString() {
            return "CompanyInfo(name=" + this.f6824a + ", action=" + this.f6825b + ", website=" + this.f6826c + ", comment=" + this.f6827d + ")";
        }
    }

    public NumberReport() {
        this.f6812c = C3077ab.f8980a.m221a();
        this.f6815f = EnumC2395ag.UNKNOWN;
        this.f6816g = EnumC2439m.NONE;
        this.f6820k = new Date();
    }

    private NumberReport(Parcel parcel) {
        this.f6812c = C3077ab.f8980a.m221a();
        this.f6815f = EnumC2395ag.UNKNOWN;
        this.f6816g = EnumC2439m.NONE;
        this.f6820k = new Date();
        this.f6811b = parcel.readInt();
        String readString = parcel.readString();
        if (readString != null) {
            C1694h.m3122a((Object) readString, "it");
            this.f6812c = readString;
        }
        this.f6813d = parcel.readString();
        this.f6814e = parcel.readString();
        this.f6815f = EnumC2395ag.f6924e.m1314a(parcel.readInt());
        this.f6816g = EnumC2439m.f7139w.m1016a(parcel.readInt());
        this.f6817h = parcel.readString();
        this.f6818i = parcel.readString();
        this.f6819j = parcel.readString();
        this.f6820k = new Date(parcel.readLong());
        this.f6821l = parcel.readByte() != 0;
        this.f6822m = parcel.readByte() != 0;
        this.f6823n = parcel.readByte() != 0;
    }

    public /* synthetic */ NumberReport(Parcel parcel, C1691e c1691e) {
        this(parcel);
    }

    public NumberReport(NumberInfo numberInfo) {
        C1694h.m3117b(numberInfo, "numberInfo");
        this.f6812c = C3077ab.f8980a.m221a();
        this.f6815f = EnumC2395ag.UNKNOWN;
        this.f6816g = EnumC2439m.NONE;
        this.f6820k = new Date();
        m1401p();
        this.f6813d = numberInfo.m1479b();
        this.f6814e = numberInfo.m1465h();
        this.f6819j = numberInfo.m1475c();
    }

    /* renamed from: a */
    public final int m1430a() {
        return this.f6811b;
    }

    /* renamed from: a */
    public final void m1429a(int i) {
        this.f6811b = i;
    }

    /* renamed from: a */
    public final void m1428a(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6812c = str;
    }

    /* renamed from: a */
    public final void m1427a(Date date) {
        C1694h.m3117b(date, "<set-?>");
        this.f6820k = date;
    }

    /* renamed from: a */
    public final void m1426a(C2376c c2376c) {
        C1694h.m3117b(c2376c, "companyInfo");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("comment", c2376c.m1391d());
        jSONObject.put("companyName", c2376c.m1397a());
        jSONObject.put("companyAction", c2376c.m1395b());
        jSONObject.put("companyWebsite", c2376c.m1393c());
        this.f6818i = jSONObject.toString();
    }

    /* renamed from: a */
    public final void m1425a(EnumC2395ag enumC2395ag) {
        C1694h.m3117b(enumC2395ag, "<set-?>");
        this.f6815f = enumC2395ag;
    }

    /* renamed from: a */
    public final void m1424a(EnumC2439m enumC2439m) {
        C1694h.m3117b(enumC2439m, "<set-?>");
        this.f6816g = enumC2439m;
    }

    /* renamed from: a */
    public final void m1423a(boolean z) {
        this.f6821l = z;
    }

    /* renamed from: b */
    public final String m1422b() {
        return this.f6812c;
    }

    /* renamed from: b */
    public final void m1421b(String str) {
        this.f6813d = str;
    }

    /* renamed from: b */
    public final void m1420b(boolean z) {
        this.f6822m = z;
    }

    /* renamed from: c */
    public final String m1419c() {
        return this.f6813d;
    }

    /* renamed from: c */
    public final void m1418c(String str) {
        this.f6814e = str;
    }

    /* renamed from: c */
    public final void m1417c(boolean z) {
        this.f6823n = z;
    }

    /* renamed from: d */
    public final String m1416d() {
        return this.f6814e;
    }

    /* renamed from: d */
    public final void m1415d(String str) {
        this.f6817h = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final EnumC2395ag m1414e() {
        return this.f6815f;
    }

    /* renamed from: e */
    public final void m1413e(String str) {
        this.f6818i = str;
    }

    /* renamed from: f */
    public final EnumC2439m m1412f() {
        return this.f6816g;
    }

    /* renamed from: f */
    public final void m1411f(String str) {
        this.f6819j = str;
    }

    /* renamed from: g */
    public final String m1410g() {
        return this.f6817h;
    }

    /* renamed from: h */
    public final String m1409h() {
        return this.f6818i;
    }

    /* renamed from: i */
    public final String m1408i() {
        return this.f6819j;
    }

    /* renamed from: j */
    public final Date m1407j() {
        return this.f6820k;
    }

    /* renamed from: k */
    public final boolean m1406k() {
        return this.f6821l;
    }

    /* renamed from: l */
    public final boolean m1405l() {
        return this.f6822m;
    }

    /* renamed from: m */
    public final boolean m1404m() {
        return this.f6823n;
    }

    /* renamed from: n */
    public final String m1403n() {
        if (C1594a.m3209a(EnumC2439m.f7139w.m1017a(), this.f6816g)) {
            C2376c m1402o = m1402o();
            return m1402o != null ? m1402o.m1391d() : null;
        }
        return this.f6818i;
    }

    /* renamed from: o */
    public final C2376c m1402o() {
        try {
            if (this.f6818i == null) {
                return null;
            }
            String str = this.f6818i;
            if (str == null) {
                C1694h.m3124a();
            }
            if (!(str.length() > 0)) {
                return null;
            }
            C2376c c2376c = new C2376c(null, null, null, null, 15, null);
            JSONObject jSONObject = new JSONObject(this.f6818i);
            if (jSONObject.has("comment")) {
                String string = jSONObject.getString("comment");
                C1694h.m3122a((Object) string, "json.getString(\"comment\")");
                c2376c.m1390d(string);
            }
            if (jSONObject.has("companyName")) {
                String string2 = jSONObject.getString("companyName");
                C1694h.m3122a((Object) string2, "json.getString(\"companyName\")");
                c2376c.m1396a(string2);
            }
            if (jSONObject.has("companyAction")) {
                String string3 = jSONObject.getString("companyAction");
                C1694h.m3122a((Object) string3, "json.getString(\"companyAction\")");
                c2376c.m1394b(string3);
            }
            if (jSONObject.has("companyWebsite")) {
                String string4 = jSONObject.getString("companyWebsite");
                C1694h.m3122a((Object) string4, "json.getString(\"companyWebsite\")");
                c2376c.m1392c(string4);
            }
            return c2376c;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: p */
    public final void m1401p() {
    }

    /* renamed from: q */
    public final NumberInfo m1400q() {
        String str = this.f6813d;
        String str2 = this.f6819j;
        if (str2 == null) {
            C1694h.m3124a();
        }
        return new NumberInfo(str, str2, EnumC2436k.UNKNOWN, false, 8, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C1694h.m3117b(parcel, "parcel");
        parcel.writeInt(this.f6811b);
        parcel.writeString(this.f6812c);
        parcel.writeString(this.f6813d);
        parcel.writeString(this.f6814e);
        parcel.writeInt(this.f6815f.m1315a());
        parcel.writeInt(this.f6816g.m1019a());
        parcel.writeString(this.f6817h);
        parcel.writeString(this.f6818i);
        parcel.writeString(this.f6819j);
        parcel.writeLong(this.f6820k.getTime());
        parcel.writeByte(this.f6821l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6822m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f6823n ? (byte) 1 : (byte) 0);
    }
}
