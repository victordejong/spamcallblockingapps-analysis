package com.freshchat.consumer.sdk.beans.reqres;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.beans.BotFAQ;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/BotFAQFetchResponse.class */
public class BotFAQFetchResponse extends AbstractC1884ag {
    public static final Parcelable.Creator<BotFAQFetchResponse> CREATOR = new Parcelable.Creator<BotFAQFetchResponse>() { // from class: com.freshchat.consumer.sdk.beans.reqres.BotFAQFetchResponse.1
        @Override // android.os.Parcelable.Creator
        public BotFAQFetchResponse createFromParcel(Parcel parcel) {
            return new BotFAQFetchResponse(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BotFAQFetchResponse[] newArray(int i) {
            return new BotFAQFetchResponse[i];
        }
    };
    private BotFAQ botFAQ;

    public BotFAQFetchResponse() {
    }

    public BotFAQFetchResponse(Parcel parcel) {
        super(parcel);
        this.botFAQ = (BotFAQ) parcel.readParcelable(BotFAQ.class.getClassLoader());
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BotFAQ getBotFAQ() {
        return this.botFAQ;
    }

    public void setBotFAQ(BotFAQ botFAQ) {
        this.botFAQ = botFAQ;
    }

    @Override // com.freshchat.consumer.sdk.service.p068e.AbstractC1884ag, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.botFAQ, i);
    }
}
