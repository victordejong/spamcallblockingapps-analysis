package org.spongycastle.crypto.agreement.jpake;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/jpake/JPAKERound3Payload.class */
public class JPAKERound3Payload {
    private final BigInteger macTag;
    private final String participantId;

    public JPAKERound3Payload(String str, BigInteger bigInteger) {
        this.participantId = str;
        this.macTag = bigInteger;
    }

    public BigInteger getMacTag() {
        return this.macTag;
    }

    public String getParticipantId() {
        return this.participantId;
    }
}
