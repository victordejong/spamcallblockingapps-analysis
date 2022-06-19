package com.freshchat.consumer.sdk.beans.reqres;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.beans.FAQ;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/FAQFetchResponse.class */
public class FAQFetchResponse extends AbstractC1884ag {
    public static final Parcelable.Creator<FAQFetchResponse> CREATOR = new Parcelable.Creator<FAQFetchResponse>() { // from class: com.freshchat.consumer.sdk.beans.reqres.FAQFetchResponse.1
        @Override // android.os.Parcelable.Creator
        public FAQFetchResponse createFromParcel(Parcel parcel) {
            return new FAQFetchResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FAQFetchResponse[] newArray(int i) {
            return new FAQFetchResponse[i];
        }
    };
    private FAQ faq;

    public FAQFetchResponse() {
    }

    public FAQFetchResponse(Parcel parcel) {
        super(parcel);
        this.faq = (FAQ) parcel.readParcelable(FAQ.class.getClassLoader());
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FAQ getFaq() {
        return this.faq;
    }

    public void setFaq(FAQ faq) {
        this.faq = faq;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.faq, i);
    }
}
