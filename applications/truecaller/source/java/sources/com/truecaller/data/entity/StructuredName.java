package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0010B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\b\u000f\u0010\u0012B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0013B\u0011\b\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u000f\u0010\u0016R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\t\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR(\u0010\f\u001a\u0004\u0018\u00010\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0019"}, d2 = {"Lcom/truecaller/data/entity/StructuredName;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;", "", "familyName", "getFamilyName", "()Ljava/lang/String;", "setFamilyName", "(Ljava/lang/String;)V", "givenName", "getGivenName", "setGivenName", "middleName", "getMiddleName", "setMiddleName", "<init>", "()V", "structuredName", "(Lcom/truecaller/data/entity/StructuredName;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$StructuredName;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/StructuredName.class */
public final class StructuredName extends RowEntity<ContactDto.Contact.StructuredName> {
    public static final C3843b Companion = new C3843b(null);
    public static final Parcelable.Creator<StructuredName> CREATOR = new C3842a();

    /* renamed from: com.truecaller.data.entity.StructuredName$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/StructuredName$a.class */
    public static final class C3842a implements Parcelable.Creator<StructuredName> {
        @Override // android.os.Parcelable.Creator
        public StructuredName createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new StructuredName(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public StructuredName[] newArray(int i) {
            return new StructuredName[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.StructuredName$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/StructuredName$b.class */
    public static final class C3843b {
        public C3843b(f fVar) {
        }
    }

    public StructuredName() {
        this(new ContactDto.Contact.StructuredName());
    }

    private StructuredName(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ StructuredName(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StructuredName(ContactDto.Contact.StructuredName structuredName) {
        super(structuredName);
        l.e(structuredName, "structuredName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StructuredName(StructuredName structuredName) {
        this(new ContactDto.Contact.StructuredName(structuredName.row()));
        l.e(structuredName, "structuredName");
    }

    public final String getFamilyName() {
        return ((ContactDto.Contact.StructuredName) this.mRow).familyName;
    }

    public final String getGivenName() {
        return ((ContactDto.Contact.StructuredName) this.mRow).givenName;
    }

    public final String getMiddleName() {
        return ((ContactDto.Contact.StructuredName) this.mRow).middleName;
    }

    public final void setFamilyName(String str) {
        ((ContactDto.Contact.StructuredName) this.mRow).familyName = str;
    }

    public final void setGivenName(String str) {
        ((ContactDto.Contact.StructuredName) this.mRow).givenName = str;
    }

    public final void setMiddleName(String str) {
        ((ContactDto.Contact.StructuredName) this.mRow).middleName = str;
    }
}
