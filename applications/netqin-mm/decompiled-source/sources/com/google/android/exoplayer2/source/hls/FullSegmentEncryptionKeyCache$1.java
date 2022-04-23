package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;
import p131c.p161d.p170b.p188c.p190b1.p193e0.C2707c;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache$1.class */
public class FullSegmentEncryptionKeyCache$1 extends LinkedHashMap<Uri, byte[]> {
    public final /* synthetic */ C2707c this$0;
    public final /* synthetic */ int val$maxSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullSegmentEncryptionKeyCache$1(C2707c cVar, int i, float f, boolean z, int i2) {
        super(i, f, z);
        this.this$0 = cVar;
        this.val$maxSize = i2;
    }

    @Override // java.util.LinkedHashMap
    public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
        return size() > this.val$maxSize;
    }
}
