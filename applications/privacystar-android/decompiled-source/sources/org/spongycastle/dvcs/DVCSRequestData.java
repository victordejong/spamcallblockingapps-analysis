package org.spongycastle.dvcs;

import org.spongycastle.asn1.dvcs.Data;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/dvcs/DVCSRequestData.class */
public abstract class DVCSRequestData {
    protected Data data;

    /* JADX INFO: Access modifiers changed from: protected */
    public DVCSRequestData(Data data) {
        this.data = data;
    }

    public Data toASN1Structure() {
        return this.data;
    }
}
