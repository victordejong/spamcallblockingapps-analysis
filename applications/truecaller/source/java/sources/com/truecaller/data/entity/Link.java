package com.truecaller.data.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.truecaller.data.dto.ContactDto;
import p193e.p194a.p997k3.p1000l.AbstractC16497e;
@Keep
/* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Link.class */
public class Link extends RowEntity<ContactDto.Contact.InternetAddress> implements AbstractC16497e {
    public static final Parcelable.Creator<Link> CREATOR = new C3827a();

    /* renamed from: com.truecaller.data.entity.Link$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/data/entity/Link$a.class */
    public class C3827a implements Parcelable.Creator<Link> {
        @Override // android.os.Parcelable.Creator
        public Link createFromParcel(Parcel parcel) {
            return new Link(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Link[] newArray(int i) {
            return new Link[i];
        }
    }

    public Link() {
        this(new ContactDto.Contact.InternetAddress());
    }

    public Link(Parcel parcel) {
        super(parcel);
    }

    public Link(ContactDto.Contact.InternetAddress internetAddress) {
        super(internetAddress);
    }

    public String getCaption() {
        return ((ContactDto.Contact.InternetAddress) this.mRow).caption;
    }

    public String getInfo() {
        return ((ContactDto.Contact.InternetAddress) this.mRow).f11491id;
    }

    public String getService() {
        return ((ContactDto.Contact.InternetAddress) this.mRow).service;
    }

    @Override // p193e.p194a.p997k3.p1000l.AbstractC16497e
    public boolean mergeEquals(AbstractC16497e abstractC16497e) {
        boolean z = true;
        if (this == abstractC16497e) {
            return true;
        }
        if (!(abstractC16497e instanceof Link)) {
            return false;
        }
        Link link = (Link) abstractC16497e;
        if (!TextUtils.equals(getInfo(), link.getInfo()) || !TextUtils.equals(getService(), link.getService())) {
            z = false;
        }
        return z;
    }

    public void setCaption(String str) {
        ((ContactDto.Contact.InternetAddress) this.mRow).caption = str;
    }

    public void setInfo(String str) {
        ((ContactDto.Contact.InternetAddress) this.mRow).f11491id = str;
    }

    public void setService(String str) {
        ((ContactDto.Contact.InternetAddress) this.mRow).service = str;
    }
}
