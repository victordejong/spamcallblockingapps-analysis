package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import java.util.LinkedHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/FullSegmentEncryptionKeyCache.class */
public final class FullSegmentEncryptionKeyCache {

    /* renamed from: a */
    private final LinkedHashMap<Uri, byte[]> f16418a;

    public FullSegmentEncryptionKeyCache(final int i) {
        this.f16418a = new LinkedHashMap<Uri, byte[]>(i + 1, 1.0f, false) { // from class: com.google.android.exoplayer2.source.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i;
            }
        };
    }

    /* renamed from: a */
    public byte[] m20097a(Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.f16418a.get(uri);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public byte[] m20096b(Uri uri, byte[] bArr) {
        return (byte[]) this.f16418a.put(C5508e.m18911e(uri), C5508e.m18911e(bArr));
    }

    /* renamed from: c */
    public byte[] m20095c(Uri uri) {
        return this.f16418a.remove(C5508e.m18911e(uri));
    }
}
