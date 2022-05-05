package org.spongycastle.openpgp;

import java.util.Iterator;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPOnePassSignatureList.class */
public class PGPOnePassSignatureList implements Iterable<PGPOnePassSignature> {
    PGPOnePassSignature[] sigs;

    public PGPOnePassSignatureList(PGPOnePassSignature pGPOnePassSignature) {
        this.sigs = new PGPOnePassSignature[1];
        this.sigs[0] = pGPOnePassSignature;
    }

    public PGPOnePassSignatureList(PGPOnePassSignature[] pGPOnePassSignatureArr) {
        this.sigs = new PGPOnePassSignature[pGPOnePassSignatureArr.length];
        System.arraycopy(pGPOnePassSignatureArr, 0, this.sigs, 0, pGPOnePassSignatureArr.length);
    }

    public PGPOnePassSignature get(int i) {
        return this.sigs[i];
    }

    public boolean isEmpty() {
        return this.sigs.length == 0;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPOnePassSignature> iterator() {
        return new Arrays.Iterator(this.sigs);
    }

    public int size() {
        return this.sigs.length;
    }
}
