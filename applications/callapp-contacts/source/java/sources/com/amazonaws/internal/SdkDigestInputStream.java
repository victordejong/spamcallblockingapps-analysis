package com.amazonaws.internal;

import android.support.p008v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/SdkDigestInputStream.class */
public class SdkDigestInputStream extends DigestInputStream implements MetricAware {

    /* renamed from: a */
    static final /* synthetic */ boolean f12091a = true;

    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override // com.amazonaws.internal.MetricAware
    @Deprecated
    public final boolean isMetricActivated() {
        if (this.in instanceof MetricAware) {
            return ((MetricAware) this.in).isMetricActivated();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        if (j <= 0) {
            return j;
        }
        int min = (int) Math.min((long) PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, (long) j);
        byte[] bArr = new byte[min];
        char c = j;
        while (true) {
            char c2 = c;
            int i = (c2 > 0L ? 1 : (c2 == 0L ? 0 : -1));
            if (i <= 0) {
                if (!f12091a && i != 0) {
                    throw new AssertionError();
                }
                return j;
            }
            int read = read(bArr, 0, (int) Math.min((long) c2, min));
            if (read == -1) {
                if (c2 != j) {
                    return j - c2;
                }
                return -1L;
            }
            c = c2 - read;
        }
    }
}
