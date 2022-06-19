package com.linkedin.android.litr.p466d;

import android.content.Context;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.linkedin.android.litr.exception.MediaSourceException;
import com.linkedin.android.litr.p470h.C16657c;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
/* renamed from: com.linkedin.android.litr.d.a */
/* loaded from: classes4-dex2jar.jar:com/linkedin/android/litr/d/a.class */
public final class C16630a implements AbstractC16635d {

    /* renamed from: a */
    private final MediaExtractor f58528a;

    /* renamed from: b */
    private final C16634c f58529b;

    /* renamed from: c */
    private int f58530c;

    /* renamed from: d */
    private long f58531d;

    public C16630a(Context context, Uri uri) throws MediaSourceException {
        this(context, uri, new C16634c(0L, Long.MAX_VALUE));
    }

    public C16630a(Context context, Uri uri, C16634c c16634c) throws MediaSourceException {
        this.f58529b = c16634c;
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.f58528a = mediaExtractor;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaExtractor.setDataSource(context, uri, (Map<String, String>) null);
            mediaMetadataRetriever.setDataSource(context, uri);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(24);
            if (extractMetadata != null) {
                this.f58530c = Integer.parseInt(extractMetadata);
            }
            this.f58531d = C16657c.m6803a(context, uri);
            mediaMetadataRetriever.release();
        } catch (IOException e) {
            mediaMetadataRetriever.release();
            throw new MediaSourceException(MediaSourceException.EnumC16644a.DATA_SOURCE, uri, e);
        }
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: a */
    public final int mo6860a() {
        return this.f58528a.getTrackCount();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: a */
    public final int mo6857a(ByteBuffer byteBuffer) {
        return this.f58528a.readSampleData(byteBuffer, 0);
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: a */
    public final MediaFormat mo6859a(int i) {
        return this.f58528a.getTrackFormat(i);
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: a */
    public final void mo6858a(long j) {
        this.f58528a.seekTo(j, 0);
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: b */
    public final int mo6856b() {
        return this.f58528a.getSampleTrackIndex();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: b */
    public final void mo6855b(int i) {
        this.f58528a.selectTrack(i);
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: c */
    public final long mo6854c() {
        return this.f58528a.getSampleTime();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: d */
    public final int mo6853d() {
        return this.f58528a.getSampleFlags();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: e */
    public final void mo6852e() {
        this.f58528a.advance();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: f */
    public final void mo6851f() {
        this.f58528a.release();
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: g */
    public final long mo6850g() {
        return this.f58531d;
    }

    @Override // com.linkedin.android.litr.p466d.AbstractC16635d
    /* renamed from: h */
    public final C16634c mo6849h() {
        return this.f58529b;
    }
}
