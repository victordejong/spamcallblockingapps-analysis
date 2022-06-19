package com.google.api.client.googleapis.media;

import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.http.C8645i;
import com.google.api.client.http.C8650n;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8656r;
import com.google.api.client.http.C8658t;
import com.google.api.client.util.C8731w;
import com.google.common.base.C8747f;
import com.google.common.p291io.C8827a;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/MediaHttpDownloader.class */
public final class MediaHttpDownloader {

    /* renamed from: a */
    private final C8656r f38236a;

    /* renamed from: b */
    private final AbstractC8661w f38237b;

    /* renamed from: d */
    private AbstractC8610a f38239d;

    /* renamed from: f */
    private long f38241f;

    /* renamed from: h */
    private long f38243h;

    /* renamed from: c */
    private boolean f38238c = false;

    /* renamed from: e */
    private int f38240e = 33554432;

    /* renamed from: g */
    private DownloadState f38242g = DownloadState.NOT_STARTED;

    /* renamed from: i */
    private long f38244i = -1;

    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/MediaHttpDownloader$DownloadState.class */
    public enum DownloadState {
        NOT_STARTED,
        MEDIA_IN_PROGRESS,
        MEDIA_COMPLETE
    }

    public MediaHttpDownloader(AbstractC8661w abstractC8661w, AbstractC8657s abstractC8657s) {
        this.f38237b = (AbstractC8661w) C8731w.m2836d(abstractC8661w);
        this.f38236a = abstractC8657s == null ? abstractC8661w.m3052c() : abstractC8661w.m3051d(abstractC8657s);
    }

    /* renamed from: b */
    private C8658t m3270b(long j, C8645i c8645i, C8650n c8650n, OutputStream outputStream) {
        C8655q m3079a = this.f38236a.m3079a(c8645i);
        if (c8650n != null) {
            m3079a.m3100f().putAll(c8650n);
        }
        if (this.f38243h != 0 || j != -1) {
            StringBuilder sb = new StringBuilder();
            sb.append("bytes=");
            sb.append(this.f38243h);
            sb.append("-");
            if (j != -1) {
                sb.append(j);
            }
            m3079a.m3100f().m3151H(sb.toString());
        }
        C8658t m3104b = m3079a.m3104b();
        try {
            C8827a.m2579a(m3104b.m3070c(), outputStream);
            return m3104b;
        } finally {
            m3104b.m3072a();
        }
    }

    /* renamed from: c */
    private long m3269c(String str) {
        if (str == null) {
            return 0L;
        }
        return Long.parseLong(str.substring(str.indexOf(45) + 1, str.indexOf(47))) + 1;
    }

    /* renamed from: d */
    private void m3268d(String str) {
        if (str != null && this.f38241f == 0) {
            this.f38241f = Long.parseLong(str.substring(str.indexOf(47) + 1));
        }
    }

    /* renamed from: e */
    private void m3267e(DownloadState downloadState) {
        this.f38242g = downloadState;
        AbstractC8610a abstractC8610a = this.f38239d;
        if (abstractC8610a != null) {
            abstractC8610a.m3248a(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: a */
    public void m3271a(C8645i c8645i, C8650n c8650n, OutputStream outputStream) {
        C8731w.m2839a(this.f38242g == DownloadState.NOT_STARTED);
        c8645i.put("alt", "media");
        if (this.f38238c) {
            m3267e(DownloadState.MEDIA_IN_PROGRESS);
            long longValue = ((Long) C8747f.m2812a(m3270b(this.f38244i, c8645i, c8650n, outputStream).m3067f().m3143h(), Long.valueOf(this.f38241f))).longValue();
            this.f38241f = longValue;
            this.f38243h = longValue;
            m3267e(DownloadState.MEDIA_COMPLETE);
            return;
        }
        while (true) {
            ?? r0 = (this.f38243h + this.f38240e) - 1;
            long j = this.f38244i;
            char c = r0;
            if (j != -1) {
                c = Math.min(j, (long) r0);
            }
            String m3142i = m3270b(c, c8645i, c8650n, outputStream).m3067f().m3142i();
            long m3269c = m3269c(m3142i);
            m3268d(m3142i);
            long j2 = this.f38244i;
            if (j2 != -1 && j2 <= m3269c) {
                this.f38243h = j2;
                m3267e(DownloadState.MEDIA_COMPLETE);
                return;
            }
            long j3 = this.f38241f;
            if (j3 <= m3269c) {
                this.f38243h = j3;
                m3267e(DownloadState.MEDIA_COMPLETE);
                return;
            }
            this.f38243h = m3269c;
            m3267e(DownloadState.MEDIA_IN_PROGRESS);
        }
    }
}
