package com.truecaller.ads.leadgen.dto;

import android.os.Parcel;
import android.os.Parcelable;
import com.huawei.hms.opendevice.AbstractC2405c;
import e.m.e.d0.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B/\u0012\u0006\u0010\u001f\u001a\u00020\u001b\u0012\u0006\u0010\u0010\u001a\u00020\u000b\u0012\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u0010\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u00118\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\f\u0010\u0015R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b\u0013\u0010\u0019R\u001c\u0010\u001f\u001a\u00020\u001b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001c\u0010\u001e¨\u0006\""}, d2 = {"Lcom/truecaller/ads/leadgen/dto/LeadgenDto;", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;", C22021b.f61237c, "Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;", "d", "()Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;", "theme", "", "Lcom/truecaller/ads/leadgen/dto/LeadgenInput;", AbstractC2405c.f7629a, "Ljava/util/List;", "()Ljava/util/List;", "inputs", "Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;", "Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;", "()Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;", "pixel", "Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;", "a", "Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;", "()Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;", "description", "<init>", "(Lcom/truecaller/ads/leadgen/dto/LeadgenDescription;Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;Ljava/util/List;Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenDto.class */
public final class LeadgenDto implements Parcelable {
    public static final Parcelable.Creator<LeadgenDto> CREATOR = new C2821a();
    @b("desc")

    /* renamed from: a */
    private final LeadgenDescription f9860a;
    @b("theme")

    /* renamed from: b */
    private final LeadgenTheme f9861b;
    @b("inputs")

    /* renamed from: c */
    private final List<LeadgenInput> f9862c;
    @b("pixel")

    /* renamed from: d */
    private final LeadgenPixel f9863d;

    /* renamed from: com.truecaller.ads.leadgen.dto.LeadgenDto$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/dto/LeadgenDto$a.class */
    public static final class C2821a implements Parcelable.Creator<LeadgenDto> {
        @Override // android.os.Parcelable.Creator
        public LeadgenDto createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            LeadgenDescription createFromParcel = LeadgenDescription.CREATOR.createFromParcel(parcel);
            LeadgenTheme createFromParcel2 = LeadgenTheme.CREATOR.createFromParcel(parcel);
            int readInt = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(LeadgenInput.CREATOR.createFromParcel(parcel));
                readInt--;
            }
            return new LeadgenDto(createFromParcel, createFromParcel2, arrayList, parcel.readInt() != 0 ? LeadgenPixel.CREATOR.createFromParcel(parcel) : null);
        }

        @Override // android.os.Parcelable.Creator
        public LeadgenDto[] newArray(int i) {
            return new LeadgenDto[i];
        }
    }

    public LeadgenDto(LeadgenDescription leadgenDescription, LeadgenTheme leadgenTheme, List<LeadgenInput> list, LeadgenPixel leadgenPixel) {
        l.e(leadgenDescription, "description");
        l.e(leadgenTheme, "theme");
        l.e(list, "inputs");
        this.f9860a = leadgenDescription;
        this.f9861b = leadgenTheme;
        this.f9862c = list;
        this.f9863d = leadgenPixel;
    }

    /* renamed from: a */
    public final LeadgenDescription m35983a() {
        return this.f9860a;
    }

    /* renamed from: b */
    public final List<LeadgenInput> m35982b() {
        return this.f9862c;
    }

    /* renamed from: c */
    public final LeadgenPixel m35981c() {
        return this.f9863d;
    }

    /* renamed from: d */
    public final LeadgenTheme m35980d() {
        return this.f9861b;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        this.f9860a.writeToParcel(parcel, 0);
        this.f9861b.writeToParcel(parcel, 0);
        List<LeadgenInput> list = this.f9862c;
        parcel.writeInt(list.size());
        for (LeadgenInput leadgenInput : list) {
            leadgenInput.writeToParcel(parcel, 0);
        }
        LeadgenPixel leadgenPixel = this.f9863d;
        if (leadgenPixel == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        leadgenPixel.writeToParcel(parcel, 0);
    }
}
