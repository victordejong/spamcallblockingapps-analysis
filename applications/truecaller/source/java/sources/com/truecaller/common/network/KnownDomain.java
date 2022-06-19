package com.truecaller.common.network;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\u0004j\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/common/network/KnownDomain;", "", "", "toString", "()Ljava/lang/String;", "value", "Ljava/lang/String;", "getValue", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "DOMAIN_REGION_1", "DOMAIN_OTHER_REGIONS", "common-network_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/network/KnownDomain.class */
public enum KnownDomain {
    DOMAIN_REGION_1("eu"),
    DOMAIN_OTHER_REGIONS("noneu");
    
    private final String value;

    KnownDomain(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
