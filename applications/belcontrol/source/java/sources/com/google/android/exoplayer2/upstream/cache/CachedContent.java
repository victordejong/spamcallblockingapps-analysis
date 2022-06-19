package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CachedContent.class */
public final class CachedContent {
    private static final int VERSION_MAX = Integer.MAX_VALUE;
    private static final int VERSION_METADATA_INTRODUCED = 2;

    /* renamed from: id */
    public final int f3614id;
    public final String key;
    private boolean locked;
    private DefaultContentMetadata metadata = DefaultContentMetadata.EMPTY;
    private final TreeSet<SimpleCacheSpan> cachedSpans = new TreeSet<>();

    public CachedContent(int i, String str) {
        this.f3614id = i;
        this.key = str;
    }

    public static CachedContent readFromStream(int i, DataInputStream dataInputStream) {
        CachedContent cachedContent = new CachedContent(dataInputStream.readInt(), dataInputStream.readUTF());
        if (i < 2) {
            long readLong = dataInputStream.readLong();
            ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
            ContentMetadataInternal.setContentLength(contentMetadataMutations, readLong);
            cachedContent.applyMetadataMutations(contentMetadataMutations);
        } else {
            cachedContent.metadata = DefaultContentMetadata.readFromStream(dataInputStream);
        }
        return cachedContent;
    }

    public void addSpan(SimpleCacheSpan simpleCacheSpan) {
        this.cachedSpans.add(simpleCacheSpan);
    }

    public boolean applyMetadataMutations(ContentMetadataMutations contentMetadataMutations) {
        DefaultContentMetadata defaultContentMetadata = this.metadata;
        DefaultContentMetadata copyWithMutationsApplied = defaultContentMetadata.copyWithMutationsApplied(contentMetadataMutations);
        this.metadata = copyWithMutationsApplied;
        return !copyWithMutationsApplied.equals(defaultContentMetadata);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || CachedContent.class != obj.getClass()) {
            return false;
        }
        CachedContent cachedContent = (CachedContent) obj;
        if (this.f3614id != cachedContent.f3614id || !this.key.equals(cachedContent.key) || !this.cachedSpans.equals(cachedContent.cachedSpans) || !this.metadata.equals(cachedContent.metadata)) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public long getCachedBytesLength(long j, long j2) {
        SimpleCacheSpan span = getSpan(j);
        if (span.isHoleSpan()) {
            return -Math.min((long) (span.isOpenEnded() ? (char) 65535 : span.length), j2);
        }
        long j3 = j + j2;
        char c = span.position + span.length;
        char c2 = c;
        if (c < j3) {
            Iterator<SimpleCacheSpan> it = this.cachedSpans.tailSet(span, false).iterator();
            while (true) {
                c2 = c;
                if (!it.hasNext()) {
                    break;
                }
                SimpleCacheSpan next = it.next();
                long j4 = next.position;
                if (j4 <= c) {
                    c2 = Math.max((long) c, j4 + next.length);
                    c = c2;
                    if (c2 >= j3) {
                        break;
                    }
                } else {
                    c2 = c;
                    break;
                }
            }
        }
        return Math.min(c2 - j, j2);
    }

    public ContentMetadata getMetadata() {
        return this.metadata;
    }

    public SimpleCacheSpan getSpan(long j) {
        SimpleCacheSpan createLookup = SimpleCacheSpan.createLookup(this.key, j);
        SimpleCacheSpan floor = this.cachedSpans.floor(createLookup);
        if (floor == null || floor.position + floor.length <= j) {
            SimpleCacheSpan ceiling = this.cachedSpans.ceiling(createLookup);
            return ceiling == null ? SimpleCacheSpan.createOpenHole(this.key, j) : SimpleCacheSpan.createClosedHole(this.key, j, ceiling.position - j);
        }
        return floor;
    }

    public TreeSet<SimpleCacheSpan> getSpans() {
        return this.cachedSpans;
    }

    public int hashCode() {
        return (headerHashCode(Integer.MAX_VALUE) * 31) + this.cachedSpans.hashCode();
    }

    public int headerHashCode(int i) {
        int i2;
        int i3;
        int hashCode = (this.f3614id * 31) + this.key.hashCode();
        if (i < 2) {
            long contentLength = ContentMetadataInternal.getContentLength(this.metadata);
            i2 = hashCode * 31;
            i3 = (int) (contentLength ^ (contentLength >>> 32));
        } else {
            i2 = hashCode * 31;
            i3 = this.metadata.hashCode();
        }
        return i2 + i3;
    }

    public boolean isEmpty() {
        return this.cachedSpans.isEmpty();
    }

    public boolean isLocked() {
        return this.locked;
    }

    public boolean removeSpan(CacheSpan cacheSpan) {
        if (this.cachedSpans.remove(cacheSpan)) {
            cacheSpan.file.delete();
            return true;
        }
        return false;
    }

    public void setLocked(boolean z) {
        this.locked = z;
    }

    public SimpleCacheSpan touch(SimpleCacheSpan simpleCacheSpan) {
        Assertions.checkState(this.cachedSpans.remove(simpleCacheSpan));
        SimpleCacheSpan copyWithUpdatedLastAccessTime = simpleCacheSpan.copyWithUpdatedLastAccessTime(this.f3614id);
        if (simpleCacheSpan.file.renameTo(copyWithUpdatedLastAccessTime.file)) {
            this.cachedSpans.add(copyWithUpdatedLastAccessTime);
            return copyWithUpdatedLastAccessTime;
        }
        throw new Cache.CacheException("Renaming of " + simpleCacheSpan.file + " to " + copyWithUpdatedLastAccessTime.file + " failed.");
    }

    public void writeToStream(DataOutputStream dataOutputStream) {
        dataOutputStream.writeInt(this.f3614id);
        dataOutputStream.writeUTF(this.key);
        this.metadata.writeToStream(dataOutputStream);
    }
}
