package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\t\b\u0016¢\u0006\u0004\b$\u0010%B\u0011\b\u0016\u0012\u0006\u0010&\u001a\u00020��¢\u0006\u0004\b$\u0010'B\u0011\b\u0016\u0012\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b$\u0010(B\u0011\b\u0012\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b$\u0010+R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\t\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR(\u0010\f\u001a\u0004\u0018\u00010\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR(\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR(\u0010\u0012\u001a\u0004\u0018\u00010\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR(\u0010\u0015\u001a\u0004\u0018\u00010\u00032\b\u0010\u0015\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR(\u0010\u0018\u001a\u0004\u0018\u00010\u00032\b\u0010\u0018\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR(\u0010\u001b\u001a\u0004\u0018\u00010\u00032\b\u0010\u001b\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR(\u0010\u001e\u001a\u0004\u0018\u00010\u00032\b\u0010\u001e\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR(\u0010!\u001a\u0004\u0018\u00010\u00032\b\u0010!\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\b¨\u0006."}, d2 = {"Lcom/truecaller/data/entity/Business;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$Business;", "", "mediaCallerIDs", "getMediaCallerIDs", "()Ljava/lang/String;", "setMediaCallerIDs", "(Ljava/lang/String;)V", "department", "getDepartment", "setDepartment", "landline", "getLandline", "setLandline", "score", "getScore", "setScore", "swishNumber", "getSwishNumber", "setSwishNumber", "brandedMedia", "getBrandedMedia", "setBrandedMedia", "appStores", "getAppStores", "setAppStores", "branch", "getBranch", "setBranch", "companySize", "getCompanySize", "setCompanySize", "openingHours", "getOpeningHours", "setOpeningHours", "<init>", "()V", "business", "(Lcom/truecaller/data/entity/Business;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$Business;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Business.class */
public final class Business extends RowEntity<ContactDto.Contact.Business> {
    public static final C3819b Companion = new C3819b(null);
    public static final Parcelable.Creator<Business> CREATOR = new C3818a();

    /* renamed from: com.truecaller.data.entity.Business$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Business$a.class */
    public static final class C3818a implements Parcelable.Creator<Business> {
        @Override // android.os.Parcelable.Creator
        public Business createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new Business(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Business[] newArray(int i) {
            return new Business[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.Business$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Business$b.class */
    public static final class C3819b {
        public C3819b(f fVar) {
        }
    }

    public Business() {
        this(new ContactDto.Contact.Business());
    }

    private Business(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ Business(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Business(ContactDto.Contact.Business business) {
        super(business);
        l.e(business, "business");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Business(Business business) {
        this(new ContactDto.Contact.Business(business.row()));
        l.e(business, "business");
    }

    public final String getAppStores() {
        return ((ContactDto.Contact.Business) this.mRow).appStores;
    }

    public final String getBranch() {
        return ((ContactDto.Contact.Business) this.mRow).branch;
    }

    public final String getBrandedMedia() {
        return ((ContactDto.Contact.Business) this.mRow).brandedMedia;
    }

    public final String getCompanySize() {
        return ((ContactDto.Contact.Business) this.mRow).companySize;
    }

    public final String getDepartment() {
        return ((ContactDto.Contact.Business) this.mRow).department;
    }

    public final String getLandline() {
        return ((ContactDto.Contact.Business) this.mRow).landline;
    }

    public final String getMediaCallerIDs() {
        return ((ContactDto.Contact.Business) this.mRow).mediaCallerIDs;
    }

    public final String getOpeningHours() {
        return ((ContactDto.Contact.Business) this.mRow).openingHours;
    }

    public final String getScore() {
        return ((ContactDto.Contact.Business) this.mRow).score;
    }

    public final String getSwishNumber() {
        return ((ContactDto.Contact.Business) this.mRow).swishNumber;
    }

    public final void setAppStores(String str) {
        ((ContactDto.Contact.Business) this.mRow).appStores = str;
    }

    public final void setBranch(String str) {
        ((ContactDto.Contact.Business) this.mRow).branch = str;
    }

    public final void setBrandedMedia(String str) {
        ((ContactDto.Contact.Business) this.mRow).brandedMedia = str;
    }

    public final void setCompanySize(String str) {
        ((ContactDto.Contact.Business) this.mRow).companySize = str;
    }

    public final void setDepartment(String str) {
        ((ContactDto.Contact.Business) this.mRow).department = str;
    }

    public final void setLandline(String str) {
        ((ContactDto.Contact.Business) this.mRow).landline = str;
    }

    public final void setMediaCallerIDs(String str) {
        ((ContactDto.Contact.Business) this.mRow).mediaCallerIDs = str;
    }

    public final void setOpeningHours(String str) {
        ((ContactDto.Contact.Business) this.mRow).openingHours = str;
    }

    public final void setScore(String str) {
        ((ContactDto.Contact.Business) this.mRow).score = str;
    }

    public final void setSwishNumber(String str) {
        ((ContactDto.Contact.Business) this.mRow).swishNumber = str;
    }
}
