package com.freshchat.consumer.sdk.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/FAQCategoryFetchResponse.class */
public class FAQCategoryFetchResponse extends AbstractC1884ag {
    public static final Parcelable.Creator<FAQCategoryFetchResponse> CREATOR = new Parcelable.Creator<FAQCategoryFetchResponse>() { // from class: com.freshchat.consumer.sdk.beans.FAQCategoryFetchResponse.1
        @Override // android.os.Parcelable.Creator
        public FAQCategoryFetchResponse createFromParcel(Parcel parcel) {
            return new FAQCategoryFetchResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FAQCategoryFetchResponse[] newArray(int i) {
            return new FAQCategoryFetchResponse[i];
        }
    };
    private List<FAQCategory> categories;
    private Pagination pagination;

    public FAQCategoryFetchResponse() {
    }

    public FAQCategoryFetchResponse(Parcel parcel) {
        super(parcel);
        this.categories = parcel.createTypedArrayList(FAQCategory.CREATOR);
        this.pagination = (Pagination) parcel.readParcelable(Pagination.class.getClassLoader());
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<FAQCategory> getCategoryList() {
        return this.categories;
    }

    public Pagination getPagination() {
        return this.pagination;
    }

    public void setPagination(Pagination pagination) {
        this.pagination = pagination;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.categories);
        parcel.writeParcelable(this.pagination, i);
    }
}
