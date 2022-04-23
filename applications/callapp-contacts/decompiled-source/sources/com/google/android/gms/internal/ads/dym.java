package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dym.class */
public final class dym {
    public float A;
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public int G;
    public int H;
    public int I;
    public long J;
    public long K;
    public boolean L;
    public boolean M;
    String N;
    public dyc O;
    public int P;

    /* renamed from: a  reason: collision with root package name */
    public String f27404a;

    /* renamed from: b  reason: collision with root package name */
    public int f27405b;

    /* renamed from: c  reason: collision with root package name */
    public int f27406c;

    /* renamed from: d  reason: collision with root package name */
    public int f27407d;
    public boolean e;
    public byte[] f;
    public dyf g;
    public byte[] h;
    public zzjo i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public byte[] o;
    public int p;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public float w;
    public float x;
    public float y;
    public float z;

    private dym() {
        this.j = -1;
        this.k = -1;
        this.l = -1;
        this.m = -1;
        this.n = 0;
        this.o = null;
        this.p = -1;
        this.q = false;
        this.r = -1;
        this.s = -1;
        this.t = -1;
        this.u = 1000;
        this.v = 200;
        this.w = -1.0f;
        this.x = -1.0f;
        this.y = -1.0f;
        this.z = -1.0f;
        this.A = -1.0f;
        this.B = -1.0f;
        this.C = -1.0f;
        this.D = -1.0f;
        this.E = -1.0f;
        this.F = -1.0f;
        this.G = 1;
        this.H = -1;
        this.I = 8000;
        this.J = 0L;
        this.K = 0L;
        this.M = true;
        this.N = "eng";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dym(dyk dykVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<byte[]> a(ecy ecyVar) throws zzhw {
        int i;
        try {
            ecyVar.d(16);
            byte[] bArr = ecyVar.f27649a;
            int i2 = ecyVar.f27650b;
            ecyVar.f27650b = i2 + 1;
            long j = bArr[i2];
            byte[] bArr2 = ecyVar.f27649a;
            int i3 = ecyVar.f27650b;
            ecyVar.f27650b = i3 + 1;
            long j2 = bArr2[i3];
            byte[] bArr3 = ecyVar.f27649a;
            int i4 = ecyVar.f27650b;
            ecyVar.f27650b = i4 + 1;
            long j3 = bArr3[i4];
            byte[] bArr4 = ecyVar.f27649a;
            ecyVar.f27650b = ecyVar.f27650b + 1;
            if (((j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((bArr4[i] & 255) << 24)) != 826496599) {
                return null;
            }
            byte[] bArr5 = ecyVar.f27649a;
            for (int i5 = ecyVar.f27650b + 20; i5 < bArr5.length - 4; i5++) {
                if (bArr5[i5] == 0 && bArr5[i5 + 1] == 0 && bArr5[i5 + 2] == 1 && bArr5[i5 + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr5, i5, bArr5.length));
                }
            }
            throw new zzhw("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing FourCC VC1 codec private");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<byte[]> a(byte[] bArr) throws zzhw {
        try {
            if (bArr[0] == 2) {
                int i = 1;
                int i2 = 0;
                while (bArr[i] == -1) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + bArr[i];
                int i5 = 0;
                while (bArr[i3] == -1) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                byte b2 = bArr[i3];
                if (bArr[i6] == 1) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i6, bArr2, 0, i4);
                    int i7 = i6 + i4;
                    if (bArr[i7] == 3) {
                        int i8 = i7 + i5 + b2;
                        if (bArr[i8] == 5) {
                            byte[] bArr3 = new byte[bArr.length - i8];
                            System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new zzhw("Error parsing vorbis codec private");
                    }
                    throw new zzhw("Error parsing vorbis codec private");
                }
                throw new zzhw("Error parsing vorbis codec private");
            }
            throw new zzhw("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing vorbis codec private");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(ecy ecyVar) throws zzhw {
        UUID uuid;
        UUID uuid2;
        try {
            byte[] bArr = ecyVar.f27649a;
            int i = ecyVar.f27650b;
            ecyVar.f27650b = i + 1;
            byte b2 = bArr[i];
            byte[] bArr2 = ecyVar.f27649a;
            int i2 = ecyVar.f27650b;
            ecyVar.f27650b = i2 + 1;
            int i3 = (b2 & 255) | ((bArr2[i2] & 255) << 8);
            if (i3 == 1) {
                return true;
            }
            if (i3 != 65534) {
                return false;
            }
            ecyVar.c(24);
            long h = ecyVar.h();
            uuid = dyl.I;
            if (h != uuid.getMostSignificantBits()) {
                return false;
            }
            long h2 = ecyVar.h();
            uuid2 = dyl.I;
            return h2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing MS/ACM codec private");
        }
    }
}
