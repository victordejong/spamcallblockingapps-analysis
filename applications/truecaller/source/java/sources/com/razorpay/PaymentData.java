package com.razorpay;

import java.io.Serializable;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/razorpay/PaymentData.class */
public class PaymentData implements Serializable {
    private JSONObject data = new JSONObject();
    private String externalWallet;
    private String orderId;
    private String paymentId;
    private String signature;
    private String userContact;
    private String userEmail;

    public JSONObject getData() {
        return this.data;
    }

    public String getExternalWallet() {
        return this.externalWallet;
    }

    public String getOrderId() {
        return this.orderId;
    }

    public String getPaymentId() {
        return this.paymentId;
    }

    public String getSignature() {
        return this.signature;
    }

    public String getUserContact() {
        return this.userContact;
    }

    public String getUserEmail() {
        return this.userEmail;
    }

    public void setData(JSONObject jSONObject) {
        this.data = jSONObject;
    }

    public void setExternalWallet(String str) {
        this.externalWallet = str;
    }

    public void setOrderId(String str) {
        this.orderId = str;
    }

    public void setPaymentId(String str) {
        this.paymentId = str;
    }

    public void setSignature(String str) {
        this.signature = str;
    }

    public void setUserContact(String str) {
        this.userContact = str;
    }

    public void setUserEmail(String str) {
        this.userEmail = str;
    }
}
