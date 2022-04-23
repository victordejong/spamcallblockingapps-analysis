package androidx.media2.exoplayer.external.source.hls.playlist;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.C0463C;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist.class */
public final class HlsMediaPlaylist extends HlsPlaylist {
    public static final int PLAYLIST_TYPE_EVENT = 2;
    public static final int PLAYLIST_TYPE_UNKNOWN = 0;
    public static final int PLAYLIST_TYPE_VOD = 1;
    public final int discontinuitySequence;
    public final long durationUs;
    public final boolean hasDiscontinuitySequence;
    public final boolean hasEndTag;
    public final boolean hasProgramDateTime;
    public final long mediaSequence;
    public final int playlistType;
    @Nullable
    public final DrmInitData protectionSchemes;
    public final List<Segment> segments;
    public final long startOffsetUs;
    public final long startTimeUs;
    public final long targetDurationUs;
    public final int version;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$PlaylistType.class */
    public @interface PlaylistType {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment.class */
    public static final class Segment implements Comparable<Long> {
        public final long byterangeLength;
        public final long byterangeOffset;
        @Nullable
        public final DrmInitData drmInitData;
        public final long durationUs;
        @Nullable
        public final String encryptionIV;
        @Nullable
        public final String fullSegmentEncryptionKeyUri;
        public final boolean hasGapTag;
        @Nullable
        public final Segment initializationSegment;
        public final int relativeDiscontinuitySequence;
        public final long relativeStartTimeUs;
        public final String title;
        public final String url;

        public Segment(String str, long j, long j2, String str2, String str3) {
            this(str, null, "", 0L, -1, C0463C.TIME_UNSET, null, str2, str3, j, j2, false);
        }

        public Segment(String str, @Nullable Segment segment, String str2, long j, int i, long j2, @Nullable DrmInitData drmInitData, @Nullable String str3, @Nullable String str4, long j3, long j4, boolean z) {
            this.url = str;
            this.initializationSegment = segment;
            this.title = str2;
            this.durationUs = j;
            this.relativeDiscontinuitySequence = i;
            this.relativeStartTimeUs = j2;
            this.drmInitData = drmInitData;
            this.fullSegmentEncryptionKeyUri = str3;
            this.encryptionIV = str4;
            this.byterangeOffset = j3;
            this.byterangeLength = j4;
            this.hasGapTag = z;
        }

        public int compareTo(@NonNull Long l) {
            return this.relativeStartTimeUs > l.longValue() ? 1 : this.relativeStartTimeUs < l.longValue() ? -1 : 0;
        }
    }

    public HlsMediaPlaylist(int i, String str, List<String> list, long j, long j2, boolean z, int i2, long j3, int i3, long j4, boolean z2, boolean z3, boolean z4, @Nullable DrmInitData drmInitData, List<Segment> list2) {
        super(str, list, z2);
        this.playlistType = i;
        this.startTimeUs = j2;
        this.hasDiscontinuitySequence = z;
        this.discontinuitySequence = i2;
        this.mediaSequence = j3;
        this.version = i3;
        this.targetDurationUs = j4;
        this.hasEndTag = z3;
        this.hasProgramDateTime = z4;
        this.protectionSchemes = drmInitData;
        this.segments = Collections.unmodifiableList(list2);
        if (!list2.isEmpty()) {
            Segment segment = list2.get(list2.size() - 1);
            this.durationUs = segment.relativeStartTimeUs + segment.durationUs;
        } else {
            this.durationUs = 0L;
        }
        if (j == C0463C.TIME_UNSET) {
            j = C0463C.TIME_UNSET;
        } else if (j < 0) {
            j = this.durationUs + j;
        }
        this.startOffsetUs = j;
    }

    @Override // androidx.media2.exoplayer.external.offline.FilterableManifest
    public HlsPlaylist copy(List<StreamKey> list) {
        return this;
    }

    public HlsMediaPlaylist copyWith(long j, int i) {
        return new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, j, true, i, this.mediaSequence, this.version, this.targetDurationUs, this.hasIndependentSegments, this.hasEndTag, this.hasProgramDateTime, this.protectionSchemes, this.segments);
    }

    public HlsMediaPlaylist copyWithEndTag() {
        return this.hasEndTag ? this : new HlsMediaPlaylist(this.playlistType, this.baseUri, this.tags, this.startOffsetUs, this.startTimeUs, this.hasDiscontinuitySequence, this.discontinuitySequence, this.mediaSequence, this.version, this.targetDurationUs, this.hasIndependentSegments, true, this.hasProgramDateTime, this.protectionSchemes, this.segments);
    }

    public long getEndTimeUs() {
        return this.startTimeUs + this.durationUs;
    }

    public boolean isNewerThan(HlsMediaPlaylist hlsMediaPlaylist) {
        boolean z = true;
        if (hlsMediaPlaylist != null) {
            long j = this.mediaSequence;
            long j2 = hlsMediaPlaylist.mediaSequence;
            if (j > j2) {
                z = true;
            } else if (j < j2) {
                return false;
            } else {
                int size = this.segments.size();
                int size2 = hlsMediaPlaylist.segments.size();
                z = true;
                if (size <= size2) {
                    z = size == size2 && this.hasEndTag && !hlsMediaPlaylist.hasEndTag;
                }
            }
        }
        return z;
    }
}
