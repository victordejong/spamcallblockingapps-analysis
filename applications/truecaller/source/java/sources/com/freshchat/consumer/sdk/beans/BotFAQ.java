package com.freshchat.consumer.sdk.beans;

import android.os.Parcel;
import android.os.Parcelable;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/BotFAQ.class */
public class BotFAQ implements Parcelable {
    public static final Parcelable.Creator<BotFAQ> CREATOR = new Parcelable.Creator<BotFAQ>() { // from class: com.freshchat.consumer.sdk.beans.BotFAQ.1
        @Override // android.os.Parcelable.Creator
        public BotFAQ createFromParcel(Parcel parcel) {
            return new BotFAQ(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BotFAQ[] newArray(int i) {
            return new BotFAQ[i];
        }
    };
    private String alias;
    private String contentType;
    private String created;

    /* renamed from: id */
    private String f4096id;
    private TemplateContentPayloads templateContentPayloads;
    private String templateHash;
    private String updated;

    public BotFAQ(Parcel parcel) {
        this.f4096id = parcel.readString();
        this.alias = parcel.readString();
        this.contentType = parcel.readString();
        try {
            String readString = parcel.readString();
            if (C1626as.isEmpty(readString)) {
                this.templateContentPayloads = (TemplateContentPayloads) C1597ab.m40337in().fromJson(readString, (Class<Object>) TemplateContentPayloads.class);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        this.created = parcel.readString();
        this.updated = parcel.readString();
        this.templateHash = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAlias() {
        return this.alias;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getCreated() {
        return this.created;
    }

    public String getId() {
        return this.f4096id;
    }

    public TemplateContentPayloads getTemplateContentPayloads() {
        return this.templateContentPayloads;
    }

    public String getTemplateHash() {
        return this.templateHash;
    }

    public String getUpdated() {
        return this.updated;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f4096id);
        parcel.writeString(this.alias);
        parcel.writeString(this.contentType);
        parcel.writeString(this.templateContentPayloads != null ? C1597ab.m40337in().toJson(this.templateContentPayloads) : null);
        parcel.writeString(this.created);
        parcel.writeString(this.updated);
        parcel.writeString(this.templateHash);
    }
}
