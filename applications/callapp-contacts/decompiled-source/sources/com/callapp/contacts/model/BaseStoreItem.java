package com.callapp.contacts.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.callapp.framework.util.StringUtils;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/BaseStoreItem.class */
public abstract class BaseStoreItem implements Parcelable {
    private String newSku;
    private String sku;
    private String title;

    public BaseStoreItem() {
    }

    public BaseStoreItem(Parcel parcel) {
        this.sku = parcel.readString();
        this.newSku = parcel.readString();
        this.title = parcel.readString();
    }

    private void setNewSku(String str) {
        this.newSku = str;
    }

    public boolean containsSku(String str) {
        return StringUtils.c(str, this.sku, this.newSku);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseStoreItem baseStoreItem = (BaseStoreItem) obj;
        return Objects.equals(this.sku, baseStoreItem.sku) && Objects.equals(this.newSku, baseStoreItem.newSku) && Objects.equals(this.title, baseStoreItem.title);
    }

    public String getSku() {
        return StringUtils.b((CharSequence) this.newSku) ? this.newSku : this.sku;
    }

    public String getTitle() {
        return this.title;
    }

    public int hashCode() {
        return Objects.hash(this.sku, this.newSku, this.title);
    }

    public void setSku(String str) {
        this.sku = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.sku);
        parcel.writeString(this.newSku);
        parcel.writeString(this.title);
    }
}
