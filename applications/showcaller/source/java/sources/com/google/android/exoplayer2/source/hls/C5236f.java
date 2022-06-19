package com.google.android.exoplayer2.source.hls;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.mp4.C5076g;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.p245b0.C4891e;
import com.google.android.exoplayer2.p243c1.p247d0.C4926f;
import com.google.android.exoplayer2.p243c1.p247d0.C4929g0;
import com.google.android.exoplayer2.p243c1.p247d0.C4932h;
import com.google.android.exoplayer2.p243c1.p247d0.C4940j;
import com.google.android.exoplayer2.p243c1.p247d0.C4943l;
import com.google.android.exoplayer2.source.hls.AbstractC5243i;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5529r;
import java.io.EOFException;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.source.hls.f */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/f.class */
public final class C5236f implements AbstractC5243i {

    /* renamed from: b */
    private final int f16460b;

    /* renamed from: c */
    private final boolean f16461c;

    public C5236f() {
        this(0, true);
    }

    public C5236f(int i, boolean z) {
        this.f16460b = i;
        this.f16461c = z;
    }

    /* renamed from: b */
    private static AbstractC5243i.C5244a m20085b(AbstractC4978h abstractC4978h) {
        return new AbstractC5243i.C5244a(abstractC4978h, (abstractC4978h instanceof C4940j) || (abstractC4978h instanceof C4926f) || (abstractC4978h instanceof C4932h) || (abstractC4978h instanceof C4891e), m20079h(abstractC4978h));
    }

    /* renamed from: c */
    private static AbstractC5243i.C5244a m20084c(AbstractC4978h abstractC4978h, Format format, C5509e0 c5509e0) {
        if (abstractC4978h instanceof C5254p) {
            return m20085b(new C5254p(format.f14449D, c5509e0));
        }
        if (abstractC4978h instanceof C4940j) {
            return m20085b(new C4940j());
        }
        if (abstractC4978h instanceof C4926f) {
            return m20085b(new C4926f());
        }
        if (abstractC4978h instanceof C4932h) {
            return m20085b(new C4932h());
        }
        if (!(abstractC4978h instanceof C4891e)) {
            return null;
        }
        return m20085b(new C4891e());
    }

    /* renamed from: d */
    private AbstractC4978h m20083d(Uri uri, Format format, List<Format> list, C5509e0 c5509e0) {
        String lastPathSegment = uri.getLastPathSegment();
        String str = lastPathSegment;
        if (lastPathSegment == null) {
            str = "";
        }
        return ("text/vtt".equals(format.f14461l) || str.endsWith(".webvtt") || str.endsWith(".vtt")) ? new C5254p(format.f14449D, c5509e0) : str.endsWith(".aac") ? new C4940j() : (str.endsWith(".ac3") || str.endsWith(".ec3")) ? new C4926f() : str.endsWith(".ac4") ? new C4932h() : str.endsWith(".mp3") ? new C4891e(0, 0L) : (str.endsWith(".mp4") || str.startsWith(".m4", str.length() - 4) || str.startsWith(".mp4", str.length() - 5) || str.startsWith(".cmf", str.length() - 5)) ? m20082e(c5509e0, format, list) : m20081f(this.f16460b, this.f16461c, format, list, c5509e0);
    }

    /* renamed from: e */
    private static C5076g m20082e(C5509e0 c5509e0, Format format, List<Format> list) {
        int i = m20080g(format) ? 4 : 0;
        if (list == null) {
            list = Collections.emptyList();
        }
        return new C5076g(i, c5509e0, null, list);
    }

