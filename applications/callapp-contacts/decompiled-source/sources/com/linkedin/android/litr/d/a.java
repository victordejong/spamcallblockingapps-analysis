package com.linkedin.android.litr.d;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.linkedin.android.litr.exception.MediaSourceException;
import com.linkedin.android.litr.h.c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/a.class */
public final class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final MediaExtractor f33698a;

    /* renamed from: b  reason: collision with root package name */
    private final c f33699b;

    /* renamed from: c  reason: collision with root package name */
    private int f33700c;

    /* renamed from: d  reason: collision with root package name */
    private long f33701d;

    public a(Context context, Uri uri) throws MediaSourceException {
        this(context, uri, new c(0L, Long.MAX_VALUE));
    }

    public a(Context context, Uri uri, c cVar) throws MediaSourceException {
        this.f33699b = cVar;
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.f33698a = mediaExtractor;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaExtractor.setDataSource(context, uri, (Map<String, String>) null);
            mediaMetadataRetriever.setDataSource(context, uri);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            if (extractMetadata != null) {
                this.f33700c = Integer.parseInt(extractMetadata);
            }
            this.f33701d = c.a(context, uri);
            mediaMetadataRetriever.release();
        } catch (IOException e) {
            mediaMetadataRetriever.release();
            throw new MediaSourceException(MediaSourceException.a.DATA_SOURCE, uri, e);
        }
    }

    @Override // com.linkedin.android.litr.d.d
    public final int a() {
        return this.f33698a.getTrackCount();
    }

    @Override // com.linkedin.android.litr.d.d
    public final int a(ByteBuffer byteBuffer) {
        return this.f33698a.readSampleData(byteBuffer, 0);
    }

    @Override // com.linkedin.android.litr.d.d
    public final MediaFormat a(int i) {
        return this.f33698a.getTrackFormat(i);
    }

    @Override // com.linkedin.android.litr.d.d
    public final void a(long j) {
        this.f33698a.seekTo(j, 0);
    }

    @Override // com.linkedin.android.litr.d.d
    public final int b() {
        return this.f33698a.getSampleTrackIndex();
    }

    @Override // com.linkedin.android.litr.d.d
    public final void b(int i) {
        this.f33698a.selectTrack(i);
    }

    @Override // com.linkedin.android.litr.d.d
    public final long c() {
        return this.f33698a.getSampleTime();
    }

    @Override // com.linkedin.android.litr.d.d
    public final int d() {
        return this.f33698a.getSampleFlags();
    }

    @Override // com.linkedin.android.litr.d.d
    public final void e() {
        this.f33698a.advance();
    }

    @Override // com.linkedin.android.litr.d.d
    public final void f() {
        this.f33698a.release();
    }

    @Override // com.linkedin.android.litr.d.d
    public final long g() {
        return this.f33701d;
    }

    @Override // com.linkedin.android.litr.d.d
    public final c h() {
        return this.f33699b;
    }
}
