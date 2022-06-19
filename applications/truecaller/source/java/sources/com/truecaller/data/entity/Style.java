package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u00142\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\t\b\u0016¢\u0006\u0004\b\f\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020��¢\u0006\u0004\b\f\u0010\u000fB\u0011\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\u0010B\u0011\b\u0012\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\f\u0010\u0013R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\t\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/truecaller/data/entity/Style;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$Style;", "", "backgroundColor", "getBackgroundColor", "()Ljava/lang/String;", "setBackgroundColor", "(Ljava/lang/String;)V", "imageUrls", "getImageUrls", "setImageUrls", "<init>", "()V", "style", "(Lcom/truecaller/data/entity/Style;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$Style;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Style.class */
public final class Style extends RowEntity<ContactDto.Contact.Style> {
    public static final C3845b Companion = new C3845b(null);
    public static final Parcelable.Creator<Style> CREATOR = new C3844a();

    /* renamed from: com.truecaller.data.entity.Style$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Style$a.class */
    public static final class C3844a implements Parcelable.Creator<Style> {
        @Override // android.os.Parcelable.Creator
        public Style createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new Style(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Style[] newArray(int i) {
            return new Style[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.Style$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Style$b.class */
    public static final class C3845b {
        public C3845b(f fVar) {
        }
    }

    public Style() {
        this(new ContactDto.Contact.Style());
    }

    private Style(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ Style(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Style(ContactDto.Contact.Style style) {
        super(style);
        l.e(style, "style");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Style(Style style) {
        this(new ContactDto.Contact.Style(style.row()));
        l.e(style, "style");
    }

    public final String getBackgroundColor() {
        return ((ContactDto.Contact.Style) this.mRow).backgroundColor;
    }

    public final String getImageUrls() {
        return ((ContactDto.Contact.Style) this.mRow).imageUrls;
    }

    public final void setBackgroundColor(String str) {
        ((ContactDto.Contact.Style) this.mRow).backgroundColor = str;
    }

    public final void setImageUrls(String str) {
        ((ContactDto.Contact.Style) this.mRow).imageUrls = str;
    }
}
