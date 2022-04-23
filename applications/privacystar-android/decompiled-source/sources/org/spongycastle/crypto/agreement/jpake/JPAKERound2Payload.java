package org.spongycastle.crypto.agreement.jpake;

import java.math.BigInteger;
import org.spongycastle.util.Arrays;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/jpake/JPAKERound2Payload.class */
public class JPAKERound2Payload {

    /* renamed from: a */
    private final BigInteger f1020a;
    private final BigInteger[] knowledgeProofForX2s;
    private final String participantId;

    public JPAKERound2Payload(String str, BigInteger bigInteger, BigInteger[] bigIntegerArr) {
        JPAKEUtil.validateNotNull(str, "participantId");
        JPAKEUtil.validateNotNull(bigInteger, "a");
        JPAKEUtil.validateNotNull(bigIntegerArr, "knowledgeProofForX2s");
        this.participantId = str;
        this.f1020a = bigInteger;
        this.knowledgeProofForX2s = Arrays.copyOf(bigIntegerArr, bigIntegerArr.length);
    }

    public BigInteger getA() {
        return this.f1020a;
    }

    public BigInteger[] getKnowledgeProofForX2s() {
        return Arrays.copyOf(this.knowledgeProofForX2s, this.knowledgeProofForX2s.length);
    }

    public String getParticipantId() {
        return this.participantId;
    }
}
