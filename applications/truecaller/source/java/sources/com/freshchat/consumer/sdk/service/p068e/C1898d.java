package com.freshchat.consumer.sdk.service.p068e;
/* renamed from: com.freshchat.consumer.sdk.service.e.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/d.class */
public class C1898d implements AbstractC1906j {

    /* renamed from: gi */
    private EnumC1899a f4743gi = EnumC1899a.NORMAL;
    private int src;

    /* renamed from: com.freshchat.consumer.sdk.service.e.d$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/d$a.class */
    public enum EnumC1899a {
        IMMEDIATE,
        NORMAL,
        LAID_BACK
    }

    /* renamed from: b */
    public void m39339b(EnumC1899a enumC1899a) {
        this.f4743gi = enumC1899a;
    }

    /* renamed from: dD */
    public EnumC1899a m39338dD() {
        return this.f4743gi;
    }

    /* renamed from: dE */
    public int m39337dE() {
        return this.src;
    }

    /* renamed from: p */
    public void m39336p(int i) {
        this.src = i;
    }
}
