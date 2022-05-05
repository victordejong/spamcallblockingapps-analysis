package androidx.media2.exoplayer.external.source.hls;

import android.net.Uri;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.chunk.BaseMediaChunkIterator;
import androidx.media2.exoplayer.external.source.chunk.Chunk;
import androidx.media2.exoplayer.external.source.chunk.DataChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunk;
import androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist;
import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker;
import androidx.media2.exoplayer.external.trackselection.BaseTrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.UriUtil;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource.class */
public class HlsChunkSource {
    public static final int KEY_CACHE_SIZE = 4;
    public final DataSource encryptionDataSource;
    public Uri expectedPlaylistUrl;
    public final HlsExtractorFactory extractorFactory;
    public IOException fatalError;
    public boolean independentSegments;
    public boolean isTimestampMaster;
    public final FullSegmentEncryptionKeyCache keyCache = new FullSegmentEncryptionKeyCache();
    public long liveEdgeInPeriodTimeUs = C0463C.TIME_UNSET;
    public final DataSource mediaDataSource;
    public final List<Format> muxedCaptionFormats;
    public final Format[] playlistFormats;
    public final HlsPlaylistTracker playlistTracker;
    public final Uri[] playlistUrls;
    public byte[] scratchSpace;
    public boolean seenExpectedPlaylistError;
    public final TimestampAdjusterProvider timestampAdjusterProvider;
    public final TrackGroup trackGroup;
    public TrackSelection trackSelection;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk.class */
    public static final class EncryptionKeyChunk extends DataChunk {
        public byte[] result;

