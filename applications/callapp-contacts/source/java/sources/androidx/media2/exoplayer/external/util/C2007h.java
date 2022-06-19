package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.flac.PictureFrame;
import androidx.media2.exoplayer.external.metadata.flac.VorbisComment;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media2.exoplayer.external.util.h */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/h.class */
public final class C2007h {

    /* renamed from: a */
    public final int f8090a;

    /* renamed from: b */
    public final int f8091b;

    /* renamed from: c */
    public final int f8092c;

    /* renamed from: d */
    public final int f8093d;

    /* renamed from: e */
    public final int f8094e;

    /* renamed from: f */
    public final int f8095f;

    /* renamed from: g */
    public final int f8096g;

    /* renamed from: h */
    public final long f8097h;

    /* renamed from: i */
    public final Metadata f8098i;

    public C2007h(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, List<String> list, List<PictureFrame> list2) {
        this.f8090a = i;
        this.f8091b = i2;
        this.f8092c = i3;
        this.f8093d = i4;
        this.f8094e = i5;
        this.f8095f = i6;
        this.f8096g = i7;
        this.f8097h = j;
        this.f8098i = m41586a(list, list2);
    }

    public C2007h(byte[] bArr, int i) {
        C2017o c2017o = new C2017o(bArr);
        c2017o.m41554a(i * 8);
        this.f8090a = c2017o.m41548c(16);
        this.f8091b = c2017o.m41548c(16);
        this.f8092c = c2017o.m41548c(24);
        this.f8093d = c2017o.m41548c(24);
        this.f8094e = c2017o.m41548c(20);
        this.f8095f = c2017o.m41548c(3) + 1;
        this.f8096g = c2017o.m41548c(5) + 1;
        this.f8097h = ((c2017o.m41548c(4) & 15) << 32) | (c2017o.m41548c(32) & 4294967295L);
        this.f8098i = null;
    }

    /* renamed from: a */
    private static Metadata m41586a(List<String> list, List<PictureFrame> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String str = list.get(i);
                String[] m41630b = C1996ac.m41630b(str, "=");
                if (m41630b.length != 2) {
                    String valueOf = String.valueOf(str);
                    C2009j.m41584a("FlacStreamMetadata", valueOf.length() != 0 ? "Failed to parse vorbis comment: ".concat(valueOf) : new String("Failed to parse vorbis comment: "));
                } else {
                    arrayList.add(new VorbisComment(m41630b[0], m41630b[1]));
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
}
