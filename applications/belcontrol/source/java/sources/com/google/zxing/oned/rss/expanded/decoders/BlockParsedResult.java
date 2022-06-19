package com.google.zxing.oned.rss.expanded.decoders;
/* loaded from: classes-dex2jar.jar:com/google/zxing/oned/rss/expanded/decoders/BlockParsedResult.class */
public final class BlockParsedResult {
    private final DecodedInformation decodedInformation;
    private final boolean finished;

    public BlockParsedResult(DecodedInformation decodedInformation, boolean z) {
        this.finished = z;
        this.decodedInformation = decodedInformation;
    }

    public BlockParsedResult(boolean z) {
        this(null, z);
    }

    public DecodedInformation getDecodedInformation() {
        return this.decodedInformation;
    }

    public boolean isFinished() {
        return this.finished;
    }
}
