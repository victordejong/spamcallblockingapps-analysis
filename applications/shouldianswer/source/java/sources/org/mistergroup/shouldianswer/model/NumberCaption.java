package org.mistergroup.shouldianswer.model;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberCaption.class */
public final class NumberCaption implements Parcelable {

    /* renamed from: b */
    private int f6641b;

    /* renamed from: c */
    private String f6642c;

    /* renamed from: d */
    private String f6643d;

    /* renamed from: e */
    private String f6644e;

    /* renamed from: f */
    private String f6645f;

    /* renamed from: g */
    private boolean f6646g;

    /* renamed from: a */
    public static final C2345a f6640a = new C2345a(null);
    public static final Parcelable.Creator<NumberCaption> CREATOR = new C2346b();

    /* renamed from: org.mistergroup.shouldianswer.model.NumberCaption$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberCaption$a.class */
    public static final class C2345a {
        private C2345a() {
        }

        public /* synthetic */ C2345a(C1691e c1691e) {
            this();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.model.NumberCaption$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/NumberCaption$b.class */
    public static final class C2346b implements Parcelable.Creator<NumberCaption> {
        C2346b() {
        }

        /* renamed from: a */
        public NumberCaption createFromParcel(Parcel parcel) {
            C1694h.m3117b(parcel, "in");
            return new NumberCaption(parcel, null);
        }

        /* renamed from: a */
        public NumberCaption[] newArray(int i) {
            return new NumberCaption[i];
        }
    }

    public NumberCaption() {
        this.f6642c = "";
        this.f6643d = "";
        this.f6644e = "";
        this.f6645f = "";
    }

    private NumberCaption(Parcel parcel) {
        this.f6642c = "";
        this.f6643d = "";
        this.f6644e = "";
        this.f6645f = "";
        this.f6641b = parcel.readInt();
        this.f6642c = String.valueOf(parcel.readString());
        this.f6643d = String.valueOf(parcel.readString());
        this.f6644e = String.valueOf(parcel.readString());
        this.f6645f = String.valueOf(parcel.readString());
        this.f6646g = parcel.readByte() != 1 ? false : true;
    }

    public /* synthetic */ NumberCaption(Parcel parcel, C1691e c1691e) {
        this(parcel);
    }

    /* renamed from: a */
    public final int m1499a() {
        return this.f6641b;
    }

    /* renamed from: a */
    public final void m1498a(int i) {
        this.f6641b = i;
    }

    /* renamed from: a */
    public final void m1497a(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6642c = str;
    }

    /* renamed from: a */
    public final void m1496a(boolean z) {
        this.f6646g = z;
    }

    /* renamed from: b */
    public final String m1495b() {
        return this.f6642c;
    }

    /* renamed from: b */
    public final void m1494b(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6643d = str;
    }

    /* renamed from: c */
    public final String m1493c() {
        return this.f6643d;
    }

    /* renamed from: c */
    public final void m1492c(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6644e = str;
    }

    /* renamed from: d */
    public final String m1491d() {
        return this.f6644e;
    }

    /* renamed from: d */
    public final void m1490d(String str) {
        C1694h.m3117b(str, "<set-?>");
        this.f6645f = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public final String m1489e() {
        return this.f6645f;
    }

    /* renamed from: f */
    public final boolean m1488f() {
        return this.f6646g;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        C1694h.m3117b(parcel, "parcel");
        parcel.writeInt(this.f6641b);
        parcel.writeString(this.f6642c);
        parcel.writeString(this.f6643d);
        parcel.writeString(this.f6644e);
        parcel.writeString(this.f6645f);
        parcel.writeByte(this.f6646g ? (byte) 1 : (byte) 0);
    }
}
