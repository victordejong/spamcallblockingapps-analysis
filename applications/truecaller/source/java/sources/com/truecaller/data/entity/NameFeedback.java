package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0004\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\t\b\u0016¢\u0006\u0004\b\u000f\u0010\u0010B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020��¢\u0006\u0004\b\u000f\u0010\u0012B\u0011\b\u0016\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0013B\u0011\b\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u000f\u0010\u0016R(\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR(\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/truecaller/data/entity/NameFeedback;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;", "", "nameElectionAlgo", "getNameElectionAlgo", "()Ljava/lang/String;", "setNameElectionAlgo", "(Ljava/lang/String;)V", "", "nameSource", "getNameSource", "()Ljava/lang/Number;", "setNameSource", "(Ljava/lang/Number;)V", "<init>", "()V", "nameFeedback", "(Lcom/truecaller/data/entity/NameFeedback;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$NameFeedback;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/NameFeedback.class */
public final class NameFeedback extends RowEntity<ContactDto.Contact.NameFeedback> {
    public static final C3832b Companion = new C3832b(null);
    public static final Parcelable.Creator<NameFeedback> CREATOR = new C3831a();

    /* renamed from: com.truecaller.data.entity.NameFeedback$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/NameFeedback$a.class */
    public static final class C3831a implements Parcelable.Creator<NameFeedback> {
        @Override // android.os.Parcelable.Creator
        public NameFeedback createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new NameFeedback(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public NameFeedback[] newArray(int i) {
            return new NameFeedback[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.NameFeedback$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/NameFeedback$b.class */
    public static final class C3832b {
        public C3832b(f fVar) {
        }
    }

    public NameFeedback() {
        this(new ContactDto.Contact.NameFeedback());
    }

    private NameFeedback(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ NameFeedback(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameFeedback(ContactDto.Contact.NameFeedback nameFeedback) {
        super(nameFeedback);
        l.e(nameFeedback, "nameFeedback");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NameFeedback(NameFeedback nameFeedback) {
        this(new ContactDto.Contact.NameFeedback(nameFeedback.row()));
        l.e(nameFeedback, "nameFeedback");
    }

    public final String getNameElectionAlgo() {
        return ((ContactDto.Contact.NameFeedback) this.mRow).nameElectionAlgo;
    }

    public final Number getNameSource() {
        return ((ContactDto.Contact.NameFeedback) this.mRow).nameSource;
    }

    public final void setNameElectionAlgo(String str) {
        ((ContactDto.Contact.NameFeedback) this.mRow).nameElectionAlgo = str;
    }

    public final void setNameSource(Number number) {
        ((ContactDto.Contact.NameFeedback) this.mRow).nameSource = number;
    }
}
