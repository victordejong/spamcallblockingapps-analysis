package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.flac.VorbisComment;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11627t;
import com.mopub.mobileads.VastVideoViewController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.exoplayer2.extractor.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/p.class */
public final class C11139p {

    /* renamed from: a */
    public final int f36478a;

    /* renamed from: b */
    public final int f36479b;

    /* renamed from: c */
    public final int f36480c;

    /* renamed from: d */
    public final int f36481d;

    /* renamed from: e */
    public final int f36482e;

    /* renamed from: f */
    public final int f36483f;

    /* renamed from: g */
    public final int f36484g;

    /* renamed from: h */
    public final int f36485h;

    /* renamed from: i */
    public final int f36486i;

    /* renamed from: j */
    public final long f36487j;

    /* renamed from: k */
    public final C11140a f36488k;

    /* renamed from: l */
    private final Metadata f36489l;

    /* renamed from: com.google.android.exoplayer2.extractor.p$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/p$a.class */
    public static final class C11140a {

        /* renamed from: a */
        public final long[] f36490a;

        /* renamed from: b */
        public final long[] f36491b;

        public C11140a(long[] jArr, long[] jArr2) {
            this.f36490a = jArr;
            this.f36491b = jArr2;
        }
    }

    public C11139p(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, C11140a c11140a, Metadata metadata) {
        this.f36478a = i;
        this.f36479b = i2;
        this.f36480c = i3;
        this.f36481d = i4;
        this.f36482e = i5;
        this.f36483f = m21413a(i5);
        this.f36484g = i6;
        this.f36485h = i7;
        this.f36486i = m21407b(i7);
        this.f36487j = j;
        this.f36488k = c11140a;
        this.f36489l = metadata;
    }

    public C11139p(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        this(i, i2, i3, i4, i5, i6, i7, j, (C11140a) null, m21409a(arrayList, arrayList2));
    }

    public C11139p(byte[] bArr, int i) {
        C11627t c11627t = new C11627t(bArr);
        c11627t.m19826a(i * 8);
        this.f36478a = c11627t.m19819c(16);
        this.f36479b = c11627t.m19819c(16);
        this.f36480c = c11627t.m19819c(24);
        this.f36481d = c11627t.m19819c(24);
        int m19819c = c11627t.m19819c(20);
        this.f36482e = m19819c;
        this.f36483f = m21413a(m19819c);
        this.f36484g = c11627t.m19819c(3) + 1;
        int m19819c2 = c11627t.m19819c(5) + 1;
        this.f36485h = m19819c2;
        this.f36486i = m21407b(m19819c2);
        this.f36487j = C11599af.m19950b(c11627t.m19819c(4), c11627t.m19819c(32));
        this.f36488k = null;
        this.f36489l = null;
    }

    /* renamed from: a */
    private static int m21413a(int i) {
        switch (i) {
            case 8000:
                return 4;
            case VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON /* 16000 */:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    /* renamed from: a */
    public static Metadata m21409a(List<String> list, List<PictureFrame> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] m19943b = C11599af.m19943b(str, "=");
                if (m19943b.length != 2) {
                    C11617n.m19863a("FlacStreamMetadata", "Failed to parse Vorbis comment: ".concat(String.valueOf(str)));
                } else {
                    arrayList.add(new VorbisComment(m19943b[0], m19943b[1]));
                }
            }
            arrayList.addAll(list2);
            if (!arrayList.isEmpty()) {
                return new Metadata(arrayList);
            }
            return null;
        }
        return null;
    }

    /* renamed from: b */
    private static int m21407b(int i) {
        if (i != 8) {
            if (i == 12) {
                return 2;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 20) {
                return 5;
            }
            return i != 24 ? -1 : 6;
        }
        return 1;
    }

    /* renamed from: a */
    public final long m21414a() {
        long j = this.f36487j;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.f36482e;
    }

    /* renamed from: a */
    public final long m21412a(long j) {
        return C11599af.m19993a((j * this.f36482e) / 1000000, 0L, this.f36487j - 1);
    }

    /* renamed from: a */
    public final Format m21408a(byte[] bArr, Metadata metadata) {
        bArr[4] = (byte) (-128);
        int i = this.f36481d;
        if (i <= 0) {
            i = -1;
        }
        Metadata m21410a = m21410a(metadata);
        Format.C10828a c10828a = new Format.C10828a();
        c10828a.f34792k = "audio/flac";
        c10828a.f34793l = i;
        c10828a.f34805x = this.f36484g;
        c10828a.f34806y = this.f36482e;
        c10828a.f34794m = Collections.singletonList(bArr);
        c10828a.f34790i = m21410a;
        return c10828a.m22321a();
    }

    /* renamed from: a */
    public final C11139p m21411a(C11140a c11140a) {
        return new C11139p(this.f36478a, this.f36479b, this.f36480c, this.f36481d, this.f36482e, this.f36484g, this.f36485h, this.f36487j, c11140a, this.f36489l);
    }

    /* renamed from: a */
    public final Metadata m21410a(Metadata metadata) {
        Metadata metadata2 = this.f36489l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }
}
