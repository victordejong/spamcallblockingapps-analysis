package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dym.class */
public final class dym {

    /* renamed from: A */
    public float f48062A;

    /* renamed from: B */
    public float f48063B;

    /* renamed from: C */
    public float f48064C;

    /* renamed from: D */
    public float f48065D;

    /* renamed from: E */
    public float f48066E;

    /* renamed from: F */
    public float f48067F;

    /* renamed from: G */
    public int f48068G;

    /* renamed from: H */
    public int f48069H;

    /* renamed from: I */
    public int f48070I;

    /* renamed from: J */
    public long f48071J;

    /* renamed from: K */
    public long f48072K;

    /* renamed from: L */
    public boolean f48073L;

    /* renamed from: M */
    public boolean f48074M;

    /* renamed from: N */
    String f48075N;

    /* renamed from: O */
    public dyc f48076O;

    /* renamed from: P */
    public int f48077P;

    /* renamed from: a */
    public String f48078a;

    /* renamed from: b */
    public int f48079b;

    /* renamed from: c */
    public int f48080c;

    /* renamed from: d */
    public int f48081d;

    /* renamed from: e */
    public boolean f48082e;

    /* renamed from: f */
    public byte[] f48083f;

    /* renamed from: g */
    public dyf f48084g;

    /* renamed from: h */
    public byte[] f48085h;

    /* renamed from: i */
    public zzjo f48086i;

    /* renamed from: j */
    public int f48087j;

    /* renamed from: k */
    public int f48088k;

    /* renamed from: l */
    public int f48089l;

    /* renamed from: m */
    public int f48090m;

    /* renamed from: n */
    public int f48091n;

    /* renamed from: o */
    public byte[] f48092o;

    /* renamed from: p */
    public int f48093p;

    /* renamed from: q */
    public boolean f48094q;

    /* renamed from: r */
    public int f48095r;

    /* renamed from: s */
    public int f48096s;

    /* renamed from: t */
    public int f48097t;

    /* renamed from: u */
    public int f48098u;

    /* renamed from: v */
    public int f48099v;

    /* renamed from: w */
    public float f48100w;

    /* renamed from: x */
    public float f48101x;

    /* renamed from: y */
    public float f48102y;

    /* renamed from: z */
    public float f48103z;

    private dym() {
        this.f48087j = -1;
        this.f48088k = -1;
        this.f48089l = -1;
        this.f48090m = -1;
        this.f48091n = 0;
        this.f48092o = null;
        this.f48093p = -1;
        this.f48094q = false;
        this.f48095r = -1;
        this.f48096s = -1;
        this.f48097t = -1;
        this.f48098u = 1000;
        this.f48099v = 200;
        this.f48100w = -1.0f;
        this.f48101x = -1.0f;
        this.f48102y = -1.0f;
        this.f48103z = -1.0f;
        this.f48062A = -1.0f;
        this.f48063B = -1.0f;
        this.f48064C = -1.0f;
        this.f48065D = -1.0f;
        this.f48066E = -1.0f;
        this.f48067F = -1.0f;
        this.f48068G = 1;
        this.f48069H = -1;
        this.f48070I = 8000;
        this.f48071J = 0L;
        this.f48072K = 0L;
        this.f48074M = true;
        this.f48075N = "eng";
    }

    public /* synthetic */ dym(dyk dykVar) {
        this();
    }

    /* renamed from: a */
    public static List<byte[]> m15471a(ecy ecyVar) throws zzhw {
        int i;
        try {
            ecyVar.m15224d(16);
            byte[] bArr = ecyVar.f48724a;
            int i2 = ecyVar.f48725b;
            ecyVar.f48725b = i2 + 1;
            long j = bArr[i2];
            byte[] bArr2 = ecyVar.f48724a;
            int i3 = ecyVar.f48725b;
            ecyVar.f48725b = i3 + 1;
            long j2 = bArr2[i3];
            byte[] bArr3 = ecyVar.f48724a;
            int i4 = ecyVar.f48725b;
            ecyVar.f48725b = i4 + 1;
            long j3 = bArr3[i4];
            byte[] bArr4 = ecyVar.f48724a;
            ecyVar.f48725b = ecyVar.f48725b + 1;
            if (((j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr4[i] & 255) << 24)) != 826496599) {
                return null;
            }
            byte[] bArr5 = ecyVar.f48724a;
            for (int i5 = ecyVar.f48725b + 20; i5 < bArr5.length - 4; i5++) {
                if (bArr5[i5] == 0 && bArr5[i5 + 1] == 0 && bArr5[i5 + 2] == 1 && bArr5[i5 + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr5, i5, bArr5.length));
                }
            }
            throw new zzhw("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: a */
    public static List<byte[]> m15470a(byte[] bArr) throws zzhw {
        try {
            if (bArr[0] != 2) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i2 + bArr[i];
            int i4 = 0;
            int i5 = i + 1;
            while (bArr[i5] == -1) {
                i4 += 255;
                i5++;
            }
            int i6 = i5 + 1;
            byte b = bArr[i5];
            if (bArr[i6] != 1) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i6, bArr2, 0, i3);
            int i7 = i6 + i3;
            if (bArr[i7] != 3) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            int i8 = i7 + i4 + b;
            if (bArr[i8] != 5) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i8];
            System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing vorbis codec private");
        }
    }

    /* renamed from: b */
    public static boolean m15469b(ecy ecyVar) throws zzhw {
        UUID uuid;
        UUID uuid2;
        try {
            byte[] bArr = ecyVar.f48724a;
            int i = ecyVar.f48725b;
            ecyVar.f48725b = i + 1;
            byte b = bArr[i];
            byte[] bArr2 = ecyVar.f48724a;
            int i2 = ecyVar.f48725b;
            ecyVar.f48725b = i2 + 1;
            int i3 = (b & 255) | ((bArr2[i2] & 255) << 8);
            if (i3 == 1) {
                return true;
            }
            if (i3 != 65534) {
                return false;
            }
            ecyVar.m15226c(24);
            long m15219h = ecyVar.m15219h();
            uuid = dyl.f48010I;
            if (m15219h != uuid.getMostSignificantBits()) {
                return false;
            }
            long m15219h2 = ecyVar.m15219h();
            uuid2 = dyl.f48010I;
            return m15219h2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing MS/ACM codec private");
        }
    }
}
