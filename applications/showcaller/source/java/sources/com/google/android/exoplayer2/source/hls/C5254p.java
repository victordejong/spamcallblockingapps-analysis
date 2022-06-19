package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p243c1.AbstractC4978h;
import com.google.android.exoplayer2.p243c1.AbstractC4979i;
import com.google.android.exoplayer2.p243c1.AbstractC4980j;
import com.google.android.exoplayer2.p243c1.AbstractC4992t;
import com.google.android.exoplayer2.p243c1.AbstractC4996v;
import com.google.android.exoplayer2.p243c1.C4991s;
import com.google.android.exoplayer2.text.p259s.C5386h;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5509e0;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.source.hls.p */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/p.class */
public final class C5254p implements AbstractC4978h {

    /* renamed from: a */
    private static final Pattern f16603a = Pattern.compile("LOCAL:([^,]+)");

    /* renamed from: b */
    private static final Pattern f16604b = Pattern.compile("MPEGTS:(\\d+)");

    /* renamed from: c */
    private final String f16605c;

    /* renamed from: d */
    private final C5509e0 f16606d;

    /* renamed from: f */
    private AbstractC4980j f16608f;

    /* renamed from: h */
    private int f16610h;

    /* renamed from: e */
    private final C5536v f16607e = new C5536v();

    /* renamed from: g */
    private byte[] f16609g = new byte[1024];

    public C5254p(String str, C5509e0 c5509e0) {
        this.f16605c = str;
        this.f16606d = c5509e0;
    }

    @RequiresNonNull({"output"})
    /* renamed from: a */
    private AbstractC4996v m19974a(long j) {
        AbstractC4996v mo19748t = this.f16608f.mo19748t(0, 3);
        mo19748t.mo19983d(Format.m21760B(null, "text/vtt", null, -1, 0, this.f16605c, null, j));
        this.f16608f.mo19752o();
        return mo19748t;
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    @RequiresNonNull({"output"})
    /* renamed from: d */
    private void m19971d() {
        C5536v c5536v = new C5536v(this.f16609g);
        C5386h.m19372e(c5536v);
        char c = 0;
        char c2 = 0;
        for (String m18666m = c5536v.m18666m(); !TextUtils.isEmpty(m18666m); m18666m = c5536v.m18666m()) {
            if (m18666m.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f16603a.matcher(m18666m);
                if (!matcher.find()) {
                    throw new ParserException("X-TIMESTAMP-MAP doesn't contain local timestamp: " + m18666m);
                }
                Matcher matcher2 = f16604b.matcher(m18666m);
                if (!matcher2.find()) {
                    throw new ParserException("X-TIMESTAMP-MAP doesn't contain media timestamp: " + m18666m);
                }
                c2 = C5386h.m19373d(matcher.group(1));
                c = C5509e0.m18901f(Long.parseLong(matcher2.group(1)));
            }
        }
        Matcher m19376a = C5386h.m19376a(c5536v);
        if (m19376a == null) {
            m19974a(0L);
            return;
        }
        long m19373d = C5386h.m19373d(m19376a.group(1));
        long m18905b = this.f16606d.m18905b(C5509e0.m18898i((c + m19373d) - c2));
        AbstractC4996v m19974a = m19974a(m18905b - m19373d);
        this.f16607e.m18682K(this.f16609g, this.f16610h);
        m19974a.mo19985b(this.f16607e, this.f16610h);
        m19974a.mo19984c(m18905b, 1, this.f16610h, 0, null);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: b */
    public void mo19973b() {
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: c */
    public boolean mo19972c(AbstractC4979i abstractC4979i) {
        abstractC4979i.mo21008b(this.f16609g, 0, 6, false);
        this.f16607e.m18682K(this.f16609g, 6);
        if (C5386h.m19375b(this.f16607e)) {
            return true;
        }
        abstractC4979i.mo21008b(this.f16609g, 6, 3, false);
        this.f16607e.m18682K(this.f16609g, 9);
        return C5386h.m19375b(this.f16607e);
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: f */
    public int mo19970f(AbstractC4979i abstractC4979i, C4991s c4991s) {
        C5508e.m18911e(this.f16608f);
        int length = (int) abstractC4979i.getLength();
        int i = this.f16610h;
        byte[] bArr = this.f16609g;
        if (i == bArr.length) {
            this.f16609g = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f16609g;
        int i2 = this.f16610h;
        int read = abstractC4979i.read(bArr2, i2, bArr2.length - i2);
        if (read != -1) {
            int i3 = this.f16610h + read;
            this.f16610h = i3;
            if (length == -1 || i3 != length) {
                return 0;
            }
        }
        m19971d();
        return -1;
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: g */
    public void mo19969g(AbstractC4980j abstractC4980j) {
        this.f16608f = abstractC4980j;
        abstractC4980j.mo19764c(new AbstractC4992t.C4994b(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.p243c1.AbstractC4978h
    /* renamed from: h */
    public void mo19968h(long j, long j2) {
        throw new IllegalStateException();
    }
}
