package org.spongycastle.crypto.tls;

import java.util.Vector;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSReassembler.class */
class DTLSReassembler {
    private byte[] body;
    private Vector missing = new Vector();
    private short msg_type;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/DTLSReassembler$Range.class */
    private static class Range {
        private int end;
        private int start;

        Range(int i, int i2) {
            this.start = i;
            this.end = i2;
        }

        public int getEnd() {
            return this.end;
        }

        public int getStart() {
            return this.start;
        }

        public void setEnd(int i) {
            this.end = i;
        }

        public void setStart(int i) {
            this.start = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTLSReassembler(short s, int i) {
        this.msg_type = s;
        this.body = new byte[i];
        this.missing.addElement(new Range(0, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void contributeFragment(short s, int i, byte[] bArr, int i2, int i3, int i4) {
        int i5 = i3 + i4;
        if (this.msg_type == s && this.body.length == i && i5 <= i) {
            int i6 = 0;
            if (i4 != 0) {
                while (i6 < this.missing.size()) {
                    Range range = (Range) this.missing.elementAt(i6);
                    if (range.getStart() < i5) {
                        int i7 = i6;
                        if (range.getEnd() > i3) {
                            int max = Math.max(range.getStart(), i3);
                            int min = Math.min(range.getEnd(), i5);
                            System.arraycopy(bArr, (i2 + max) - i3, this.body, max, min - max);
                            if (max != range.getStart()) {
                                i7 = i6;
                                if (min != range.getEnd()) {
                                    i7 = i6 + 1;
                                    this.missing.insertElementAt(new Range(min, range.getEnd()), i7);
                                }
                                range.setEnd(max);
                            } else if (min == range.getEnd()) {
                                this.missing.removeElementAt(i6);
                                i7 = i6 - 1;
                            } else {
                                range.setStart(min);
                                i7 = i6;
                            }
                        }
                        i6 = i7 + 1;
                    } else {
                        return;
                    }
                }
            } else if (i3 == 0 && !this.missing.isEmpty() && ((Range) this.missing.firstElement()).getEnd() == 0) {
                this.missing.removeElementAt(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getBodyIfComplete() {
        return this.missing.isEmpty() ? this.body : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getMsgType() {
        return this.msg_type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        this.missing.removeAllElements();
        this.missing.addElement(new Range(0, this.body.length));
    }
}
