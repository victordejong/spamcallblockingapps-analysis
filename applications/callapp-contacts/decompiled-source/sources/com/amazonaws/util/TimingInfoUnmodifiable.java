package com.amazonaws.util;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfoUnmodifiable.class */
final class TimingInfoUnmodifiable extends TimingInfo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TimingInfoUnmodifiable(Long l, long j, Long l2) {
        super(l, j, l2);
    }

    @Override // com.amazonaws.util.TimingInfo
    public final TimingInfo d() {
        throw new UnsupportedOperationException();
    }
}
