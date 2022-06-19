package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1629av;
import com.freshchat.consumer.sdk.p062l.C1775j;
/* renamed from: com.freshchat.consumer.sdk.k.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/k.class */
public class C1748k extends AbstractC1735a {

    /* renamed from: qb */
    private final C1775j f4560qb = new C1775j();

    /* renamed from: qc */
    private String f4561qc;

    public C1748k(Context context) {
        super(context);
    }

    /* renamed from: aK */
    public boolean m39719aK(String str) {
        if (C1626as.isEmpty(str)) {
            return false;
        }
        return C1629av.m40215aK(str.trim());
    }

    /* renamed from: bi */
    public String m39718bi() {
        if (C1626as.isEmpty(this.f4561qc)) {
            this.f4561qc = this.f4560qb.m39598ce(getContext());
        }
        return this.f4561qc;
    }

    /* renamed from: bq */
    public void m39717bq(String str) {
        this.f4561qc = str.trim();
        this.f4560qb.m39601D(getContext(), this.f4561qc);
    }
}
