package com.truecaller.yearincalling.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/StatsUiModel.class */
public final class StatsUiModel implements Parcelable {
    public static final Parcelable.Creator<StatsUiModel> CREATOR = new C4875a();

    /* renamed from: a */
    public final String f16567a;

    /* renamed from: b */
    public final String f16568b;

    /* renamed from: c */
    public final Integer f16569c;

    /* renamed from: d */
    public final Spanned f16570d;

    /* renamed from: e */
    public final List<Detail> f16571e;

    /* renamed from: f */
    public final List<Detail> f16572f;

    /* renamed from: g */
    public final Integer f16573g;

    /* renamed from: h */
    public final Integer f16574h;

    /* renamed from: i */
    public final boolean f16575i;

    /* renamed from: j */
    public final List<ShareImageDetails> f16576j;

    /* renamed from: k */
    public final Integer f16577k;

    /* renamed from: com.truecaller.yearincalling.model.StatsUiModel$a */
    /* loaded from: classes16-dex2jar.jar:com/truecaller/yearincalling/model/StatsUiModel$a.class */
    public static final class C4875a implements Parcelable.Creator<StatsUiModel> {
        @Override // android.os.Parcelable.Creator
        public StatsUiModel createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Integer valueOf = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            l.e(parcel, "parcel");
            Object createFromParcel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            Objects.requireNonNull(createFromParcel, "null cannot be cast to non-null type android.text.Spanned");
            Spanned spanned = (Spanned) createFromParcel;
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(Detail.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            int readInt2 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(readInt2);
            while (readInt2 != 0) {
                arrayList2.add(Detail.CREATOR.createFromParcel(parcel));
                readInt2--;
            }
            Integer valueOf2 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            Integer valueOf3 = parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null;
            boolean z = parcel.readInt() != 0;
            int readInt3 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(readInt3);
            while (readInt3 != 0) {
                arrayList3.add(ShareImageDetails.CREATOR.createFromParcel(parcel));
                readInt3--;
            }
            return new StatsUiModel(readString, readString2, valueOf, spanned, arrayList, arrayList2, valueOf2, valueOf3, z, arrayList3, parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public StatsUiModel[] newArray(int i) {
            return new StatsUiModel[i];
        }
    }

    public StatsUiModel() {
        this(null, null, null, null, null, null, null, null, false, null, null, 2047);
    }

    public StatsUiModel(String str, String str2, Integer num, Spanned spanned, List<Detail> list, List<Detail> list2, Integer num2, Integer num3, boolean z, List<ShareImageDetails> list3, Integer num4) {
        l.e(str, "titleNumber");
        l.e(str2, "titleText");
        l.e(spanned, "description");
        l.e(list, "details");
        l.e(list2, "summaryDetails");
        l.e(list3, "shareImageDetails");
        this.f16567a = str;
        this.f16568b = str2;
        this.f16569c = num;
        this.f16570d = spanned;
        this.f16571e = list;
        this.f16572f = list2;
        this.f16573g = num2;
        this.f16574h = num3;
        this.f16575i = z;
        this.f16576j = list3;
        this.f16577k = num4;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ StatsUiModel(java.lang.String r14, java.lang.String r15, java.lang.Integer r16, android.text.Spanned r17, java.util.List r18, java.util.List r19, java.lang.Integer r20, java.lang.Integer r21, boolean r22, java.util.List r23, java.lang.Integer r24, int r25) {
        /*
            r13 = this;
            s1.u.s r0 = s1.u.s.a
            r26 = r0
            r0 = r25
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L12
            java.lang.String r0 = ""
            r14 = r0
            goto L12
        L12:
            r0 = r25
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L1f
            java.lang.String r0 = ""
            r15 = r0
            goto L1f
        L1f:
            r0 = 0
            r27 = r0
            r0 = r25
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = 0
            r16 = r0
            goto L2e
        L2e:
            r0 = r25
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L47
            java.lang.String r0 = ""
            android.text.SpannableString r0 = android.text.SpannableString.valueOf(r0)
            r17 = r0
            r0 = r17
            java.lang.String r1 = "SpannableString.valueOf(\"\")"
            s1.z.c.l.d(r0, r1)
            goto L47
        L47:
            r0 = r25
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L56
            r0 = r26
            r18 = r0
            goto L56
        L56:
            r0 = r25
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L65
            r0 = r26
            r19 = r0
            goto L65
        L65:
            r0 = r25
            r1 = 64
            r0 = r0 & r1
            if (r0 == 0) goto L73
            r0 = 0
            r20 = r0
            goto L73
        L73:
            r0 = r25
            r1 = 128(0x80, float:1.794E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L82
            r0 = 0
            r21 = r0
            goto L82
        L82:
            r0 = r25
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L91
            r0 = 0
            r22 = r0
            goto L91
        L91:
            r0 = r25
            r1 = 512(0x200, float:7.175E-43)
            r0 = r0 & r1
            if (r0 == 0) goto L9d
            goto La1
        L9d:
            r0 = r23
            r26 = r0
        La1:
            r0 = r25
            r1 = 1024(0x400, float:1.435E-42)
            r0 = r0 & r1
            if (r0 == 0) goto Lb1
            r0 = r27
            r24 = r0
            goto Lb1
        Lb1:
            r0 = r13
            r1 = r14
            r2 = r15
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r10 = r26
            r11 = r24
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.yearincalling.model.StatsUiModel.<init>(java.lang.String, java.lang.String, java.lang.Integer, android.text.Spanned, java.util.List, java.util.List, java.lang.Integer, java.lang.Integer, boolean, java.util.List, java.lang.Integer, int):void");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof StatsUiModel)) {
                return false;
            }
            StatsUiModel statsUiModel = (StatsUiModel) obj;
            return l.a(this.f16567a, statsUiModel.f16567a) && l.a(this.f16568b, statsUiModel.f16568b) && l.a(this.f16569c, statsUiModel.f16569c) && l.a(this.f16570d, statsUiModel.f16570d) && l.a(this.f16571e, statsUiModel.f16571e) && l.a(this.f16572f, statsUiModel.f16572f) && l.a(this.f16573g, statsUiModel.f16573g) && l.a(this.f16574h, statsUiModel.f16574h) && this.f16575i == statsUiModel.f16575i && l.a(this.f16576j, statsUiModel.f16576j) && l.a(this.f16577k, statsUiModel.f16577k);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f16567a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16568b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        Integer num = this.f16569c;
        int hashCode3 = num != null ? num.hashCode() : 0;
        Spanned spanned = this.f16570d;
        int hashCode4 = spanned != null ? spanned.hashCode() : 0;
        List<Detail> list = this.f16571e;
        int hashCode5 = list != null ? list.hashCode() : 0;
        List<Detail> list2 = this.f16572f;
        int hashCode6 = list2 != null ? list2.hashCode() : 0;
        Integer num2 = this.f16573g;
        int hashCode7 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.f16574h;
        int hashCode8 = num3 != null ? num3.hashCode() : 0;
        boolean z = this.f16575i;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        List<ShareImageDetails> list3 = this.f16576j;
        int hashCode9 = list3 != null ? list3.hashCode() : 0;
        Integer num4 = this.f16577k;
        if (num4 != null) {
            i = num4.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + i2) * 31) + hashCode9) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StatsUiModel(titleNumber=");
        m8728C.append(this.f16567a);
        m8728C.append(", titleText=");
        m8728C.append(this.f16568b);
        m8728C.append(", titleAndDescriptionColor=");
        m8728C.append(this.f16569c);
        m8728C.append(", description=");
        m8728C.append((Object) this.f16570d);
        m8728C.append(", details=");
        m8728C.append(this.f16571e);
        m8728C.append(", summaryDetails=");
        m8728C.append(this.f16572f);
        m8728C.append(", background=");
        m8728C.append(this.f16573g);
        m8728C.append(", backgroundColor=");
        m8728C.append(this.f16574h);
        m8728C.append(", isBottomBlockInvisible=");
        m8728C.append(this.f16575i);
        m8728C.append(", shareImageDetails=");
        m8728C.append(this.f16576j);
        m8728C.append(", shareButtonColor=");
        return C22128a.m8689L2(m8728C, this.f16577k, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.f16567a);
        parcel.writeString(this.f16568b);
        Integer num = this.f16569c;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Spanned spanned = this.f16570d;
        l.e(spanned, "$this$write");
        l.e(parcel, "parcel");
        TextUtils.writeToParcel(spanned, parcel, i);
        List<Detail> list = this.f16571e;
        parcel.writeInt(list.size());
        for (Detail detail : list) {
            detail.writeToParcel(parcel, 0);
        }
        List<Detail> list2 = this.f16572f;
        parcel.writeInt(list2.size());
        for (Detail detail2 : list2) {
            detail2.writeToParcel(parcel, 0);
        }
        Integer num2 = this.f16573g;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num3 = this.f16574h;
        if (num3 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num3.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeInt(this.f16575i ? 1 : 0);
        List<ShareImageDetails> list3 = this.f16576j;
        parcel.writeInt(list3.size());
        for (ShareImageDetails shareImageDetails : list3) {
            shareImageDetails.writeToParcel(parcel, 0);
        }
        Integer num4 = this.f16577k;
        if (num4 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(num4.intValue());
    }
}
