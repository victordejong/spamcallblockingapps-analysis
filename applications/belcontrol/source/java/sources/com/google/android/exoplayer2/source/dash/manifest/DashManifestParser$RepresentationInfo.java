package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo.class */
public final class DashManifestParser$RepresentationInfo {
    public final String baseUrl;
    public final ArrayList<DrmInitData.SchemeData> drmSchemeDatas;
    public final String drmSchemeType;
    public final Format format;
    public final ArrayList<Descriptor> inbandEventStreams;
    public final long revisionId;
    public final SegmentBase segmentBase;

    public DashManifestParser$RepresentationInfo(Format format, String str, SegmentBase segmentBase, String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<Descriptor> arrayList2, long j) {
        this.format = format;
        this.baseUrl = str;
        this.segmentBase = segmentBase;
        this.drmSchemeType = str2;
        this.drmSchemeDatas = arrayList;
        this.inbandEventStreams = arrayList2;
        this.revisionId = j;
    }
}
