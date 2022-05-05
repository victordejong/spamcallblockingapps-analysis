package gogolook.callgogolook2.vas.main.adapter;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p604y0.p608d.p609h.C14537a;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u001c\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018�� 22\u00020\u00012\u00020\u0002:\u00012B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005BG\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007¢\u0006\u0002\u0010\u0011J\t\u0010\u001f\u001a\u00020\u0007HÆ\u0003J\t\u0010 \u001a\u00020\tHÆ\u0003J\t\u0010!\u001a\u00020\tHÆ\u0003J\t\u0010\"\u001a\u00020\tHÆ\u0003J\t\u0010#\u001a\u00020\rHÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\tHÆ\u0003J\t\u0010&\u001a\u00020\u0007HÆ\u0003JY\u0010'\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\t2\b\b\u0002\u0010\u000f\u001a\u00020\t2\b\b\u0002\u0010\u0010\u001a\u00020\u0007HÆ\u0001J\b\u0010(\u001a\u00020\u0007H\u0016J\u0013\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,HÖ\u0003J\t\u0010-\u001a\u00020\u0007HÖ\u0001J\t\u0010.\u001a\u00020\tHÖ\u0001J\u0018\u0010/\u001a\u0002002\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0007H\u0016R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u000f\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0013R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0010\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001d¨\u00063"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/adapter/VasMessageItem;", "Lgogolook/callgogolook2/adapter/ViewData;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "type", "", "title", "", "content", "date", "price", "", "period", "number", "viewType", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;I)V", "getContent", "()Ljava/lang/String;", "getDate", "getNumber", "getPeriod", "getPrice", "()D", "priceDisplay", "getPriceDisplay", "getTitle", "getType", "()I", "getViewType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/adapter/VasMessageItem.class */
public final class VasMessageItem implements AbstractC12391a, Parcelable {
    public static final C5267a CREATOR = new C5267a(null);

    /* renamed from: a */
    public final String f12998a;

    /* renamed from: b */
    public final int f12999b;

    /* renamed from: c */
    public final String f13000c;

    /* renamed from: d */
    public final String f13001d;

    /* renamed from: e */
    public final String f13002e;

    /* renamed from: f */
    public final double f13003f;

    /* renamed from: g */
    public final String f13004g;

    /* renamed from: h */
    public final String f13005h;

    /* renamed from: i */
    public final int f13006i;

    /* renamed from: gogolook.callgogolook2.vas.main.adapter.VasMessageItem$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/vas/main/adapter/VasMessageItem$a.class */
    public static final class C5267a implements Parcelable.Creator<VasMessageItem> {
        public C5267a() {
        }

