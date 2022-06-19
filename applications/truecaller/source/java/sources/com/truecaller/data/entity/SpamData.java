package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.dto.ContactDto;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.f0.q;
import s1.f0.v;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0004\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\u0013\b\u0007\u0018�� 42\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00015B\t\b\u0016¢\u0006\u0004\b)\u0010*B\u0011\b\u0016\u0012\u0006\u0010+\u001a\u00020��¢\u0006\u0004\b)\u0010,B\u0011\b\u0016\u0012\u0006\u0010+\u001a\u00020\u0002¢\u0006\u0004\b)\u0010-B\u0017\b\u0016\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b)\u0010.B\u001f\b\u0016\u0012\u0006\u0010+\u001a\u00020��\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b)\u0010/B\u001f\b\u0016\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b)\u00100B\u001f\b\u0016\u0012\u0006\u00101\u001a\u00020\u0003\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015¢\u0006\u0004\b)\u00102B\u0011\b\u0016\u0012\u0006\u00101\u001a\u00020\u0003¢\u0006\u0004\b)\u00103J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\u000bR(\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R(\u0010\u0012\u001a\u0004\u0018\u00010\f2\b\u0010\u0012\u001a\u0004\u0018\u00010\f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR(\u0010\u001b\u001a\u0004\u0018\u00010\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR(\u0010 \u001a\u0004\u0018\u00010\f2\b\u0010 \u001a\u0004\u0018\u00010\f8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b!\u0010\u000f\"\u0004\b\"\u0010\u0011R(\u0010$\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010#8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u00066"}, d2 = {"Lcom/truecaller/data/entity/SpamData;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;", "Landroid/os/Parcel;", "parcel", "", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "", "numReports60days", "getNumReports60days", "()Ljava/lang/Number;", "setNumReports60days", "(Ljava/lang/Number;)V", "numCalls60days", "getNumCalls60days", "setNumCalls60days", "", "Lcom/truecaller/data/entity/SpamCategoryModel;", "spamCategoryModels", "Ljava/util/List;", "getSpamCategoryModels", "()Ljava/util/List;", "spamVersion", "getSpamVersion", "()Ljava/lang/Integer;", "setSpamVersion", "(Ljava/lang/Integer;)V", "numCalls60DaysPointerPosition", "getNumCalls60DaysPointerPosition", "setNumCalls60DaysPointerPosition", "", "numCallsHourly", "getNumCallsHourly", "()Ljava/lang/String;", "setNumCallsHourly", "(Ljava/lang/String;)V", "<init>", "()V", "spamData", "(Lcom/truecaller/data/entity/SpamData;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;)V", "(Ljava/util/List;)V", "(Lcom/truecaller/data/entity/SpamData;Ljava/util/List;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$SpamData;Ljava/util/List;)V", "source", "(Landroid/os/Parcel;Ljava/util/List;)V", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SpamData.class */
public final class SpamData extends RowEntity<ContactDto.Contact.SpamData> {
    public static final String CATEGORIES_DELIMITER = ",";
    private final List<SpamCategoryModel> spamCategoryModels;
    public static final C3841b Companion = new C3841b(null);
    public static final Parcelable.Creator<SpamData> CREATOR = new C3840a();

    /* renamed from: com.truecaller.data.entity.SpamData$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SpamData$a.class */
    public static final class C3840a implements Parcelable.Creator<SpamData> {
        @Override // android.os.Parcelable.Creator
        public SpamData createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new SpamData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SpamData[] newArray(int i) {
            return new SpamData[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.SpamData$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SpamData$b.class */
    public static final class C3841b {
        public C3841b(f fVar) {
        }

        /* renamed from: a */
        public final List<Long> m35459a(String str) {
            ArrayList arrayList;
            if (str != null) {
                List U = v.U(str, new String[]{","}, false, 0, 6);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : U) {
                    if (!l.a((String) obj, AnalyticsConstants.NULL)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it = arrayList2.iterator();
                while (true) {
                    arrayList = arrayList3;
                    if (!it.hasNext()) {
                        break;
                    }
                    Long j = q.j((String) it.next());
                    if (j != null) {
                        arrayList3.add(j);
                    }
                }
            } else {
                arrayList = s.a;
            }
            return arrayList;
        }
    }

    public SpamData() {
        this(new ContactDto.Contact.SpamData(), (List<SpamCategoryModel>) s.a);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SpamData(android.os.Parcel r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "source"
            s1.z.c.l.e(r0, r1)
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r5
            r1 = r6
            com.truecaller.data.entity.SpamCategoryModel$a r2 = com.truecaller.data.entity.SpamCategoryModel.CREATOR
            r0.readTypedList(r1, r2)
            r0 = r4
            r1 = r5
            r2 = r6
            java.util.List r2 = s1.u.i.S0(r2)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.data.entity.SpamData.<init>(android.os.Parcel):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpamData(Parcel parcel, List<SpamCategoryModel> list) {
        super(parcel);
        l.e(parcel, "source");
        l.e(list, "spamCategoryModels");
        this.spamCategoryModels = list;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SpamData(ContactDto.Contact.SpamData spamData) {
        this(spamData, (List<SpamCategoryModel>) s.a);
        l.e(spamData, "spamData");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpamData(ContactDto.Contact.SpamData spamData, List<SpamCategoryModel> list) {
        super(spamData);
        l.e(spamData, "spamData");
        l.e(list, "spamCategoryModels");
        this.spamCategoryModels = list;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SpamData(SpamData spamData) {
        this(spamData, (List<SpamCategoryModel>) s.a);
        l.e(spamData, "spamData");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SpamData(SpamData spamData, List<SpamCategoryModel> list) {
        this(new ContactDto.Contact.SpamData(spamData.row()), list);
        l.e(spamData, "spamData");
        l.e(list, "spamCategoryModels");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SpamData(List<SpamCategoryModel> list) {
        this(new ContactDto.Contact.SpamData(), list);
        l.e(list, "spamCategoryModels");
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Number getNumCalls60DaysPointerPosition() {
        return ((ContactDto.Contact.SpamData) this.mRow).numCalls60DaysPointerPosition;
    }

    public final Number getNumCalls60days() {
        return ((ContactDto.Contact.SpamData) this.mRow).numCalls60days;
    }

    public final String getNumCallsHourly() {
        return ((ContactDto.Contact.SpamData) this.mRow).numCallsHourly;
    }

    public final Number getNumReports60days() {
        return ((ContactDto.Contact.SpamData) this.mRow).numReports60days;
    }

    public final List<SpamCategoryModel> getSpamCategoryModels() {
        return this.spamCategoryModels;
    }

    public final Integer getSpamVersion() {
        return ((ContactDto.Contact.SpamData) this.mRow).spamVersion;
    }

    public final void setNumCalls60DaysPointerPosition(Number number) {
        ((ContactDto.Contact.SpamData) this.mRow).numCalls60DaysPointerPosition = number;
    }

    public final void setNumCalls60days(Number number) {
        ((ContactDto.Contact.SpamData) this.mRow).numCalls60days = number;
    }

    public final void setNumCallsHourly(String str) {
        ((ContactDto.Contact.SpamData) this.mRow).numCallsHourly = str;
    }

    public final void setNumReports60days(Number number) {
        ((ContactDto.Contact.SpamData) this.mRow).numReports60days = number;
    }

    public final void setSpamVersion(Integer num) {
        ((ContactDto.Contact.SpamData) this.mRow).spamVersion = num;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeTypedList(this.spamCategoryModels);
        super.writeToParcel(parcel, i);
    }
}
