package com.revenuecat.purchases;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.billingclient.api.SkuDetails;
import com.revenuecat.purchases.parceler.SkuDetailsParceler;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Package.class */
public final class Package implements Parcelable {
    public static final Parcelable.Creator CREATOR = new Creator();
    private final String identifier;
    private final String offering;
    private final PackageType packageType;
    private final SkuDetails product;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/Package$Creator.class */
    public static final class Creator implements Parcelable.Creator {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            k.f(parcel, "in");
            return new Package(parcel.readString(), (PackageType) Enum.valueOf(PackageType.class, parcel.readString()), (SkuDetails) SkuDetailsParceler.INSTANCE.create(parcel), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            return new Package[i];
        }
    }

    public Package(String str, PackageType packageType, SkuDetails skuDetails, String str2) {
        k.f(str, "identifier");
        k.f(packageType, "packageType");
        k.f(skuDetails, "product");
        k.f(str2, "offering");
        this.identifier = str;
        this.packageType = packageType;
        this.product = skuDetails;
        this.offering = str2;
    }

    public static /* synthetic */ Package copy$default(Package r6, String str, PackageType packageType, SkuDetails skuDetails, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = r6.identifier;
        }
        if ((i & 2) != 0) {
            packageType = r6.packageType;
        }
        if ((i & 4) != 0) {
            skuDetails = r6.product;
        }
        if ((i & 8) != 0) {
            str2 = r6.offering;
        }
        return r6.copy(str, packageType, skuDetails, str2);
    }

    public final String component1() {
        return this.identifier;
    }

    public final PackageType component2() {
        return this.packageType;
    }

    public final SkuDetails component3() {
        return this.product;
    }

    public final String component4() {
        return this.offering;
    }

    public final Package copy(String str, PackageType packageType, SkuDetails skuDetails, String str2) {
        k.f(str, "identifier");
        k.f(packageType, "packageType");
        k.f(skuDetails, "product");
        k.f(str2, "offering");
        return new Package(str, packageType, skuDetails, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Package)) {
            return false;
        }
        Package r0 = (Package) obj;
        return k.b(this.identifier, r0.identifier) && k.b(this.packageType, r0.packageType) && k.b(this.product, r0.product) && k.b(this.offering, r0.offering);
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getOffering() {
        return this.offering;
    }

    public final PackageType getPackageType() {
        return this.packageType;
    }

    public final SkuDetails getProduct() {
        return this.product;
    }

    public int hashCode() {
        String str = this.identifier;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        PackageType packageType = this.packageType;
        int hashCode2 = packageType != null ? packageType.hashCode() : 0;
        SkuDetails skuDetails = this.product;
        int hashCode3 = skuDetails != null ? skuDetails.hashCode() : 0;
        String str2 = this.offering;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public String toString() {
        return "Package(identifier=" + this.identifier + ", packageType=" + this.packageType + ", product=" + this.product + ", offering=" + this.offering + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        k.f(parcel, "parcel");
        parcel.writeString(this.identifier);
        parcel.writeString(this.packageType.name());
        SkuDetailsParceler.INSTANCE.write(this.product, parcel, i);
        parcel.writeString(this.offering);
    }
}
