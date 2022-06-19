package p193e.p1577m.p1578a.p1596c.p1636q1;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.flac.VorbisComment;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* renamed from: e.m.a.c.q1.m */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/m.class */
public final class C24787m {

    /* renamed from: a */
    public final int f69463a;

    /* renamed from: b */
    public final int f69464b;

    /* renamed from: c */
    public final int f69465c;

    /* renamed from: d */
    public final int f69466d;

    /* renamed from: e */
    public final int f69467e;

    /* renamed from: f */
    public final int f69468f;

    /* renamed from: g */
    public final int f69469g;

    /* renamed from: h */
    public final int f69470h;

    /* renamed from: i */
    public final int f69471i;

    /* renamed from: j */
    public final long f69472j;

    /* renamed from: k */
    public final C24788a f69473k;

    /* renamed from: l */
    public final Metadata f69474l;

    /* renamed from: e.m.a.c.q1.m$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/q1/m$a.class */
    public static class C24788a {

        /* renamed from: a */
        public final long[] f69475a;

        /* renamed from: b */
        public final long[] f69476b;

        public C24788a(long[] jArr, long[] jArr2) {
            this.f69475a = jArr;
            this.f69476b = jArr2;
        }
    }

    public C24787m(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, C24788a c24788a, Metadata metadata) {
        this.f69463a = i;
        this.f69464b = i2;
        this.f69465c = i3;
        this.f69466d = i4;
        this.f69467e = i5;
        this.f69468f = m4577h(i5);
        this.f69469g = i6;
        this.f69470h = i7;
        this.f69471i = m4582c(i7);
        this.f69472j = j;
        this.f69473k = c24788a;
        this.f69474l = metadata;
    }

    public C24787m(byte[] bArr, int i) {
        C24797s c24797s = new C24797s(bArr);
        c24797s.m4552j(i * 8);
        this.f69463a = c24797s.m4556f(16);
        this.f69464b = c24797s.m4556f(16);
        this.f69465c = c24797s.m4556f(24);
        this.f69466d = c24797s.m4556f(24);
        int m4556f = c24797s.m4556f(20);
        this.f69467e = m4556f;
        this.f69468f = m4577h(m4556f);
        this.f69469g = c24797s.m4556f(3) + 1;
        int m4556f2 = c24797s.m4556f(5) + 1;
        this.f69470h = m4556f2;
        this.f69471i = m4582c(m4556f2);
        this.f69472j = (C24773d0.m4625E(c24797s.m4556f(4)) << 32) | C24773d0.m4625E(c24797s.m4556f(32));
        this.f69473k = null;
        this.f69474l = null;
    }

    /* renamed from: a */
    public static Metadata m4584a(List<String> list, List<PictureFrame> list2) {
        if (!list.isEmpty() || !list2.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                String[] m4627C = C24773d0.m4627C(list.get(i), ContainerUtils.KEY_VALUE_DELIMITER);
                if (m4627C.length == 2) {
                    arrayList.add(new VorbisComment(m4627C[0], m4627C[1]));
                }
            }
            arrayList.addAll(list2);
            return arrayList.isEmpty() ? null : new Metadata(arrayList);
        }
        return null;
    }

    /* renamed from: c */
    public static int m4582c(int i) {
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

    /* renamed from: h */
    public static int m4577h(int i) {
        switch (i) {
            case JosStatusCodes.RTN_CODE_COMMON_ERROR /* 8000 */:
                return 4;
            case 16000:
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

    /* renamed from: b */
    public C24787m m4583b(C24788a c24788a) {
        return new C24787m(this.f69463a, this.f69464b, this.f69465c, this.f69466d, this.f69467e, this.f69469g, this.f69470h, this.f69472j, c24788a, this.f69474l);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: d */
    public long m4581d() {
        long j = this.f69472j;
        return j == 0 ? (char) 1 : (j * 1000000) / this.f69467e;
    }

    /* renamed from: e */
    public Format m4580e(byte[] bArr, Metadata metadata) {
        bArr[4] = (byte) (-128);
        int i = this.f69466d;
        if (i <= 0) {
            i = -1;
        }
        Metadata m4579f = m4579f(metadata);
        int i2 = this.f69470h;
        int i3 = this.f69467e;
        int i4 = this.f69469g;
        return Format.m39255e(null, "audio/flac", null, i2 * i3 * i4, i, i4, i3, -1, 0, 0, Collections.singletonList(bArr), null, 0, null, m4579f);
    }

    /* renamed from: f */
    public Metadata m4579f(Metadata metadata) {
        Metadata metadata2 = this.f69474l;
        if (metadata2 != null) {
            Objects.requireNonNull(metadata2);
            metadata = metadata == null ? metadata2 : metadata2.m39240a(metadata.f4888a);
        }
        return metadata;
    }

    /* renamed from: g */
    public long m4578g(long j) {
        return C24773d0.m4617g((j * this.f69467e) / 1000000, 0L, this.f69472j - 1);
    }
}
