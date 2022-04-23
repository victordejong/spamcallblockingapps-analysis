package androidx.media2.exoplayer.external.util;

import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.flac.PictureFrame;
import androidx.media2.exoplayer.external.metadata.flac.VorbisComment;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final int f4139a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4140b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4141c;

    /* renamed from: d  reason: collision with root package name */
    public final int f4142d;
    public final int e;
    public final int f;
    public final int g;
    public final long h;
    public final Metadata i;

    public h(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, List<String> list, List<PictureFrame> list2) {
        this.f4139a = i;
        this.f4140b = i2;
        this.f4141c = i3;
        this.f4142d = i4;
        this.e = i5;
        this.f = i6;
        this.g = i7;
        this.h = j;
        this.i = a(list, list2);
    }

    public h(byte[] bArr, int i) {
        o oVar = new o(bArr);
        oVar.a(i * 8);
        this.f4139a = oVar.c(16);
        this.f4140b = oVar.c(16);
        this.f4141c = oVar.c(24);
        this.f4142d = oVar.c(24);
        this.e = oVar.c(20);
        this.f = oVar.c(3) + 1;
        this.g = oVar.c(5) + 1;
        this.h = ((oVar.c(4) & 15) << 32) | (oVar.c(32) & 4294967295L);
        this.i = null;
    }

    private static Metadata a(List<String> list, List<PictureFrame> list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = list.get(i);
            String[] b2 = ac.b(str, "=");
            if (b2.length != 2) {
                String valueOf = String.valueOf(str);
                j.a("FlacStreamMetadata", valueOf.length() != 0 ? "Failed to parse vorbis comment: ".concat(valueOf) : new String("Failed to parse vorbis comment: "));
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
}
