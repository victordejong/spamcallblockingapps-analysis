package org.spongycastle.cert.dane;

import org.spongycastle.util.Selector;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/dane/DANEEntrySelector.class */
public class DANEEntrySelector implements Selector {
    private final String domainName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DANEEntrySelector(String str) {
        this.domainName = str;
    }

    @Override // org.spongycastle.util.Selector
    public Object clone() {
        return this;
    }

    public String getDomainName() {
        return this.domainName;
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        return ((DANEEntry) obj).getDomainName().equals(this.domainName);
    }
}
