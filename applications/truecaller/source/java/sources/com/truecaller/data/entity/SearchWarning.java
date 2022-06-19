package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import java.util.List;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.u.s;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u001b2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\t\b\u0016¢\u0006\u0004\b\u0013\u0010\u0014B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020��¢\u0006\u0004\b\u0013\u0010\u0016B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0017B\u0011\b\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0013\u0010\u001aR0\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR(\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\u0010\u0010\u001a\u0004\u0018\u00010\n8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\u001d"}, d2 = {"Lcom/truecaller/data/entity/SearchWarning;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;", "", "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;", "features", "getFeatures", "()Ljava/util/List;", "setFeatures", "(Ljava/util/List;)V", "", "id", "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "ruleName", "getRuleName", "setRuleName", "<init>", "()V", "searchWarning", "(Lcom/truecaller/data/entity/SearchWarning;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SearchWarning.class */
public final class SearchWarning extends RowEntity<ContactDto.Contact.SearchWarning> {
    public static final C3837b Companion = new C3837b(null);
    public static final Parcelable.Creator<SearchWarning> CREATOR = new C3836a();

    /* renamed from: com.truecaller.data.entity.SearchWarning$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SearchWarning$a.class */
    public static final class C3836a implements Parcelable.Creator<SearchWarning> {
        @Override // android.os.Parcelable.Creator
        public SearchWarning createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new SearchWarning(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public SearchWarning[] newArray(int i) {
            return new SearchWarning[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.SearchWarning$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/SearchWarning$b.class */
    public static final class C3837b {
        public C3837b(f fVar) {
        }
    }

    public SearchWarning() {
        this(new ContactDto.Contact.SearchWarning());
    }

    private SearchWarning(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ SearchWarning(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchWarning(ContactDto.Contact.SearchWarning searchWarning) {
        super(searchWarning);
        l.e(searchWarning, "searchWarning");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SearchWarning(SearchWarning searchWarning) {
        this(new ContactDto.Contact.SearchWarning(searchWarning.row()));
        l.e(searchWarning, "searchWarning");
    }

    public final List<ContactDto.Contact.SearchWarning.Feature> getFeatures() {
        s sVar = ((ContactDto.Contact.SearchWarning) this.mRow).features;
        if (sVar == null) {
            sVar = s.a;
        }
        return sVar;
    }

    @Override // com.truecaller.data.entity.RowEntity, com.truecaller.data.entity.Entity
    public final String getId() {
        return ((ContactDto.Contact.SearchWarning) this.mRow).f11493id;
    }

    public final String getRuleName() {
        return ((ContactDto.Contact.SearchWarning) this.mRow).ruleName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setFeatures(List<? extends ContactDto.Contact.SearchWarning.Feature> list) {
        l.e(list, "features");
        ((ContactDto.Contact.SearchWarning) this.mRow).features = list;
    }

    public final void setId(String str) {
        ((ContactDto.Contact.SearchWarning) this.mRow).f11493id = str;
    }

    public final void setRuleName(String str) {
        ((ContactDto.Contact.SearchWarning) this.mRow).ruleName = str;
    }
}
