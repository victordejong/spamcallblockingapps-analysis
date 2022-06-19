package com.google.android.exoplayer2.source.dash.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.util.UriUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/RangedUri.class */
public final class RangedUri {
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public RangedUri(String str, long j, long j2) {
        this.referenceUri = str == null ? "" : str;
        this.start = j;
        this.length = j2;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public RangedUri attemptMerge(RangedUri rangedUri, String str) {
        String resolveUriString = resolveUriString(str);
        if (rangedUri == null || !resolveUriString.equals(rangedUri.resolveUriString(str))) {
            return null;
        }
        long j = this.length;
        char c = 65535;
        if (j != -1) {
            long j2 = this.start;
            if (j2 + j == rangedUri.start) {
                long j3 = rangedUri.length;
                if (j3 != -1) {
                    c = j + j3;
                }
                return new RangedUri(resolveUriString, j2, c);
            }
        }
        long j4 = rangedUri.length;
        if (j4 == -1) {
            return null;
        }
        long j5 = rangedUri.start;
        if (j5 + j4 != this.start) {
            return null;
        }
        if (j != -1) {
            c = j4 + j;
        }
        return new RangedUri(resolveUriString, j5, c);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RangedUri.class != obj.getClass()) {
            return false;
        }
        RangedUri rangedUri = (RangedUri) obj;
        if (this.start != rangedUri.start || this.length != rangedUri.length || !this.referenceUri.equals(rangedUri.referenceUri)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31) + this.referenceUri.hashCode();
        }
        return this.hashCode;
    }

    public Uri resolveUri(String str) {
        return UriUtil.resolveToUri(str, this.referenceUri);
    }

    public String resolveUriString(String str) {
        return UriUtil.resolve(str, this.referenceUri);
    }

    public String toString() {
        return "RangedUri(referenceUri=" + this.referenceUri + ", start=" + this.start + ", length=" + this.length + ")";
    }
}
