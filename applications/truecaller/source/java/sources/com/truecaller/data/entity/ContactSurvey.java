package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\t\b\u0016¢\u0006\u0004\b\u0012\u0010\u0013B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020��¢\u0006\u0004\b\u0012\u0010\u0015B\u0011\b\u0016\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0016B\u0011\b\u0012\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0012\u0010\u0019R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR(\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/truecaller/data/entity/ContactSurvey;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$Survey;", "", "id", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "", "frequency", "getFrequency", "()Ljava/lang/Long;", "setFrequency", "(Ljava/lang/Long;)V", "passthroughData", "getPassthroughData", "setPassthroughData", "<init>", "()V", "survey", "(Lcom/truecaller/data/entity/ContactSurvey;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$Survey;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/ContactSurvey.class */
public final class ContactSurvey extends RowEntity<ContactDto.Contact.Survey> {
    public static final C3824b Companion = new C3824b(null);
    public static final Parcelable.Creator<ContactSurvey> CREATOR = new C3823a();

    /* renamed from: com.truecaller.data.entity.ContactSurvey$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/ContactSurvey$a.class */
    public static final class C3823a implements Parcelable.Creator<ContactSurvey> {
        @Override // android.os.Parcelable.Creator
        public ContactSurvey createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new ContactSurvey(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public ContactSurvey[] newArray(int i) {
            return new ContactSurvey[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.ContactSurvey$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/ContactSurvey$b.class */
    public static final class C3824b {
        public C3824b(f fVar) {
        }
    }

    public ContactSurvey() {
        this(new ContactDto.Contact.Survey());
    }

    private ContactSurvey(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ ContactSurvey(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactSurvey(ContactDto.Contact.Survey survey) {
        super(survey);
        l.e(survey, "survey");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContactSurvey(ContactSurvey contactSurvey) {
        this(new ContactDto.Contact.Survey(contactSurvey.row()));
        l.e(contactSurvey, "survey");
    }

    public final Long getFrequency() {
        return ((ContactDto.Contact.Survey) this.mRow).frequency;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public final String getId() {
        return ((ContactDto.Contact.Survey) this.mRow).f11495id;
    }

    public final String getPassthroughData() {
        return ((ContactDto.Contact.Survey) this.mRow).passthroughData;
    }

    public final void setFrequency(Long l) {
        ((ContactDto.Contact.Survey) this.mRow).frequency = l;
    }

    public final void setId(String str) {
        ((ContactDto.Contact.Survey) this.mRow).f11495id = str;
    }

    public final void setPassthroughData(String str) {
        ((ContactDto.Contact.Survey) this.mRow).passthroughData = str;
    }
}
