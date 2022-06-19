package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.truecaller.data.dto.ContactDto;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Source.class */
public class Source extends RowEntity<ContactDto.Contact.Source> implements AbstractC16497e {
    public static final Parcelable.Creator<Source> CREATOR = new C3838a();

    /* renamed from: com.truecaller.data.entity.Source$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Source$a.class */
    public class C3838a implements Parcelable.Creator<Source> {
        @Override // android.os.Parcelable.Creator
        public Source createFromParcel(Parcel parcel) {
            return new Source(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Source[] newArray(int i) {
            return new Source[i];
        }
    }

    public Source() {
        super(new ContactDto.Contact.Source());
    }

    public Source(Parcel parcel) {
        super(parcel);
    }

    public Source(ContactDto.Contact.Source source) {
        super(source);
    }

    /* renamed from: a */
    public String m35460a() {
        return ((ContactDto.Contact.Source) this.mRow).f11494id;
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16497e
    public boolean mergeEquals(AbstractC16497e abstractC16497e) {
        if (this == abstractC16497e) {
            return true;
        }
        if (abstractC16497e instanceof Source) {
            return TextUtils.equals(m35460a(), ((Source) abstractC16497e).m35460a());
        }
        return false;
    }
}
