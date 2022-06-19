package com.freshchat.consumer.sdk.p061k;

import com.freshchat.consumer.sdk.p056i.AbstractCountDownTimerC1566d;
/* renamed from: com.freshchat.consumer.sdk.k.x */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/x.class */
public class CountDownTimerC1762x extends AbstractCountDownTimerC1566d {

    /* renamed from: rD */
    public final /* synthetic */ C1761w f4601rD;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CountDownTimerC1762x(C1761w c1761w, long j) {
        super(j);
        this.f4601rD = c1761w;
    }

    @Override // com.freshchat.consumer.sdk.p056i.AbstractCountDownTimerC1566d
    public void execute() {
        String str;
        C1761w c1761w = this.f4601rD;
        str = c1761w.f4600rj;
        if (!c1761w.m39636bz(str)) {
            return;
        }
        this.f4601rD.mo39621jd();
    }
}
