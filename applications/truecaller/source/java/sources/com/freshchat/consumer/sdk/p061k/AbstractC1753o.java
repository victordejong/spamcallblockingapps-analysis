package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.k.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/o.class */
public abstract class AbstractC1753o extends AbstractC1752n {

    /* renamed from: rs */
    private int f4574rs;

    public AbstractC1753o(Context context) {
        super(context);
    }

    /* renamed from: B */
    public Status m39701B(boolean z) {
        return z ? m39698jl() : mo39621jd();
    }

    /* renamed from: aa */
    public abstract void mo39641aa(int i);

    /* renamed from: b */
    public boolean m39700b(Status status) {
        int i;
        if (mo39629jk() || (i = this.f4574rs) == 0) {
            return true;
        }
        return status == Status.SUCCESS && i == 1;
    }

    /* renamed from: c */
    public Status m39699c(Status status) {
        if (this.f4573rr == status) {
            return null;
        }
        this.f4573rr = status;
        return status;
    }

    @Override // com.freshchat.consumer.sdk.p061k.AbstractC1752n
    /* renamed from: jd */
    public Status mo39621jd() {
        Status status;
        if (C1618al.m40261aS(getContext())) {
            mo39641aa(this.f4574rs + 1);
            status = this.f4574rs == 0 ? Status.INIT_LOADING : Status.LOADING_MORE;
        } else {
            status = Status.NO_INTERNET;
        }
        return m39699c(status);
    }

    /* renamed from: jk */
    public abstract boolean mo39629jk();

    /* renamed from: jl */
    public Status m39698jl() {
        Status status = this.f4573rr;
        if (status != Status.SUCCESS) {
            return status;
        }
        C1613ai.m40281i("BasePagingViewModel", " Load more data called in View model ");
        return mo39621jd();
    }

    /* renamed from: jm */
    public Status m39697jm() {
        if (!C1618al.m40261aS(getContext()) || this.f4573rr != Status.NO_INTERNET) {
            return null;
        }
        return mo39621jd();
    }

    /* renamed from: jn */
    public void m39696jn() {
        this.f4574rs++;
    }

    /* renamed from: jo */
    public void m39695jo() {
        this.f4574rs = 0;
    }
}
