package com.truecaller.ads.leadgen.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\b\u0007\u0018��2\u00020\u0001BW\u0012\u0006\u0010\u001e\u001a\u00020\f\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\f\u0012\u0006\u0010#\u001a\u00020\f\u0012\u0006\u0010\"\u001a\u00020\f\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\f\u0012\b\u0010!\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR$\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001e\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0019\u001a\u0004\b\u001d\u0010\u001bR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0019\u001a\u0004\b\u0013\u0010\u001bR\u001e\u0010!\u001a\u0004\u0018\u00010\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b \u0010\u0019\u001a\u0004\b\r\u0010\u001bR\u001c\u0010\"\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0019\u001a\u0004\b \u0010\u001bR\u001c\u0010#\u001a\u00020\f8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u0018\u0010\u001b¨\u0006&"}, d2 = {"Lcom/truecaller/ads/leadgen/dto/LeadgenInput;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "", "g", "Ljava/util/List;", AbstractC2405c.f7629a, "()Ljava/util/List;", "options", "", "h", "Ljava/lang/Boolean;", "d", "()Ljava/lang/Boolean;", "showAutoComplete", "e", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "hint", C22021b.f61237c, AnalyticsConstants.KEY, "value", "f", "validate", "type", "title", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenInput.class */
public final class LeadgenInput implements Parcelable {
    public static final Parcelable.Creator<LeadgenInput> CREATOR = new C2822a();
    @b(AnalyticsConstants.KEY)

    /* renamed from: a */
    private final String f9864a;
    @b("value")

    /* renamed from: b */
    private final String f9865b;
    @b("title")

    /* renamed from: c */
    private final String f9866c;
    @b("type")

    /* renamed from: d */
    private final String f9867d;
    @b("hint")

    /* renamed from: e */
    private final String f9868e;
    @b("validate")

    /* renamed from: f */
    private final String f9869f;
    @b("options")

    /* renamed from: g */
    private final List<String> f9870g;
    @b("autoComplete")

    /* renamed from: h */
    private final Boolean f9871h;

    /* renamed from: com.truecaller.ads.leadgen.dto.LeadgenInput$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenInput$a.class */
    public static final class C2822a implements Parcelable.Creator<LeadgenInput> {
        @Override // android.os.Parcelable.Creator
        public LeadgenInput createFromParcel(Parcel parcel) {
            Boolean bool;
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            String readString4 = parcel.readString();
            String readString5 = parcel.readString();
            String readString6 = parcel.readString();
            ArrayList<String> createStringArrayList = parcel.createStringArrayList();
            if (parcel.readInt() != 0) {
                bool = Boolean.valueOf(parcel.readInt() != 0);
            } else {
                bool = null;
            }
            return new LeadgenInput(readString, readString2, readString3, readString4, readString5, readString6, createStringArrayList, bool);
        }

        @Override // android.os.Parcelable.Creator
        public LeadgenInput[] newArray(int i) {
            return new LeadgenInput[i];
        }
    }

    public LeadgenInput(String str, String str2, String str3, String str4, String str5, String str6, List<String> list, Boolean bool) {
        C22128a.m8703I0(str, AnalyticsConstants.KEY, str3, "title", str4, "type");
        this.f9864a = str;
        this.f9865b = str2;
        this.f9866c = str3;
        this.f9867d = str4;
        this.f9868e = str5;
        this.f9869f = str6;
        this.f9870g = list;
        this.f9871h = bool;
    }

    /* renamed from: a */
    public final String m35979a() {
        return this.f9868e;
    }

    /* renamed from: b */
    public final String m35978b() {
        return this.f9864a;
    }

    /* renamed from: c */
    public final List<String> m35977c() {
        return this.f9870g;
    }

    /* renamed from: d */
    public final Boolean m35976d() {
        return this.f9871h;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final String m35975e() {
        return this.f9866c;
    }

    /* renamed from: f */
    public final String m35974f() {
        return this.f9867d;
    }

    /* renamed from: g */
    public final String m35973g() {
        return this.f9869f;
    }

    /* renamed from: h */
    public final String m35972h() {
        return this.f9865b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        boolean z;
        l.e(parcel, "parcel");
        parcel.writeString(this.f9864a);
        parcel.writeString(this.f9865b);
        parcel.writeString(this.f9866c);
        parcel.writeString(this.f9867d);
        parcel.writeString(this.f9868e);
        parcel.writeString(this.f9869f);
        parcel.writeStringList(this.f9870g);
        Boolean bool = this.f9871h;
        if (bool != null) {
            parcel.writeInt(1);
            z = bool.booleanValue();
        } else {
            z = 0;
        }
        parcel.writeInt(z);
    }
}
