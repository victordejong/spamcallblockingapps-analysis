package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.UriUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement.class */
public class SsManifest$StreamElement {
    private static final String URL_PLACEHOLDER_BITRATE_1 = "{bitrate}";
    private static final String URL_PLACEHOLDER_BITRATE_2 = "{Bitrate}";
    private static final String URL_PLACEHOLDER_START_TIME_1 = "{start time}";
    private static final String URL_PLACEHOLDER_START_TIME_2 = "{start_time}";
    private final String baseUri;
    public final int chunkCount;
    private final List<Long> chunkStartTimes;
    private final long[] chunkStartTimesUs;
    private final String chunkTemplate;
    public final int displayHeight;
    public final int displayWidth;
    public final Format[] formats;
    public final String language;
    private final long lastChunkDurationUs;
    public final int maxHeight;
    public final int maxWidth;
    public final String name;
    public final String subType;
    public final long timescale;
    public final int type;

    public SsManifest$StreamElement(String str, String str2, int i, String str3, long j, String str4, int i2, int i3, int i4, int i5, String str5, Format[] formatArr, List<Long> list, long j2) {
        this(str, str2, i, str3, j, str4, i2, i3, i4, i5, str5, formatArr, list, Util.scaleLargeTimestamps(list, C0515C.MICROS_PER_SECOND, j), Util.scaleLargeTimestamp(j2, C0515C.MICROS_PER_SECOND, j));
    }

    private SsManifest$StreamElement(String str, String str2, int i, String str3, long j, String str4, int i2, int i3, int i4, int i5, String str5, Format[] formatArr, List<Long> list, long[] jArr, long j2) {
        this.baseUri = str;
        this.chunkTemplate = str2;
        this.type = i;
        this.subType = str3;
        this.timescale = j;
        this.name = str4;
        this.maxWidth = i2;
        this.maxHeight = i3;
        this.displayWidth = i4;
        this.displayHeight = i5;
        this.language = str5;
        this.formats = formatArr;
        this.chunkStartTimes = list;
        this.chunkStartTimesUs = jArr;
        this.lastChunkDurationUs = j2;
        this.chunkCount = list.size();
    }

    public Uri buildRequestUri(int i, int i2) {
        Assertions.checkState(this.formats != null);
        Assertions.checkState(this.chunkStartTimes != null);
        Assertions.checkState(i2 < this.chunkStartTimes.size());
        String num = Integer.toString(this.formats[i].bitrate);
        String l = this.chunkStartTimes.get(i2).toString();
        return UriUtil.resolveToUri(this.baseUri, this.chunkTemplate.replace(URL_PLACEHOLDER_BITRATE_1, num).replace(URL_PLACEHOLDER_BITRATE_2, num).replace(URL_PLACEHOLDER_START_TIME_1, l).replace(URL_PLACEHOLDER_START_TIME_2, l));
    }

    public SsManifest$StreamElement copy(Format[] formatArr) {
        return new SsManifest$StreamElement(this.baseUri, this.chunkTemplate, this.type, this.subType, this.timescale, this.name, this.maxWidth, this.maxHeight, this.displayWidth, this.displayHeight, this.language, formatArr, this.chunkStartTimes, this.chunkStartTimesUs, this.lastChunkDurationUs);
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public long getChunkDurationUs(int i) {
        char c;
        if (i == this.chunkCount - 1) {
            c = this.lastChunkDurationUs;
        } else {
            long[] jArr = this.chunkStartTimesUs;
            c = jArr[i + 1] - jArr[i];
        }
        return c;
    }

    public int getChunkIndex(long j) {
        return Util.binarySearchFloor(this.chunkStartTimesUs, j, true, true);
    }

    public long getStartTimeUs(int i) {
        return this.chunkStartTimesUs[i];
    }
}
