package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.dash.DashSegmentIndex;
import com.google.android.exoplayer2.source.dash.manifest.SegmentBase;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/Representation.class */
public abstract class Representation {
    public static final long REVISION_ID_DEFAULT = -1;
    public final String baseUrl;
    public final String contentId;
    public final Format format;
    public final List<Descriptor> inbandEventStreams;
    private final RangedUri initializationUri;
    public final long presentationTimeOffsetUs;
    public final long revisionId;

    private Representation(String str, long j, Format format, String str2, SegmentBase segmentBase, List<Descriptor> list) {
        this.contentId = str;
        this.revisionId = j;
        this.format = format;
        this.baseUrl = str2;
        this.inbandEventStreams = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.initializationUri = segmentBase.getInitialization(this);
        this.presentationTimeOffsetUs = segmentBase.getPresentationTimeOffsetUs();
    }

    public static Representation newInstance(String str, long j, Format format, String str2, SegmentBase segmentBase) {
        return newInstance(str, j, format, str2, segmentBase, null);
    }

    public static Representation newInstance(String str, long j, Format format, String str2, SegmentBase segmentBase, List<Descriptor> list) {
        return newInstance(str, j, format, str2, segmentBase, list, null);
    }

    public static Representation newInstance(String str, long j, Format format, String str2, SegmentBase segmentBase, List<Descriptor> list, String str3) {
        if (segmentBase instanceof SegmentBase.SingleSegmentBase) {
            return new SingleSegmentRepresentation(str, j, format, str2, (SegmentBase.SingleSegmentBase) segmentBase, list, str3, -1L);
        }
        if (!(segmentBase instanceof SegmentBase.MultiSegmentBase)) {
            throw new IllegalArgumentException("segmentBase must be of type SingleSegmentBase or MultiSegmentBase");
        }
        return new MultiSegmentRepresentation(str, j, format, str2, (SegmentBase.MultiSegmentBase) segmentBase, list);
    }

    public abstract String getCacheKey();

    public abstract DashSegmentIndex getIndex();

    public abstract RangedUri getIndexUri();

    public RangedUri getInitializationUri() {
        return this.initializationUri;
    }
}
