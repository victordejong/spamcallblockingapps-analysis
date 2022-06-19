package com.freshchat.consumer.sdk.service.p068e;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.beans.Pagination;
import e.m.e.d0.b;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.service.e.ai */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/ai.class */
public class C1886ai extends AbstractC1884ag {
    public static final Parcelable.Creator<C1886ai> CREATOR = new C1887aj();
    private Pagination pagination;
    @b("articles")

    /* renamed from: ri */
    private List<FAQ> f4729ri;

    public C1886ai() {
    }

    public C1886ai(Parcel parcel) {
        super(parcel);
        this.f4729ri = parcel.createTypedArrayList(FAQ.CREATOR);
        this.pagination = (Pagination) parcel.readParcelable(Pagination.class.getClassLoader());
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: iV */
    public List<FAQ> m39356iV() {
        return this.f4729ri;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.f4729ri);
        parcel.writeParcelable(this.pagination, i);
    }
}