    /* renamed from: f */
    private static C4929g0 m20081f(int i, boolean z, Format format, List<Format> list, C5509e0 c5509e0) {
        int i2 = i | 16;
        if (list != null) {
            i2 |= 32;
        } else {
            list = z ? Collections.singletonList(Format.m21733x(null, "application/cea-608", 0, null)) : Collections.emptyList();
        }
        String str = format.f14458i;
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            int i4 = i2;
            if (!"audio/mp4a-latm".equals(C5529r.m18735b(str))) {
                i4 = i2 | 2;
            }
            i3 = i4;
            if (!"video/avc".equals(C5529r.m18726k(str))) {
                i3 = i4 | 4;
            }
        }
        return new C4929g0(2, c5509e0, new C4943l(i3, list));
    }

    /* renamed from: g */
    private static boolean m20080g(Format format) {
        Metadata.Entry m20393c;
        Metadata metadata = format.f14459j;
        if (metadata == null) {
            return false;
        }
        for (int i = 0; i < metadata.m20392d(); i++) {
            if (metadata.m20393c(i) instanceof HlsTrackMetadataEntry) {
                return !((HlsTrackMetadataEntry) m20393c).f16446f.isEmpty();
            }
        }
        return false;
    }

    /* renamed from: h */
    private static boolean m20079h(AbstractC4978h abstractC4978h) {
        return (abstractC4978h instanceof C4929g0) || (abstractC4978h instanceof C5076g);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    private static boolean m20078i(AbstractC4978h abstractC4978h, AbstractC4979i abstractC4979i) {
        boolean z;
        try {
            z = abstractC4978h.mo19972c(abstractC4979i);
            abstractC4979i.mo21003g();
        } catch (EOFException e) {
            abstractC4979i.mo21003g();
            z = false;
        } catch (Throwable th) {
            abstractC4979i.mo21003g();
            throw th;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.source.hls.AbstractC5243i
    /* renamed from: a */
    public AbstractC5243i.C5244a mo20057a(AbstractC4978h abstractC4978h, Uri uri, Format format, List<Format> list, C5509e0 c5509e0, Map<String, List<String>> map, AbstractC4979i abstractC4979i) {
        if (abstractC4978h != null) {
            if (m20079h(abstractC4978h)) {
                return m20085b(abstractC4978h);
            }
            if (m20084c(abstractC4978h, format, c5509e0) == null) {
                throw new IllegalArgumentException("Unexpected previousExtractor type: " + abstractC4978h.getClass().getSimpleName());
            }
        }
        AbstractC4978h m20083d = m20083d(uri, format, list, c5509e0);
        abstractC4979i.mo21003g();
        if (m20078i(m20083d, abstractC4979i)) {
            return m20085b(m20083d);
        }
        if (!(m20083d instanceof C5254p)) {
            C5254p c5254p = new C5254p(format.f14449D, c5509e0);
            if (m20078i(c5254p, abstractC4979i)) {
                return m20085b(c5254p);
            }
        }
        if (!(m20083d instanceof C4940j)) {
            C4940j c4940j = new C4940j();
            if (m20078i(c4940j, abstractC4979i)) {
                return m20085b(c4940j);
            }
        }
        if (!(m20083d instanceof C4926f)) {
            C4926f c4926f = new C4926f();
            if (m20078i(c4926f, abstractC4979i)) {
                return m20085b(c4926f);
            }
        }
        if (!(m20083d instanceof C4932h)) {
            C4932h c4932h = new C4932h();
            if (m20078i(c4932h, abstractC4979i)) {
                return m20085b(c4932h);
            }
        }
        if (!(m20083d instanceof C4891e)) {
            C4891e c4891e = new C4891e(0, 0L);
            if (m20078i(c4891e, abstractC4979i)) {
                return m20085b(c4891e);
            }
        }
        if (!(m20083d instanceof C5076g)) {
            C5076g m20082e = m20082e(c5509e0, format, list);
            if (m20078i(m20082e, abstractC4979i)) {
                return m20085b(m20082e);
            }
        }
        if (!(m20083d instanceof C4929g0)) {
            C4929g0 m20081f = m20081f(this.f16460b, this.f16461c, format, list, c5509e0);
            if (m20078i(m20081f, abstractC4979i)) {
                return m20085b(m20081f);
            }
        }
        return m20085b(m20083d);
    }
}
