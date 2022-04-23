package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.flac.VorbisComment;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.t;
import com.mopub.mobileads.VastVideoViewController;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final int f21313a;

    /* renamed from: b  reason: collision with root package name */
    public final int f21314b;

    /* renamed from: c  reason: collision with root package name */
    public final int f21315c;

    /* renamed from: d  reason: collision with root package name */
    public final int f21316d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;
    public final a k;
    private final Metadata l;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final long[] f21317a;

        /* renamed from: b  reason: collision with root package name */
        public final long[] f21318b;

        public a(long[] jArr, long[] jArr2) {
            this.f21317a = jArr;
            this.f21318b = jArr2;
        }
    }

    public p(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, a aVar, Metadata metadata) {
        this.f21313a = i;
        this.f21314b = i2;
        this.f21315c = i3;
        this.f21316d = i4;
        this.e = i5;
        this.f = a(i5);
        this.g = i6;
        this.h = i7;
        this.i = b(i7);
        this.j = j;
        this.k = aVar;
        this.l = metadata;
    }

    public p(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, ArrayList<String> arrayList, ArrayList<PictureFrame> arrayList2) {
        this(i, i2, i3, i4, i5, i6, i7, j, (a) null, a(arrayList, arrayList2));
    }

    public p(byte[] bArr, int i) {
        t tVar = new t(bArr);
        tVar.a(i * 8);
        this.f21313a = tVar.c(16);
        this.f21314b = tVar.c(16);
        this.f21315c = tVar.c(24);
        this.f21316d = tVar.c(24);
        int c2 = tVar.c(20);
        this.e = c2;
        this.f = a(c2);
        this.g = tVar.c(3) + 1;
        int c3 = tVar.c(5) + 1;
        this.h = c3;
        this.i = b(c3);
        this.j = af.b(tVar.c(4), tVar.c(32));
        this.k = null;
        this.l = null;
    }

    private static int a(int i) {
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

    public static Metadata a(List<String> list, List<PictureFrame> list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] b2 = af.b(str, "=");
            if (b2.length != 2) {
                n.a("FlacStreamMetadata", "Failed to parse Vorbis comment: ".concat(String.valueOf(str)));
            } else {
                arrayList.add(new VorbisComment(b2[0], b2[1]));
            }
        }
        arrayList.addAll(list2);
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static int b(int i) {
        if (i == 8) {
            return 1;
        }
        if (i == 12) {
            return 2;
        }
        if (i == 16) {
            return 4;
        }
        if (i != 20) {
            return i != 24 ? -1 : 6;
        }
        return 5;
    }

    public final long a() {
        long j = this.j;
        if (j == 0) {
            return -9223372036854775807L;
        }
        return (j * 1000000) / this.e;
    }

    public final long a(long j) {
        return af.a((j * this.e) / 1000000, 0L, this.j - 1);
    }

    public final Format a(byte[] bArr, Metadata metadata) {
        bArr[4] = (byte) (-128);
        int i = this.f21316d;
        if (i <= 0) {
            i = -1;
        }
        Metadata a2 = a(metadata);
        Format.a aVar = new Format.a();
        aVar.k = "audio/flac";
        aVar.l = i;
        aVar.x = this.g;
        aVar.y = this.e;
        aVar.m = Collections.singletonList(bArr);
        aVar.i = a2;
        return aVar.a();
    }

    public final p a(a aVar) {
        return new p(this.f21313a, this.f21314b, this.f21315c, this.f21316d, this.e, this.g, this.h, this.j, aVar, this.l);
    }

    public final Metadata a(Metadata metadata) {
        Metadata metadata2 = this.l;
        return metadata2 == null ? metadata : metadata2.copyWithAppendedEntriesFrom(metadata);
    }
}
