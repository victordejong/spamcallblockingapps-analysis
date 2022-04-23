package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.Map;
import java.util.TreeMap;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/BDSStateMap.class */
public class BDSStateMap implements Serializable {
    private final Map<Integer, BDS> bdsState = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(BDSStateMap bDSStateMap, XMSSMTParameters xMSSMTParameters, long j, byte[] bArr, byte[] bArr2) {
        for (Integer num : bDSStateMap.bdsState.keySet()) {
            this.bdsState.put(num, bDSStateMap.bdsState.get(num));
        }
        updateState(xMSSMTParameters, j, bArr, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDSStateMap(XMSSMTParameters xMSSMTParameters, long j, byte[] bArr, byte[] bArr2) {
        for (long j2 = 0; j2 < j; j2++) {
            updateState(xMSSMTParameters, j2, bArr, bArr2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder] */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3, types: [long] */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateState(org.spongycastle.pqc.crypto.xmss.XMSSMTParameters r10, long r11, byte[] r13, byte[] r14) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.BDSStateMap.updateState(org.spongycastle.pqc.crypto.xmss.XMSSMTParameters, long, byte[], byte[]):void");
    }

    public BDS get(int i) {
        return this.bdsState.get(Integers.valueOf(i));
    }

    public boolean isEmpty() {
        return this.bdsState.isEmpty();
    }

    public void put(int i, BDS bds) {
        this.bdsState.put(Integers.valueOf(i), bds);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setXMSS(XMSSParameters xMSSParameters) {
        for (Integer num : this.bdsState.keySet()) {
            BDS bds = this.bdsState.get(num);
            bds.setXMSS(xMSSParameters);
            bds.validate();
        }
    }

    public BDS update(int i, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        return this.bdsState.put(Integers.valueOf(i), this.bdsState.get(Integers.valueOf(i)).getNextState(bArr, bArr2, oTSHashAddress));
    }
}
