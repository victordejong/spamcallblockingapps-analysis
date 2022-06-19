package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/rss/expanded/decoders/CurrentParsingState.class */
final class CurrentParsingState {
    private int position = 0;
    private State encoding = State.NUMERIC;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State.class */
    public enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    public int getPosition() {
        return this.position;
    }

    public void incrementPosition(int i) {
        this.position += i;
    }

    public boolean isAlpha() {
        return this.encoding == State.ALPHA;
    }

    public boolean isIsoIec646() {
        return this.encoding == State.ISO_IEC_646;
    }

    boolean isNumeric() {
        return this.encoding == State.NUMERIC;
    }

    public void setAlpha() {
        this.encoding = State.ALPHA;
    }

    public void setIsoIec646() {
        this.encoding = State.ISO_IEC_646;
    }

    public void setNumeric() {
        this.encoding = State.NUMERIC;
    }

    public void setPosition(int i) {
        this.position = i;
    }
}
