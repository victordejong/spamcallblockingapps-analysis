package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.Chunk;
import com.google.android.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist$HlsUrl;
import com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist;
import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker;
import com.google.android.exoplayer2.trackselection.TrackSelection;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsChunkSource.class */
public class HlsChunkSource {
    private final DataSource encryptionDataSource;
    private byte[] encryptionIv;
    private String encryptionIvString;
    private byte[] encryptionKey;
    private Uri encryptionKeyUri;
    private HlsMasterPlaylist$HlsUrl expectedPlaylistUrl;
    private final HlsExtractorFactory extractorFactory;
    private IOException fatalError;
    private boolean independentSegments;
    private boolean isTimestampMaster;
    private long liveEdgeInPeriodTimeUs = C0515C.TIME_UNSET;
    private final DataSource mediaDataSource;
    private final List<Format> muxedCaptionFormats;
    private final HlsPlaylistTracker playlistTracker;
    private byte[] scratchSpace;
    private boolean seenExpectedPlaylistError;
    private final TimestampAdjusterProvider timestampAdjusterProvider;
    private final TrackGroup trackGroup;
    private TrackSelection trackSelection;
    private final HlsMasterPlaylist$HlsUrl[] variants;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder.class */
    public static final class HlsChunkHolder {
        public Chunk chunk;
        public boolean endOfStream;
        public HlsMasterPlaylist$HlsUrl playlist;

        public HlsChunkHolder() {
            clear();
        }

        public void clear() {
            this.chunk = null;
            this.endOfStream = false;
            this.playlist = null;
        }
    }

    public HlsChunkSource(HlsExtractorFactory hlsExtractorFactory, HlsPlaylistTracker hlsPlaylistTracker, HlsMasterPlaylist$HlsUrl[] hlsMasterPlaylist$HlsUrlArr, HlsDataSourceFactory hlsDataSourceFactory, TimestampAdjusterProvider timestampAdjusterProvider, List<Format> list) {
        this.extractorFactory = hlsExtractorFactory;
        this.playlistTracker = hlsPlaylistTracker;
        this.variants = hlsMasterPlaylist$HlsUrlArr;
        this.timestampAdjusterProvider = timestampAdjusterProvider;
        this.muxedCaptionFormats = list;
        Format[] formatArr = new Format[hlsMasterPlaylist$HlsUrlArr.length];
        int[] iArr = new int[hlsMasterPlaylist$HlsUrlArr.length];
        for (int i = 0; i < hlsMasterPlaylist$HlsUrlArr.length; i++) {
            formatArr[i] = hlsMasterPlaylist$HlsUrlArr[i].format;
            iArr[i] = i;
        }
        this.mediaDataSource = hlsDataSourceFactory.createDataSource(1);
        this.encryptionDataSource = hlsDataSourceFactory.createDataSource(3);
        TrackGroup trackGroup = new TrackGroup(formatArr);
        this.trackGroup = trackGroup;
        this.trackSelection = new InitializationTrackSelection(trackGroup, iArr);
    }

    private void clearEncryptionData() {
        this.encryptionKeyUri = null;
        this.encryptionKey = null;
        this.encryptionIvString = null;
        this.encryptionIv = null;
    }

    private EncryptionKeyChunk newEncryptionKeyChunk(Uri uri, String str, int i, int i2, Object obj) {
        return new EncryptionKeyChunk(this.encryptionDataSource, new DataSpec(uri, 0L, -1L, null, 1), this.variants[i].format, i2, obj, this.scratchSpace, str);
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    private long resolveTimeToLiveEdgeUs(long j) {
        long j2 = this.liveEdgeInPeriodTimeUs;
        char c = 1;
        if (j2 != C0515C.TIME_UNSET) {
            c = j2 - j;
        }
        return c;
    }

    private void setEncryptionData(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(Util.toLowerInvariant(str).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (16 - byteArray.length) + length, byteArray.length - length);
        this.encryptionKeyUri = uri;
        this.encryptionKey = bArr;
        this.encryptionIvString = str;
        this.encryptionIv = bArr2;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private void updateLiveEdgeTimeUs(HlsMediaPlaylist hlsMediaPlaylist) {
        this.liveEdgeInPeriodTimeUs = hlsMediaPlaylist.hasEndTag ? (char) 1 : hlsMediaPlaylist.getEndTimeUs() - this.playlistTracker.getInitialStartTimeUs();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020f  */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v118, types: [long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v133, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getNextChunk(com.google.android.exoplayer2.source.hls.HlsMediaChunk r27, long r28, long r30, com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder r32) {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsChunkSource.getNextChunk(com.google.android.exoplayer2.source.hls.HlsMediaChunk, long, long, com.google.android.exoplayer2.source.hls.HlsChunkSource$HlsChunkHolder):void");
    }

    public TrackGroup getTrackGroup() {
        return this.trackGroup;
    }

    public TrackSelection getTrackSelection() {
        return this.trackSelection;
    }

    public void maybeThrowError() {
        IOException iOException = this.fatalError;
        if (iOException == null) {
            HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl = this.expectedPlaylistUrl;
            if (hlsMasterPlaylist$HlsUrl == null || !this.seenExpectedPlaylistError) {
                return;
            }
            this.playlistTracker.maybeThrowPlaylistRefreshError(hlsMasterPlaylist$HlsUrl);
            return;
        }
        throw iOException;
    }

    public void onChunkLoadCompleted(Chunk chunk) {
        if (chunk instanceof EncryptionKeyChunk) {
            EncryptionKeyChunk encryptionKeyChunk = (EncryptionKeyChunk) chunk;
            this.scratchSpace = encryptionKeyChunk.getDataHolder();
            setEncryptionData(((Chunk) encryptionKeyChunk).dataSpec.uri, encryptionKeyChunk.iv, encryptionKeyChunk.getResult());
        }
    }

    public boolean onChunkLoadError(Chunk chunk, boolean z, IOException iOException) {
        boolean z2;
        if (z) {
            TrackSelection trackSelection = this.trackSelection;
            if (ChunkedTrackBlacklistUtil.maybeBlacklistTrack(trackSelection, trackSelection.indexOf(this.trackGroup.indexOf(chunk.trackFormat)), iOException)) {
                z2 = true;
                return z2;
            }
        }
        z2 = false;
        return z2;
    }

    public boolean onPlaylistError(HlsMasterPlaylist$HlsUrl hlsMasterPlaylist$HlsUrl, boolean z) {
        int indexOf;
        int indexOf2 = this.trackGroup.indexOf(hlsMasterPlaylist$HlsUrl.format);
        if (indexOf2 == -1 || (indexOf = this.trackSelection.indexOf(indexOf2)) == -1) {
            return true;
        }
        this.seenExpectedPlaylistError = (this.expectedPlaylistUrl == hlsMasterPlaylist$HlsUrl) | this.seenExpectedPlaylistError;
        boolean z2 = true;
        if (z) {
            z2 = this.trackSelection.blacklist(indexOf, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        }
        return z2;
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
