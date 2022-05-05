package com.privacystar.core.data.model;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.service.googleplay.IABConstants;
import io.realm.AbstractC1920xfe39c49a;
import io.realm.RealmObject;
import io.realm.annotations.Index;
import io.realm.internal.RealmObjectProxy;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/PlayStorePurchase.class */
public class PlayStorePurchase extends RealmObject implements Serializable, AbstractC1920xfe39c49a {
    @SerializedName(PlayStorePurchaseFields.AUTO_RENEWING)
    @Expose
    private Boolean autoRenewing;
    @SerializedName("orderId")
    @Expose
    private String orderId;
    @SerializedName("packageName")
    @Expose
    private String packageName;
    @SerializedName("productId")
    @Expose
    private String productId;
    @SerializedName("purchaseState")
    @Expose
    private Integer purchaseState;
    @SerializedName("purchaseTime")
    @Expose
    @Index
    private Long purchaseTime;
    @SerializedName("purchaseToken")
    @Expose
    private String purchaseToken;
    @SerializedName("signature")
    @Expose
    private String signature;

    public PlayStorePurchase() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public Boolean getAutoRenewing() {
        return realmGet$autoRenewing();
    }

    public String getOrderId() {
        return realmGet$orderId();
    }

    public String getPackageName() {
        return realmGet$packageName();
    }

    public String getProductId() {
        return realmGet$productId();
    }

    public Integer getPurchaseState() {
        return realmGet$purchaseState();
    }

    public IABConstants.PurchaseState getPurchaseStateEnum() {
        return IABConstants.PurchaseState.valueOf(realmGet$purchaseState().intValue());
    }

    public Long getPurchaseTime() {
        return realmGet$purchaseTime();
    }

    public String getPurchaseToken() {
        return realmGet$purchaseToken();
    }

    public String getSignature() {
        return realmGet$signature();
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public Boolean realmGet$autoRenewing() {
        return this.autoRenewing;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public String realmGet$orderId() {
        return this.orderId;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public String realmGet$packageName() {
        return this.packageName;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public String realmGet$productId() {
        return this.productId;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public Integer realmGet$purchaseState() {
        return this.purchaseState;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public Long realmGet$purchaseTime() {
        return this.purchaseTime;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public String realmGet$purchaseToken() {
        return this.purchaseToken;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public String realmGet$signature() {
        return this.signature;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$autoRenewing(Boolean bool) {
        this.autoRenewing = bool;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$orderId(String str) {
        this.orderId = str;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$packageName(String str) {
        this.packageName = str;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$productId(String str) {
        this.productId = str;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseState(Integer num) {
        this.purchaseState = num;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseTime(Long l) {
        this.purchaseTime = l;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$purchaseToken(String str) {
        this.purchaseToken = str;
    }

    @Override // io.realm.AbstractC1920xfe39c49a
    public void realmSet$signature(String str) {
        this.signature = str;
    }

    public void setAutoRenewing(Boolean bool) {
        realmSet$autoRenewing(bool);
    }

    public void setOrderId(String str) {
        realmSet$orderId(str);
    }

    public void setPackageName(String str) {
        realmSet$packageName(str);
    }

    public void setProductId(String str) {
        realmSet$productId(str);
    }

    public void setPurchaseState(Integer num) {
        realmSet$purchaseState(num);
    }

    public void setPurchaseStateEnum(IABConstants.PurchaseState purchaseState) {
        realmSet$purchaseState(Integer.valueOf(purchaseState.getValue()));
    }

    public void setPurchaseTime(Long l) {
        realmSet$purchaseTime(l);
    }

    public void setPurchaseToken(String str) {
        realmSet$purchaseToken(str);
    }

    public void setSignature(String str) {
        realmSet$signature(str);
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public PlayStorePurchase withPackageName(String str) {
        realmSet$packageName(str);
        return this;
    }

    public PlayStorePurchase withPurchaseTime(Long l) {
        realmSet$purchaseTime(l);
        return this;
    }

    public PlayStorePurchase withPurchaseToken(String str) {
        realmSet$purchaseToken(str);
        return this;
    }

    public PlayStorePurchase withSku(String str) {
        realmSet$productId(str);
        return this;
    }
}