        public /* synthetic */ C5267a(C15145g gVar) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VasMessageItem createFromParcel(Parcel parcel) {
            C15149k.m377b(parcel, "parcel");
            return new VasMessageItem(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VasMessageItem[] newArray(int i) {
            return new VasMessageItem[i];
        }
    }

    public VasMessageItem(int i, String str, String str2, String str3, double d, String str4, String str5, int i2) {
        C15149k.m377b(str, "title");
        C15149k.m377b(str2, "content");
        C15149k.m377b(str3, "date");
        C15149k.m377b(str4, "period");
        C15149k.m377b(str5, "number");
        this.f12999b = i;
        this.f13000c = str;
        this.f13001d = str2;
        this.f13002e = str3;
        this.f13003f = d;
        this.f13004g = str4;
        this.f13005h = str5;
        this.f13006i = i2;
        String valueOf = String.valueOf(this.f13003f);
        this.f12998a = C14017g4.m2835A() ? C14966w.m721a(valueOf, '.', ',', false, 4, (Object) null) : valueOf;
    }

    public /* synthetic */ VasMessageItem(int i, String str, String str2, String str3, double d, String str4, String str5, int i2, int i3, C15145g gVar) {
        this(i, str, str2, str3, d, str4, str5, (i3 & 128) != 0 ? C14537a.f32487g.m1150d() : i2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VasMessageItem(android.os.Parcel r14) {
        /*
            r13 = this;
            r0 = r14
            java.lang.String r1 = "parcel"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r14
            int r0 = r0.readInt()
            r15 = r0
            r0 = r14
            java.lang.String r0 = r0.readString()
            r16 = r0
            r0 = r16
            java.lang.String r1 = "parcel.readString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r14
            java.lang.String r0 = r0.readString()
            r17 = r0
            r0 = r17
            java.lang.String r1 = "parcel.readString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r14
            java.lang.String r0 = r0.readString()
            r18 = r0
            r0 = r18
            java.lang.String r1 = "parcel.readString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r14
            double r0 = r0.readDouble()
            r19 = r0
            r0 = r14
            java.lang.String r0 = r0.readString()
            r21 = r0
            r0 = r21
            java.lang.String r1 = "parcel.readString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r14
            java.lang.String r0 = r0.readString()
            r14 = r0
            r0 = r14
            java.lang.String r1 = "parcel.readString()"
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r13
            r1 = r15
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r21
            r7 = r14
            r8 = 0
            r9 = 128(0x80, float:1.794E-43)
            r10 = 0
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.vas.main.adapter.VasMessageItem.<init>(android.os.Parcel):void");
    }

    /* renamed from: a */
    public final String m25949a() {
        return this.f13001d;
    }

    /* renamed from: b */
    public final String m25948b() {
        return this.f13002e;
    }

    /* renamed from: c */
    public final String m25947c() {
        return this.f13005h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VasMessageItem)) {
            return false;
        }
        VasMessageItem vasMessageItem = (VasMessageItem) obj;
        if (!(this.f12999b == vasMessageItem.f12999b) || !C15149k.m384a((Object) this.f13000c, (Object) vasMessageItem.f13000c) || !C15149k.m384a((Object) this.f13001d, (Object) vasMessageItem.f13001d) || !C15149k.m384a((Object) this.f13002e, (Object) vasMessageItem.f13002e) || Double.compare(this.f13003f, vasMessageItem.f13003f) != 0 || !C15149k.m384a((Object) this.f13004g, (Object) vasMessageItem.f13004g) || !C15149k.m384a((Object) this.f13005h, (Object) vasMessageItem.f13005h)) {
            return false;
        }
        return getViewType() == vasMessageItem.getViewType();
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f13006i;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        hashCode = Integer.valueOf(this.f12999b).hashCode();
        String str = this.f13000c;
        int i = 0;
        int hashCode4 = str != null ? str.hashCode() : 0;
        String str2 = this.f13001d;
        int hashCode5 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f13002e;
        int hashCode6 = str3 != null ? str3.hashCode() : 0;
        hashCode2 = Double.valueOf(this.f13003f).hashCode();
        String str4 = this.f13004g;
        int hashCode7 = str4 != null ? str4.hashCode() : 0;
        String str5 = this.f13005h;
        if (str5 != null) {
            i = str5.hashCode();
        }
        hashCode3 = Integer.valueOf(getViewType()).hashCode();
        return (((((((((((((hashCode * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode2) * 31) + hashCode7) * 31) + i) * 31) + hashCode3;
    }

    /* renamed from: q */
    public final String m25946q() {
        return this.f13004g;
    }

    /* renamed from: r */
    public final double m25945r() {
        return this.f13003f;
    }

    /* renamed from: s */
    public final String m25944s() {
        return this.f12998a;
    }

    /* renamed from: t */
    public final String m25943t() {
        return this.f13000c;
    }

    public String toString() {
        return "VasMessageItem(type=" + this.f12999b + ", title=" + this.f13000c + ", content=" + this.f13001d + ", date=" + this.f13002e + ", price=" + this.f13003f + ", period=" + this.f13004g + ", number=" + this.f13005h + ", viewType=" + getViewType() + ")";
    }

    /* renamed from: u */
    public final int m25942u() {
        return this.f12999b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C15149k.m377b(parcel, "parcel");
        parcel.writeInt(this.f12999b);
        parcel.writeString(this.f13000c);
        parcel.writeString(this.f13001d);
        parcel.writeString(this.f13002e);
        parcel.writeDouble(this.f13003f);
        parcel.writeString(this.f13004g);
        parcel.writeString(this.f13005h);
    }
}