        public EncryptionKeyChunk(DataSource dataSource, DataSpec dataSpec, Format format, int i, Object obj, byte[] bArr) {
            super(dataSource, dataSpec, 3, format, i, obj, bArr);
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.DataChunk
        public void consume(byte[] bArr, int i) {
            this.result = Arrays.copyOf(bArr, i);
        }

        public byte[] getResult() {
            return this.result;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$FullSegmentEncryptionKeyCache.class */
    public static final class FullSegmentEncryptionKeyCache extends LinkedHashMap<Uri, byte[]> {
        public FullSegmentEncryptionKeyCache() {
            super(8, 1.0f, false);
        }

        @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
        public byte[] get(Object obj) {
            if (obj == null) {
                return null;
            }
            return (byte[]) super.get(obj);
        }

        public byte[] put(Uri uri, byte[] bArr) {
            return (byte[]) super.put((FullSegmentEncryptionKeyCache) uri, (Uri) ((byte[]) Assertions.checkNotNull(bArr)));
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
            return size() > 4;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsChunkHolder.class */
    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public Uri playlistUrl;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlistUrl = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$HlsMediaPlaylistSegmentIterator.class */
    public static final class HlsMediaPlaylistSegmentIterator extends BaseMediaChunkIterator {
        public final HlsMediaPlaylist playlist;
        public final long startOfPlaylistInPeriodUs;

        public HlsMediaPlaylistSegmentIterator(HlsMediaPlaylist hlsMediaPlaylist, long j, int i) {
            super(i, hlsMediaPlaylist.segments.size() - 1);
            this.playlist = hlsMediaPlaylist;
            this.startOfPlaylistInPeriodUs = j;
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            HlsMediaPlaylist.Segment segment = this.playlist.segments.get((int) getCurrentIndex());
            return this.startOfPlaylistInPeriodUs + segment.relativeStartTimeUs + segment.durationUs;
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.startOfPlaylistInPeriodUs + this.playlist.segments.get((int) getCurrentIndex()).relativeStartTimeUs;
        }

        @Override // androidx.media2.exoplayer.external.source.chunk.MediaChunkIterator
        public DataSpec getDataSpec() {
            checkInBounds();
            HlsMediaPlaylist.Segment segment = this.playlist.segments.get((int) getCurrentIndex());
            return new DataSpec(UriUtil.resolveToUri(this.playlist.baseUri, segment.url), segment.byterangeOffset, segment.byterangeLength, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsChunkSource$InitializationTrackSelection.class */
    public static final class InitializationTrackSelection extends BaseTrackSelection {
        public int selectedIndex;

        public InitializationTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
            this.selectedIndex = indexOf(trackGroup.getFormat(0));
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        public int getSelectedIndex() {
            return this.selectedIndex;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.BaseTrackSelection, androidx.media2.exoplayer.external.trackselection.TrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (isBlacklisted(this.selectedIndex, elapsedRealtime)) {
                for (int i = this.length - 1; i >= 0; i--) {
                    if (!isBlacklisted(i, elapsedRealtime)) {
                        this.selectedIndex = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, Uri[] uriArr, Format[] formatArr, HlsDataSourceFactory hlsDataSourceFactory, @Nullable TransferListener transferListener, TimestampAdjusterProvider timestampAdjusterProvider, List<Format> list) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.playlistUrls = uriArr;
        this.playlistFormats = formatArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.muxedCaptionFormats = list;
        this.mediaDataSource = hlsDataSourceFactory.createDataSource(1);
        if (transferListener != null) {
            this.mediaDataSource.addTransferListener(transferListener);
        }
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        this.trackGroup = new TrackGroup(formatArr);
        int[] iArr = new int[uriArr.length];
        for (int i = 0; i < uriArr.length; i++) {
            iArr[i] = i;
        }
        this.trackSelection = new InitializationTrackSelection(this.trackGroup, iArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private long getChunkMediaSequence(@androidx.annotation.Nullable androidx.media2.exoplayer.external.source.hls.HlsMediaChunk r8, boolean r9, androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist r10, long r11, long r13) {
        /*
            r7 = this;
            r0 = r8
            if (r0 == 0) goto L_0x0010
            r0 = r9
            if (r0 == 0) goto L_0x000b
            goto L_0x0010
        L_0x000b:
            r0 = r8
            long r0 = r0.getNextChunkIndex()
            return r0
        L_0x0010:
            r0 = r10
            long r0 = r0.durationUs
            r15 = r0
            r0 = r13
            r17 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0032
            r0 = r7
            boolean r0 = r0.independentSegments
            if (r0 == 0) goto L_0x002c
            r0 = r13
            r17 = r0
            goto L_0x0032
        L_0x002c:
            r0 = r8
            long r0 = r0.startTimeUs
            r17 = r0
        L_0x0032:
            r0 = r10
            boolean r0 = r0.hasEndTag
            if (r0 != 0) goto L_0x005c
            r0 = r17
            r1 = r15
            r2 = r11
            long r1 = r1 + r2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005c
            r0 = r10
            long r0 = r0.mediaSequence
            r13 = r0
            r0 = r10
            java.util.List<androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist$Segment> r0 = r0.segments
            int r0 = r0.size()
            long r0 = (long) r0
            r11 = r0
        L_0x0056:
            r0 = r13
            r1 = r11
            long r0 = r0 + r1
            return r0
        L_0x005c:
            r0 = r10
            java.util.List<androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist$Segment> r0 = r0.segments
            r19 = r0
            r0 = r7
            androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistTracker r0 = r0.playlistTracker
            boolean r0 = r0.isLive()
            if (r0 == 0) goto L_0x007a
            r0 = r8
            if (r0 != 0) goto L_0x0075
            goto L_0x007a
        L_0x0075:
            r0 = 0
            r9 = r0
            goto L_0x007c
        L_0x007a:
            r0 = 1
            r9 = r0
        L_0x007c:
            r0 = r19
            r1 = r17
            r2 = r11
            long r1 = r1 - r2
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r2 = 1
            r3 = r9
            int r0 = androidx.media2.exoplayer.external.util.Util.binarySearchFloor(r0, r1, r2, r3)
            long r0 = (long) r0
            r13 = r0
            r0 = r10
            long r0 = r0.mediaSequence
            r11 = r0
            goto L_0x0056
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsChunkSource.getChunkMediaSequence(androidx.media2.exoplayer.external.source.hls.HlsMediaChunk, boolean, androidx.media2.exoplayer.external.source.hls.playlist.HlsMediaPlaylist, long, long):long");
    }

    @Nullable
    public static Uri getFullEncryptionKeyUri(HlsMediaPlaylist hlsMediaPlaylist, @Nullable HlsMediaPlaylist.Segment segment) {
        String str;
        if (segment == null || (str = segment.fullSegmentEncryptionKeyUri) == null) {
            return null;
        }
        return UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, str);
    }

    @Nullable
    private Chunk maybeCreateEncryptionChunkFor(@Nullable Uri uri, int i) {
        if (uri == null) {
            return null;
        }
        if (this.keyCache.containsKey(uri)) {
            FullSegmentEncryptionKeyCache fullSegmentEncryptionKeyCache = this.keyCache;
            fullSegmentEncryptionKeyCache.put(uri, fullSegmentEncryptionKeyCache.remove(uri));
            return null;
        }
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec(uri, 0L, -1L, null, 1), this.playlistFormats[i], this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.scratchSpace);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        long j2 = this.liveEdgeInPeriodTimeUs;
        long j3 = C0463C.TIME_UNSET;
        if (j2 != C0463C.TIME_UNSET) {
            j3 = this.liveEdgeInPeriodTimeUs - j;
        }
        return j3;
    }

    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? C0463C.TIME_UNSET : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    public MediaChunkIterator[] createMediaChunkIterators(@Nullable HlsMediaChunk hlsMediaChunk, long j) {
        int indexOf = hlsMediaChunk == null ? -1 : this.trackGroup.indexOf(hlsMediaChunk.trackFormat);
        MediaChunkIterator[] mediaChunkIteratorArr = new MediaChunkIterator[this.trackSelection.length()];
        for (int i = 0; i < mediaChunkIteratorArr.length; i++) {
            int indexInTrackGroup = this.trackSelection.getIndexInTrackGroup(i);
            Uri uri = this.playlistUrls[indexInTrackGroup];
            if (!this.playlistTracker.isSnapshotValid(uri)) {
                mediaChunkIteratorArr[i] = MediaChunkIterator.EMPTY;
            } else {
                HlsMediaPlaylist playlistSnapshot = this.playlistTracker.getPlaylistSnapshot(uri, false);
                long initialStartTimeUs = playlistSnapshot.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
                long chunkMediaSequence = getChunkMediaSequence(hlsMediaChunk, indexInTrackGroup != indexOf, playlistSnapshot, initialStartTimeUs, j);
                long j2 = playlistSnapshot.mediaSequence;
                if (chunkMediaSequence < j2) {
                    mediaChunkIteratorArr[i] = MediaChunkIterator.EMPTY;
                } else {
                    mediaChunkIteratorArr[i] = new HlsMediaPlaylistSegmentIterator(playlistSnapshot, initialStartTimeUs, (int) (chunkMediaSequence - j2));
                }
            }
        }
        return mediaChunkIteratorArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0108  */
    /* JADX WARN: Type inference failed for: r0v12, types: [androidx.media2.exoplayer.external.trackselection.TrackSelection] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0, types: [androidx.media2.exoplayer.external.source.hls.HlsChunkSource] */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r28v1, types: [long] */
    /* JADX WARN: Type inference failed for: r28v2 */
    /* JADX WARN: Type inference failed for: r28v5 */
    /* JADX WARN: Unknown variable types count: 6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getNextChunk(long r20, long r22, java.util.List<androidx.media2.exoplayer.external.source.hls.HlsMediaChunk> r24, androidx.media2.exoplayer.external.source.hls.HlsChunkSource.HlsChunkHolder r25) {
        /*
            Method dump skipped, instructions count: 675
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.hls.HlsChunkSource.getNextChunk(long, long, java.util.List, androidx.media2.exoplayer.external.source.hls.HlsChunkSource$HlsChunkHolder):void");
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public TrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public boolean maybeBlacklistTrack(Chunk chunk, long j) {
        TrackSelection trackSelection = this.trackSelection;
        return trackSelection.blacklist(trackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), j);
    }

    public void maybeThrowError() throws IOException {
        IOException iOException = this.fatalError;
        if (iOException == null) {
            Uri uri = this.expectedPlaylistUrl;
            if (uri != null && this.seenExpectedPlaylistError) {
                this.playlistTracker.maybeThrowPlaylistRefreshError(uri);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            this.keyCache.put(encryptionKeyChunk.dataSpec.uri, encryptionKeyChunk.getResult());
        }
    }

    public boolean onPlaylistError(Uri uri, long j) {
        int indexOf;
        boolean z = false;
        int i = 0;
        while (true) {
            Uri[] uriArr = this.playlistUrls;
            if (i >= uriArr.length) {
                i = -1;
                break;
            } else if (uriArr[i].equals(uri)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1 || (indexOf = this.trackSelection.indexOf(i)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError = uri.equals(this.expectedPlaylistUrl) | this.seenExpectedPlaylistError;
        if (j == C0463C.TIME_UNSET || this.trackSelection.blacklist(indexOf, j)) {
            z = true;
        }
        return z;
    }

    public void reset() {
        this.fatalError = null;
    }

    public void selectTracks(TrackSelection trackSelection) {
        this.trackSelection = trackSelection;
    }

    public void setIsTimestampMaster(boolean z) {
        this.isTimestampMaster = z;
    }
}
