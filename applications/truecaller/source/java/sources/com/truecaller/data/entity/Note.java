package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018�� \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\t\b\u0016¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020��¢\u0006\u0004\b\n\u0010\fB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\rB\u0011\b\u0012\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\n\u0010\u0010R(\u0010\t\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/truecaller/data/entity/Note;", "Lcom/truecaller/data/entity/RowEntity;", "Lcom/truecaller/data/dto/ContactDto$Contact$Note;", "", "note", "getValue", "()Ljava/lang/String;", "setValue", "(Ljava/lang/String;)V", "value", "<init>", "()V", "(Lcom/truecaller/data/entity/Note;)V", "(Lcom/truecaller/data/dto/ContactDto$Contact$Note;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Companion", C22021b.f61237c, "data_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Note.class */
public final class Note extends RowEntity<ContactDto.Contact.Note> {
    public static final C3834b Companion = new C3834b(null);
    public static final Parcelable.Creator<Note> CREATOR = new C3833a();

    /* renamed from: com.truecaller.data.entity.Note$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Note$a.class */
    public static final class C3833a implements Parcelable.Creator<Note> {
        @Override // android.os.Parcelable.Creator
        public Note createFromParcel(Parcel parcel) {
            l.e(parcel, "source");
            return new Note(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public Note[] newArray(int i) {
            return new Note[i];
        }
    }

    /* renamed from: com.truecaller.data.entity.Note$b */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Note$b.class */
    public static final class C3834b {
        public C3834b(f fVar) {
        }
    }

    public Note() {
        this(new ContactDto.Contact.Note());
    }

    private Note(Parcel parcel) {
        super(parcel);
    }

    public /* synthetic */ Note(Parcel parcel, f fVar) {
        this(parcel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Note(ContactDto.Contact.Note note) {
        super(note);
        l.e(note, "note");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Note(Note note) {
        this(new ContactDto.Contact.Note(note.row()));
        l.e(note, "note");
    }

    public final String getValue() {
        return ((ContactDto.Contact.Note) this.mRow).note;
    }

    public final void setValue(String str) {
        ((ContactDto.Contact.Note) this.mRow).note = str;
    }
}
