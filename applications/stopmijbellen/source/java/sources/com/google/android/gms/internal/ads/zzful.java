package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzful.class */
public final class zzful<K, V> extends zzfsw<K, V> {
    public static final zzfsw<Object, Object> zza = new zzful(null, new Object[0], 0);
    public final transient Object[] zzb;
    @CheckForNull
    private final transient Object zzc;
    private final transient int zzd;

    private zzful(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> zzful<K, V> zzh(int i, Object[] objArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 0) {
            return (zzful) zza;
        }
        byte[] bArr = null;
        int i8 = 0;
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            zzfrr.zzb(obj, obj2);
            return new zzful<>(null, objArr, 1);
        }
        zzfqg.zzb(i, objArr.length >> 1, "index");
        int zzh = zzftc.zzh(i);
        if (i == 1) {
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            Object obj4 = objArr[1];
            Objects.requireNonNull(obj4);
            zzfrr.zzb(obj3, obj4);
        } else {
            int i9 = zzh - 1;
            if (zzh <= 128) {
                byte[] bArr2 = new byte[zzh];
                Arrays.fill(bArr2, (byte) -1);
                while (true) {
                    bArr = bArr2;
                    if (i8 >= i) {
                        break;
                    }
                    i6 = i8 + i8;
                    Object obj5 = objArr[i6];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArr[i6 ^ 1];
                    Objects.requireNonNull(obj6);
                    zzfrr.zzb(obj5, obj6);
                    int zza2 = zzfsk.zza(obj5.hashCode());
                    while (true) {
                        i7 = zza2 & i9;
                        int i10 = bArr2[i7] & 255;
                        if (i10 == 255) {
                            break;
                        } else if (obj5.equals(objArr[i10])) {
                            throw zzi(obj5, obj6, objArr, i10);
                        } else {
                            zza2 = i7 + 1;
                        }
                    }
                    bArr2[i7] = (byte) i6;
                    i8++;
                }
            } else if (zzh <= 32768) {
                short[] sArr = new short[zzh];
                Arrays.fill(sArr, (short) -1);
                int i11 = 0;
                while (true) {
                    bArr = sArr;
                    if (i11 >= i) {
                        break;
                    }
                    i4 = i11 + i11;
                    Object obj7 = objArr[i4];
                    Objects.requireNonNull(obj7);
                    Object obj8 = objArr[i4 ^ 1];
                    Objects.requireNonNull(obj8);
                    zzfrr.zzb(obj7, obj8);
                    int zza3 = zzfsk.zza(obj7.hashCode());
                    while (true) {
                        i5 = zza3 & i9;
                        char c = (char) sArr[i5];
                        if (c == 65535) {
                            break;
                        } else if (obj7.equals(objArr[c])) {
                            throw zzi(obj7, obj8, objArr, c);
                        } else {
                            zza3 = i5 + 1;
                        }
                    }
                    sArr[i5] = (short) i4;
                    i11++;
                }
            } else {
                int[] iArr = new int[zzh];
                Arrays.fill(iArr, -1);
                int i12 = 0;
                while (true) {
                    bArr = iArr;
                    if (i12 >= i) {
                        break;
                    }
                    i2 = i12 + i12;
                    Object obj9 = objArr[i2];
                    Objects.requireNonNull(obj9);
                    Object obj10 = objArr[i2 ^ 1];
                    Objects.requireNonNull(obj10);
                    zzfrr.zzb(obj9, obj10);
                    int zza4 = zzfsk.zza(obj9.hashCode());
                    while (true) {
                        i3 = zza4 & i9;
                        char c2 = iArr[i3];
                        if (c2 == -1) {
                            break;
                        } else if (obj9.equals(objArr[c2])) {
                            throw zzi(obj9, obj10, objArr, c2);
                        } else {
                            zza4 = i3 + 1;
                        }
                    }
                    iArr[i3] = i2;
                    i12++;
                }
            }
        }
        return new zzful<>(bArr, objArr, i);
    }

    private static IllegalArgumentException zzi(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder sb = new StringBuilder(valueOf.length() + 39 + valueOf2.length() + valueOf3.length() + valueOf4.length());
        C0082b.m8749m(sb, "Multiple entries with same key: ", valueOf, "=", valueOf2);
        return new IllegalArgumentException(C1676a.m4788i(sb, " and ", valueOf3, "=", valueOf4));
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0126 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0128  */
    @Override // com.google.android.gms.internal.ads.zzfsw, java.util.Map
    @javax.annotation.CheckForNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V get(@javax.annotation.CheckForNull java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzful.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final zzfsn<V> zza() {
        return new zzfuk(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final zzftc<Map.Entry<K, V>> zze() {
        return new zzfui(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzfsw
    public final zzftc<K> zzf() {
        return new zzfuj(this, new zzfuk(this.zzb, 0, this.zzd));
    }
}
