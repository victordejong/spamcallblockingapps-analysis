package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/RequestPaymentConfiguration.class */
public class RequestPaymentConfiguration {
    private Payer payer;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/RequestPaymentConfiguration$Payer.class */
    public enum Payer {
        Requester,
        BucketOwner
    }

    public RequestPaymentConfiguration(Payer payer) {
        this.payer = payer;
    }

    public Payer getPayer() {
        return this.payer;
    }

    public void setPayer(Payer payer) {
        this.payer = payer;
    }
}
