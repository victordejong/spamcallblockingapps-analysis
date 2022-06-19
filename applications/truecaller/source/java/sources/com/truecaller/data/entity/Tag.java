package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.truecaller.data.dto.ContactDto;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Tag.class */
public class Tag extends RowEntity<ContactDto.Contact.Tag> implements AbstractC16497e {
    public static final Parcelable.Creator<Tag> CREATOR = new C3846a();

    /* renamed from: com.truecaller.data.entity.Tag$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Tag$a.class */
    public class C3846a implements Parcelable.Creator<Tag> {
        @Override // android.os.Parcelable.Creator
        public Tag createFromParcel(Parcel parcel) {
            return new Tag(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Tag[] newArray(int i) {
            return new Tag[i];
        }
    }

    public Tag() {
        super(new ContactDto.Contact.Tag());
    }

    public Tag(Parcel parcel) {
        super(parcel);
    }

    public Tag(ContactDto.Contact.Tag tag) {
        super(tag);
    }

    public String getValue() {
        return ((ContactDto.Contact.Tag) this.mRow).tag;
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16497e
    public boolean mergeEquals(AbstractC16497e abstractC16497e) {
        boolean z = true;
        if (this == abstractC16497e) {
            return true;
        }
        if (!(abstractC16497e instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) abstractC16497e;
        if (!TextUtils.equals(getValue(), tag.getValue()) || getSource() != tag.getSource()) {
            z = false;
        }
        return z;
    }

    public void setValue(String str) {
        ((ContactDto.Contact.Tag) this.mRow).tag = str;
    }
}
