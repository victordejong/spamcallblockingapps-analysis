package com.truecaller.yearincalling.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/Detail.class */
public final class Detail implements Parcelable {
    public static final Parcelable.Creator<Detail> CREATOR = new C4873a();

    /* renamed from: a */
    public final Integer f16560a;

    /* renamed from: b */
    public final Spanned f16561b;

    /* renamed from: c */
    public final Integer f16562c;

    /* renamed from: d */
    public final Integer f16563d;

    /* renamed from: com.truecaller.yearincalling.model.Detail$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/Detail$a.class */
    public static final class C4873a implements Parcelable.Creator<Detail> {
        @Override // android.os.Parcelable.Creator
        public Detail createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            Integer num = null;
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            l.e(parcel, "parcel");
            Object createFromParcel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            Objects.requireNonNull(createFromParcel, "null cannot be cast to non-null type android.text.Spanned");
            Spanned spanned = (Spanned) createFromParcel;
            Integer valueOf2 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            if (parcel.readInt() != 0) {
                num = Integer.valueOf(parcel.readInt());
            }
            return new Detail(valueOf, spanned, valueOf2, num);
        }

        @Override // android.os.Parcelable.Creator
        public Detail[] newArray(int i) {
            return new Detail[i];
        }
    }

    public Detail(Integer num, Spanned spanned, Integer num2, Integer num3) {
        l.e(spanned, "label");
        this.f16560a = num;
        this.f16561b = spanned;
        this.f16562c = num2;
        this.f16563d = num3;
    }

    public /* synthetic */ Detail(Integer num, Spanned spanned, Integer num2, Integer num3, int i) {
        this(num, spanned, null, (i & 8) != 0 ? null : num3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Detail)) {
                return false;
            }
            Detail detail = (Detail) obj;
            return l.a(this.f16560a, detail.f16560a) && l.a(this.f16561b, detail.f16561b) && l.a(this.f16562c, detail.f16562c) && l.a(this.f16563d, detail.f16563d);
        }
        return true;
    }

    public int hashCode() {
        Integer num = this.f16560a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Spanned spanned = this.f16561b;
        int hashCode2 = spanned != null ? spanned.hashCode() : 0;
        Integer num2 = this.f16562c;
        int hashCode3 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.f16563d;
        if (num3 != null) {
            i = num3.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("Detail(imgResId=");
        m8728C.append(this.f16560a);
        m8728C.append(", label=");
        m8728C.append((Object) this.f16561b);
        m8728C.append(", textSize=");
        m8728C.append(this.f16562c);
        m8728C.append(", textColor=");
        return C22128a.m8689L2(m8728C, this.f16563d, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        Integer num = this.f16560a;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Spanned spanned = this.f16561b;
        l.e(spanned, "$this$write");
        l.e(parcel, "parcel");
        TextUtils.writeToParcel(spanned, parcel, i);
        Integer num2 = this.f16562c;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num3 = this.f16563d;
        if (num3 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(num3.intValue());
    }
}
