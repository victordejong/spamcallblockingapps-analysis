package org.mozilla.javascript.regexp;

import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/regexp/REGlobalData.class */
class REGlobalData {
    REBackTrackData backTrackStackTop;

    /* renamed from: cp */
    int f835cp;
    boolean multiline;
    long[] parens;
    RECompiled regexp;
    int skipped;
    REProgState stateStackTop;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int parensIndex(int i) {
        return (int) this.parens[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int parensLength(int i) {
        return (int) (this.parens[i] >>> 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setParens(int i, int i2, int i3) {
        if (this.backTrackStackTop != null && this.backTrackStackTop.parens == this.parens) {
            this.parens = (long[]) this.parens.clone();
        }
        this.parens[i] = (i3 << 32) | (i2 & BodyPartID.bodyIdMax);
    }
}
