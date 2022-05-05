package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdv.class */
final class zzdv<T> implements zzef<T> {
    private static final int[] zzjw = new int[0];
    private static final Unsafe zzjx = zzfd.zzcu();
    private final int[] zzjy;
    private final Object[] zzjz;
    private final int zzka;
    private final int zzkb;
    private final zzdr zzkc;
    private final boolean zzkd;
    private final boolean zzke;
    private final boolean zzkf;
    private final boolean zzkg;
    private final int[] zzkh;
    private final int zzki;
    private final int zzkj;
    private final zzdy zzkk;
    private final zzdc zzkl;
    private final zzex<?, ?> zzkm;
    private final zzca<?> zzkn;
    private final zzdm zzko;

    private zzdv(int[] iArr, Object[] objArr, int i, int i2, zzdr zzdrVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzdy zzdyVar, zzdc zzdcVar, zzex<?, ?> zzexVar, zzca<?> zzcaVar, zzdm zzdmVar) {
        this.zzjy = iArr;
        this.zzjz = objArr;
        this.zzka = i;
        this.zzkb = i2;
        this.zzke = zzdrVar instanceof zzck;
        this.zzkf = z;
        this.zzkd = zzcaVar != null && zzcaVar.zze(zzdrVar);
        this.zzkg = false;
        this.zzkh = iArr2;
        this.zzki = i3;
        this.zzkj = i4;
        this.zzkk = zzdyVar;
        this.zzkl = zzdcVar;
        this.zzkm = zzexVar;
        this.zzkn = zzcaVar;
        this.zzkc = zzdrVar;
        this.zzko = zzdmVar;
    }

    private static <UT, UB> int zza(zzex<UT, UB> zzexVar, T t) {
        return zzexVar.zzj(zzexVar.zzm(t));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:164:0x08a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.icing.zzdv<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.icing.zzdp r19, com.google.android.gms.internal.icing.zzdy r20, com.google.android.gms.internal.icing.zzdc r21, com.google.android.gms.internal.icing.zzex<?, ?> r22, com.google.android.gms.internal.icing.zzca<?> r23, com.google.android.gms.internal.icing.zzdm r24) {
        /*
            Method dump skipped, instructions count: 2630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.zza(java.lang.Class, com.google.android.gms.internal.icing.zzdp, com.google.android.gms.internal.icing.zzdy, com.google.android.gms.internal.icing.zzdc, com.google.android.gms.internal.icing.zzex, com.google.android.gms.internal.icing.zzca, com.google.android.gms.internal.icing.zzdm):com.google.android.gms.internal.icing.zzdv");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private static void zza(int i, Object obj, zzfr zzfrVar) throws IOException {
        if (obj instanceof String) {
            zzfrVar.zza(i, (String) obj);
        } else {
            zzfrVar.zza(i, (zzbi) obj);
        }
    }

    private static <UT, UB> void zza(zzex<UT, UB> zzexVar, T t, zzfr zzfrVar) throws IOException {
        zzexVar.zza(zzexVar.zzm(t), zzfrVar);
    }

    private final <K, V> void zza(zzfr zzfrVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzfrVar.zza(i, this.zzko.zzi(zzab(i2)), this.zzko.zzg(obj));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzac = zzac(i) & 1048575;
        if (zza((zzdv<T>) t2, i)) {
            Object zzo = zzfd.zzo(t, zzac);
            Object zzo2 = zzfd.zzo(t2, zzac);
            if (zzo != null && zzo2 != null) {
                zzfd.zza(t, zzac, zzcm.zza(zzo, zzo2));
                zzb((zzdv<T>) t, i);
            } else if (zzo2 != null) {
                zzfd.zza(t, zzac, zzo2);
                zzb((zzdv<T>) t, i);
            }
        }
    }

    private final boolean zza(T t, int i) {
        if (this.zzkf) {
            int zzac = zzac(i);
            long j = zzac & 1048575;
            switch ((zzac & 267386880) >>> 20) {
                case 0:
                    return zzfd.zzn(t, j) != 0.0d;
                case 1:
                    return zzfd.zzm(t, j) != 0.0f;
                case 2:
                    return zzfd.zzk(t, j) != 0;
                case 3:
                    return zzfd.zzk(t, j) != 0;
                case 4:
                    return zzfd.zzj(t, j) != 0;
                case 5:
                    return zzfd.zzk(t, j) != 0;
                case 6:
                    return zzfd.zzj(t, j) != 0;
                case 7:
                    return zzfd.zzl(t, j);
                case 8:
                    Object zzo = zzfd.zzo(t, j);
                    if (zzo instanceof String) {
                        return !((String) zzo).isEmpty();
                    }
                    if (zzo instanceof zzbi) {
                        return !zzbi.zzdq.equals(zzo);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    return zzfd.zzo(t, j) != null;
                case 10:
                    return !zzbi.zzdq.equals(zzfd.zzo(t, j));
                case 11:
                    return zzfd.zzj(t, j) != 0;
                case 12:
                    return zzfd.zzj(t, j) != 0;
                case 13:
                    return zzfd.zzj(t, j) != 0;
                case 14:
                    return zzfd.zzk(t, j) != 0;
                case 15:
                    return zzfd.zzj(t, j) != 0;
                case 16:
                    return zzfd.zzk(t, j) != 0;
                case 17:
                    return zzfd.zzo(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            int zzad = zzad(i);
            return (zzfd.zzj(t, (long) (zzad & 1048575)) & (1 << (zzad >>> 20))) != 0;
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzfd.zzj(t, (long) (zzad(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzkf ? zza((zzdv<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzef zzefVar) {
        return zzefVar.zzk(zzfd.zzo(obj, i & 1048575));
    }

    private final zzef zzaa(int i) {
        int i2 = (i / 3) << 1;
        zzef zzefVar = (zzef) this.zzjz[i2];
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef<T> zze = zzec.zzbz().zze((Class) this.zzjz[i2 + 1]);
        this.zzjz[i2] = zze;
        return zze;
    }

    private final Object zzab(int i) {
        return this.zzjz[(i / 3) << 1];
    }

    private final int zzac(int i) {
        return this.zzjy[i + 1];
    }

    private final int zzad(int i) {
        return this.zzjy[i + 2];
    }

    private final void zzb(T t, int i) {
        if (!this.zzkf) {
            int zzad = zzad(i);
            long j = zzad & 1048575;
            zzfd.zza((Object) t, j, zzfd.zzj(t, j) | (1 << (zzad >>> 20)));
        }
    }

    private final void zzb(T t, int i, int i2) {
        zzfd.zza((Object) t, zzad(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x09b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.icing.zzfr r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.zzb(java.lang.Object, com.google.android.gms.internal.icing.zzfr):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzac = zzac(i);
        int i2 = this.zzjy[i];
        long j = zzac & 1048575;
        if (zza((zzdv<T>) t2, i2, i)) {
            Object zzo = zzfd.zzo(t, j);
            Object zzo2 = zzfd.zzo(t2, j);
            if (zzo != null && zzo2 != null) {
                zzfd.zza(t, j, zzcm.zza(zzo, zzo2));
                zzb((zzdv<T>) t, i2, i);
            } else if (zzo2 != null) {
                zzfd.zza(t, j, zzo2);
                zzb((zzdv<T>) t, i2, i);
            }
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzdv<T>) t, i) == zza((zzdv<T>) t2, i);
    }

    private static <E> List<E> zzd(Object obj, long j) {
        return (List) zzfd.zzo(obj, j);
    }

    private static <T> double zze(T t, long j) {
        return ((Double) zzfd.zzo(t, j)).doubleValue();
    }

    private static <T> float zzf(T t, long j) {
        return ((Float) zzfd.zzo(t, j)).floatValue();
    }

    private static <T> int zzg(T t, long j) {
        return ((Integer) zzfd.zzo(t, j)).intValue();
    }

    private static <T> long zzh(T t, long j) {
        return ((Long) zzfd.zzo(t, j)).longValue();
    }

    private static <T> boolean zzi(T t, long j) {
        return ((Boolean) zzfd.zzo(t, j)).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (com.google.android.gms.internal.icing.zzeh.zzd(com.google.android.gms.internal.icing.zzfd.zzo(r7, r0), com.google.android.gms.internal.icing.zzfd.zzo(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01b2, code lost:
        if (com.google.android.gms.internal.icing.zzeh.zzd(com.google.android.gms.internal.icing.zzfd.zzo(r7, r0), com.google.android.gms.internal.icing.zzfd.zzo(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01d0, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01ed, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x020b, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0228, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0245, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0262, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0282, code lost:
        if (com.google.android.gms.internal.icing.zzeh.zzd(com.google.android.gms.internal.icing.zzfd.zzo(r7, r0), com.google.android.gms.internal.icing.zzfd.zzo(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x02a2, code lost:
        if (com.google.android.gms.internal.icing.zzeh.zzd(com.google.android.gms.internal.icing.zzfd.zzo(r7, r0), com.google.android.gms.internal.icing.zzfd.zzo(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02c2, code lost:
        if (com.google.android.gms.internal.icing.zzeh.zzd(com.google.android.gms.internal.icing.zzfd.zzo(r7, r0), com.google.android.gms.internal.icing.zzfd.zzo(r8, r0)) != false) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02df, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzl(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzl(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02fc, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x031a, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0337, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0355, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0373, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0390, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzj(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzj(r8, r0)) goto L_0x03b4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03ae, code lost:
        if (com.google.android.gms.internal.icing.zzfd.zzk(r7, r0) == com.google.android.gms.internal.icing.zzfd.zzk(r8, r0)) goto L_0x03b4;
     */
    @Override // com.google.android.gms.internal.icing.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1014
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0307, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0330, code lost:
        if (r15 != null) goto L_0x0333;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0333, code lost:
        r14 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x033a, code lost:
        r14 = (r0 * 53) + r14;
     */
    @Override // com.google.android.gms.internal.icing.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.hashCode(java.lang.Object):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x09e6  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a59  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x13df  */
    @Override // com.google.android.gms.internal.icing.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.icing.zzfr r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5145
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.zza(java.lang.Object, com.google.android.gms.internal.icing.zzfr):void");
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final void zzc(T t) {
        for (int i = this.zzki; i < this.zzkj; i++) {
            long zzac = zzac(this.zzkh[i]) & 1048575;
            Object zzo = zzfd.zzo(t, zzac);
            if (zzo != null) {
                zzfd.zza(t, zzac, this.zzko.zzh(zzo));
            }
        }
        int length = this.zzkh.length;
        for (int i2 = this.zzkj; i2 < length; i2++) {
            this.zzkl.zza(t, this.zzkh[i2]);
        }
        this.zzkm.zzc(t);
        if (this.zzkd) {
            this.zzkn.zzc(t);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final void zzc(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzjy.length; i += 3) {
            int zzac = zzac(i);
            long j = 1048575 & zzac;
            int i2 = this.zzjy[i];
            switch ((zzac & 267386880) >>> 20) {
                case 0:
                    if (zza((zzdv<T>) t2, i)) {
                        zzfd.zza(t, j, zzfd.zzn(t2, j));
                        zzb((zzdv<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzdv<T>) t2, i)) {
                        zzfd.zza((Object) t, j, zzfd.zzm(t2, j));
                        zzb((zzdv<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 3:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 4:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 5:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 6:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 7:
                    if (zza((zzdv<T>) t2, i)) {
                        zzfd.zza(t, j, zzfd.zzl(t2, j));
                        zzb((zzdv<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza(t, j, zzfd.zzo(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 9:
                case 17:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza(t, j, zzfd.zzo(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 11:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 12:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 13:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 14:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 15:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 16:
                    if (!zza((zzdv<T>) t2, i)) {
                        break;
                    }
                    zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                    zzb((zzdv<T>) t, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzkl.zza(t, t2, j);
                    break;
                case 50:
                    zzeh.zza(this.zzko, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (!zza((zzdv<T>) t2, i2, i)) {
                        break;
                    }
                    zzfd.zza(t, j, zzfd.zzo(t2, j));
                    zzb((zzdv<T>) t, i2, i);
                    break;
                case 60:
                case 68:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!zza((zzdv<T>) t2, i2, i)) {
                        break;
                    }
                    zzfd.zza(t, j, zzfd.zzo(t2, j));
                    zzb((zzdv<T>) t, i2, i);
                    break;
            }
        }
        if (!this.zzkf) {
            zzeh.zza(this.zzkm, t, t2);
            if (this.zzkd) {
                zzeh.zza(this.zzkn, t, t2);
            }
        }
    }

    @Override // com.google.android.gms.internal.icing.zzef
    public final int zzj(T t) {
        int i;
        int i2;
        int i3;
        int zzb;
        String str;
        Object obj;
        int i4;
        int i5;
        int i6;
        int i7;
        long j;
        int i8;
        int zzb2;
        long j2;
        long j3;
        int i9;
        String str2;
        Object obj2;
        int i10;
        int i11;
        int i12;
        long j4;
        int i13;
        if (this.zzkf) {
            Unsafe unsafe = zzjx;
            int i14 = 0;
            for (int i15 = 0; i15 < this.zzjy.length; i15 += 3) {
                int zzac = zzac(i15);
                int i16 = (zzac & 267386880) >>> 20;
                int i17 = this.zzjy[i15];
                long j5 = zzac & 1048575;
                int i18 = (i16 < zzcg.DOUBLE_LIST_PACKED.m335id() || i16 > zzcg.SINT64_LIST_PACKED.m335id()) ? 0 : this.zzjy[i15 + 2] & 1048575;
                switch (i16) {
                    case 0:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, 0.0d);
                        break;
                    case 1:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, 0.0f);
                        break;
                    case 2:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            j2 = zzfd.zzk(t, j5);
                            zzb2 = zzbu.zzd(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            j3 = zzfd.zzk(t, j5);
                            zzb2 = zzbu.zze(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            i9 = zzfd.zzj(t, j5);
                            zzb2 = zzbu.zzg(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzg(i17, 0L);
                        break;
                    case 6:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzj(i17, 0);
                        break;
                    case 7:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, true);
                        break;
                    case 8:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            Object zzo = zzfd.zzo(t, j5);
                            str2 = zzo;
                            if (zzo instanceof zzbi) {
                                obj2 = zzo;
                                zzb2 = zzbu.zzc(i17, (zzbi) obj2);
                                break;
                            }
                            zzb2 = zzbu.zzb(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzeh.zzc(i17, zzfd.zzo(t, j5), zzaa(i15));
                        break;
                    case 10:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        obj2 = zzfd.zzo(t, j5);
                        zzb2 = zzbu.zzc(i17, (zzbi) obj2);
                        break;
                    case 11:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            i10 = zzfd.zzj(t, j5);
                            zzb2 = zzbu.zzh(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            i11 = zzfd.zzj(t, j5);
                            zzb2 = zzbu.zzl(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzk(i17, 0);
                        break;
                    case 14:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzh(i17, 0L);
                        break;
                    case 15:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            i12 = zzfd.zzj(t, j5);
                            zzb2 = zzbu.zzi(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i15)) {
                            j4 = zzfd.zzk(t, j5);
                            zzb2 = zzbu.zzf(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 17:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzc(i17, (zzdr) zzfd.zzo(t, j5), zzaa(i15));
                        break;
                    case 18:
                    case 23:
                    case 32:
                        zzb2 = zzeh.zzw(i17, zzd(t, j5), false);
                        break;
                    case 19:
                    case 24:
                    case 31:
                        zzb2 = zzeh.zzv(i17, zzd(t, j5), false);
                        break;
                    case 20:
                        zzb2 = zzeh.zzo(i17, zzd(t, j5), false);
                        break;
                    case 21:
                        zzb2 = zzeh.zzp(i17, zzd(t, j5), false);
                        break;
                    case 22:
                        zzb2 = zzeh.zzs(i17, zzd(t, j5), false);
                        break;
                    case 25:
                        zzb2 = zzeh.zzx(i17, zzd(t, j5), false);
                        break;
                    case 26:
                        zzb2 = zzeh.zzc(i17, zzd(t, j5));
                        break;
                    case 27:
                        zzb2 = zzeh.zzc(i17, (List<?>) zzd(t, j5), zzaa(i15));
                        break;
                    case 28:
                        zzb2 = zzeh.zzd(i17, zzd(t, j5));
                        break;
                    case 29:
                        zzb2 = zzeh.zzt(i17, zzd(t, j5), false);
                        break;
                    case 30:
                        zzb2 = zzeh.zzr(i17, zzd(t, j5), false);
                        break;
                    case 33:
                        zzb2 = zzeh.zzu(i17, zzd(t, j5), false);
                        break;
                    case 34:
                        zzb2 = zzeh.zzq(i17, zzd(t, j5), false);
                        break;
                    case 35:
                        int zzi = zzeh.zzi((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzi > 0) {
                            i13 = zzi;
                            if (this.zzkg) {
                                i13 = zzi;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 36:
                        int zzh = zzeh.zzh((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzh > 0) {
                            i13 = zzh;
                            if (this.zzkg) {
                                i13 = zzh;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 37:
                        int zza = zzeh.zza((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zza > 0) {
                            i13 = zza;
                            if (this.zzkg) {
                                i13 = zza;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 38:
                        int zzb3 = zzeh.zzb((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzb3 > 0) {
                            i13 = zzb3;
                            if (this.zzkg) {
                                i13 = zzb3;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 39:
                        int zze = zzeh.zze((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zze > 0) {
                            i13 = zze;
                            if (this.zzkg) {
                                i13 = zze;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 40:
                        int zzi2 = zzeh.zzi((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzi2 > 0) {
                            i13 = zzi2;
                            if (this.zzkg) {
                                i13 = zzi2;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 41:
                        int zzh2 = zzeh.zzh((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzh2 > 0) {
                            i13 = zzh2;
                            if (this.zzkg) {
                                i13 = zzh2;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 42:
                        int zzj = zzeh.zzj((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzj > 0) {
                            i13 = zzj;
                            if (this.zzkg) {
                                i13 = zzj;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 43:
                        int zzf = zzeh.zzf((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzf > 0) {
                            i13 = zzf;
                            if (this.zzkg) {
                                i13 = zzf;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 44:
                        int zzd = zzeh.zzd((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzd > 0) {
                            i13 = zzd;
                            if (this.zzkg) {
                                i13 = zzd;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 45:
                        int zzh3 = zzeh.zzh((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzh3 > 0) {
                            i13 = zzh3;
                            if (this.zzkg) {
                                i13 = zzh3;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 46:
                        int zzi3 = zzeh.zzi((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzi3 > 0) {
                            i13 = zzi3;
                            if (this.zzkg) {
                                i13 = zzi3;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 47:
                        int zzg = zzeh.zzg((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzg > 0) {
                            i13 = zzg;
                            if (this.zzkg) {
                                i13 = zzg;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 48:
                        int zzc = zzeh.zzc((List) unsafe.getObject(t, j5));
                        i14 = i14;
                        if (zzc > 0) {
                            i13 = zzc;
                            if (this.zzkg) {
                                i13 = zzc;
                                unsafe.putInt(t, i18, i13);
                            }
                            zzb2 = zzbu.zzp(i17) + zzbu.zzr(i13) + i13;
                            break;
                        } else {
                            continue;
                        }
                    case 49:
                        zzb2 = zzeh.zzd(i17, zzd(t, j5), zzaa(i15));
                        break;
                    case 50:
                        zzb2 = this.zzko.zzb(i17, zzfd.zzo(t, j5), zzab(i15));
                        break;
                    case 51:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, 0.0d);
                        break;
                    case 52:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, 0.0f);
                        break;
                    case 53:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            j2 = zzh(t, j5);
                            zzb2 = zzbu.zzd(i17, j2);
                            break;
                        } else {
                            continue;
                        }
                    case 54:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            j3 = zzh(t, j5);
                            zzb2 = zzbu.zze(i17, j3);
                            break;
                        } else {
                            continue;
                        }
                    case 55:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            i9 = zzg(t, j5);
                            zzb2 = zzbu.zzg(i17, i9);
                            break;
                        } else {
                            continue;
                        }
                    case 56:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzg(i17, 0L);
                        break;
                    case 57:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzj(i17, 0);
                        break;
                    case 58:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzb(i17, true);
                        break;
                    case 59:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            Object zzo2 = zzfd.zzo(t, j5);
                            str2 = zzo2;
                            if (zzo2 instanceof zzbi) {
                                obj2 = zzo2;
                                zzb2 = zzbu.zzc(i17, (zzbi) obj2);
                                break;
                            }
                            zzb2 = zzbu.zzb(i17, str2);
                            break;
                        } else {
                            continue;
                        }
                    case 60:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzeh.zzc(i17, zzfd.zzo(t, j5), zzaa(i15));
                        break;
                    case 61:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        obj2 = zzfd.zzo(t, j5);
                        zzb2 = zzbu.zzc(i17, (zzbi) obj2);
                        break;
                    case 62:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            i10 = zzg(t, j5);
                            zzb2 = zzbu.zzh(i17, i10);
                            break;
                        } else {
                            continue;
                        }
                    case 63:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            i11 = zzg(t, j5);
                            zzb2 = zzbu.zzl(i17, i11);
                            break;
                        } else {
                            continue;
                        }
                    case 64:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzk(i17, 0);
                        break;
                    case 65:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzh(i17, 0L);
                        break;
                    case 66:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            i12 = zzg(t, j5);
                            zzb2 = zzbu.zzi(i17, i12);
                            break;
                        } else {
                            continue;
                        }
                    case 67:
                        i14 = i14;
                        if (zza((zzdv<T>) t, i17, i15)) {
                            j4 = zzh(t, j5);
                            zzb2 = zzbu.zzf(i17, j4);
                            break;
                        } else {
                            continue;
                        }
                    case 68:
                        i14 = i14;
                        if (!zza((zzdv<T>) t, i17, i15)) {
                            continue;
                        }
                        zzb2 = zzbu.zzc(i17, (zzdr) zzfd.zzo(t, j5), zzaa(i15));
                        break;
                    default:
                        i14 = i14;
                        continue;
                }
                i14 += zzb2;
            }
            return i14 + zza(this.zzkm, t);
        }
        Unsafe unsafe2 = zzjx;
        int i19 = 0;
        int i20 = -1;
        int i21 = 0;
        for (int i22 = 0; i22 < this.zzjy.length; i22 += 3) {
            int zzac2 = zzac(i22);
            int i23 = this.zzjy[i22];
            int i24 = (zzac2 & 267386880) >>> 20;
            if (i24 <= 17) {
                int i25 = this.zzjy[i22 + 2];
                int i26 = i25 & 1048575;
                int i27 = 1 << (i25 >>> 20);
                i20 = i20;
                i2 = i25;
                i = i27;
                if (i26 != i20) {
                    i21 = unsafe2.getInt(t, i26);
                    i20 = i26;
                    i2 = i25;
                    i = i27;
                }
            } else {
                i2 = (!this.zzkg || i24 < zzcg.DOUBLE_LIST_PACKED.m335id() || i24 > zzcg.SINT64_LIST_PACKED.m335id()) ? 0 : this.zzjy[i22 + 2] & 1048575;
                i = 0;
                i20 = i20;
            }
            long j6 = zzac2 & 1048575;
            switch (i24) {
                case 0:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i19 += zzbu.zzb(i23, 0.0d);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i19 += zzbu.zzb(i23, 0.0f);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i3 = zzbu.zzd(i23, unsafe2.getLong(t, j6));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i3 = zzbu.zze(i23, unsafe2.getLong(t, j6));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i3 = zzbu.zzg(i23, unsafe2.getInt(t, j6));
                        i19 += i3;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i19 += zzbu.zzg(i23, 0L);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i19 += zzbu.zzj(i23, 0);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    zzb = zzbu.zzb(i23, true);
                    i19 += zzb;
                    break;
                case 8:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe2.getObject(t, j6);
                        str = object;
                        if (object instanceof zzbi) {
                            obj = object;
                            zzb = zzbu.zzc(i23, (zzbi) obj);
                            i19 += zzb;
                            break;
                        }
                        zzb = zzbu.zzb(i23, str);
                        i19 += zzb;
                    }
                case 9:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    zzb = zzeh.zzc(i23, unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                case 10:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j6);
                    zzb = zzbu.zzc(i23, (zzbi) obj);
                    i19 += zzb;
                    break;
                case 11:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i4 = unsafe2.getInt(t, j6);
                        zzb = zzbu.zzh(i23, i4);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i5 = unsafe2.getInt(t, j6);
                        zzb = zzbu.zzl(i23, i5);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    i6 = zzbu.zzk(i23, 0);
                    i19 += i6;
                    break;
                case 14:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    zzb = zzbu.zzh(i23, 0L);
                    i19 += zzb;
                    break;
                case 15:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        i7 = unsafe2.getInt(t, j6);
                        zzb = zzbu.zzi(i23, i7);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i19 = i19;
                    if ((i21 & i) != 0) {
                        j = unsafe2.getLong(t, j6);
                        zzb = zzbu.zzf(i23, j);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i19 = i19;
                    if ((i21 & i) == 0) {
                        break;
                    }
                    zzb = zzbu.zzc(i23, (zzdr) unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                case 18:
                case 23:
                case 32:
                    zzb = zzeh.zzw(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 19:
                case 24:
                case 31:
                    zzb = zzeh.zzv(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 20:
                    zzb = zzeh.zzo(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 21:
                    zzb = zzeh.zzp(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 22:
                    zzb = zzeh.zzs(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 25:
                    zzb = zzeh.zzx(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 26:
                    zzb = zzeh.zzc(i23, (List) unsafe2.getObject(t, j6));
                    i19 += zzb;
                    break;
                case 27:
                    zzb = zzeh.zzc(i23, (List<?>) unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                case 28:
                    zzb = zzeh.zzd(i23, (List) unsafe2.getObject(t, j6));
                    i19 += zzb;
                    break;
                case 29:
                    zzb = zzeh.zzt(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 30:
                    zzb = zzeh.zzr(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 33:
                    zzb = zzeh.zzu(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 34:
                    zzb = zzeh.zzq(i23, (List) unsafe2.getObject(t, j6), false);
                    i19 += zzb;
                    break;
                case 35:
                    int zzi4 = zzeh.zzi((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzi4 > 0) {
                        i8 = zzi4;
                        if (this.zzkg) {
                            i8 = zzi4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int zzh4 = zzeh.zzh((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzh4 > 0) {
                        i8 = zzh4;
                        if (this.zzkg) {
                            i8 = zzh4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int zza2 = zzeh.zza((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zza2 > 0) {
                        i8 = zza2;
                        if (this.zzkg) {
                            i8 = zza2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int zzb4 = zzeh.zzb((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzb4 > 0) {
                        i8 = zzb4;
                        if (this.zzkg) {
                            i8 = zzb4;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int zze2 = zzeh.zze((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zze2 > 0) {
                        i8 = zze2;
                        if (this.zzkg) {
                            i8 = zze2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int zzi5 = zzeh.zzi((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzi5 > 0) {
                        i8 = zzi5;
                        if (this.zzkg) {
                            i8 = zzi5;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int zzh5 = zzeh.zzh((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzh5 > 0) {
                        i8 = zzh5;
                        if (this.zzkg) {
                            i8 = zzh5;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int zzj2 = zzeh.zzj((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzj2 > 0) {
                        i8 = zzj2;
                        if (this.zzkg) {
                            i8 = zzj2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int zzf2 = zzeh.zzf((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzf2 > 0) {
                        i8 = zzf2;
                        if (this.zzkg) {
                            i8 = zzf2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int zzd2 = zzeh.zzd((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzd2 > 0) {
                        i8 = zzd2;
                        if (this.zzkg) {
                            i8 = zzd2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int zzh6 = zzeh.zzh((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzh6 > 0) {
                        i8 = zzh6;
                        if (this.zzkg) {
                            i8 = zzh6;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int zzi6 = zzeh.zzi((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzi6 > 0) {
                        i8 = zzi6;
                        if (this.zzkg) {
                            i8 = zzi6;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int zzg2 = zzeh.zzg((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzg2 > 0) {
                        i8 = zzg2;
                        if (this.zzkg) {
                            i8 = zzg2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int zzc2 = zzeh.zzc((List) unsafe2.getObject(t, j6));
                    i19 = i19;
                    if (zzc2 > 0) {
                        i8 = zzc2;
                        if (this.zzkg) {
                            i8 = zzc2;
                            unsafe2.putInt(t, i2, i8);
                        }
                        zzb = zzbu.zzp(i23) + zzbu.zzr(i8) + i8;
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzb = zzeh.zzd(i23, (List) unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                case 50:
                    zzb = this.zzko.zzb(i23, unsafe2.getObject(t, j6), zzab(i22));
                    i19 += zzb;
                    break;
                case 51:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        zzb = zzbu.zzb(i23, 0.0d);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        i6 = zzbu.zzb(i23, 0.0f);
                        i19 += i6;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        zzb = zzbu.zzd(i23, zzh(t, j6));
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        zzb = zzbu.zze(i23, zzh(t, j6));
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        zzb = zzbu.zzg(i23, zzg(t, j6));
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        zzb = zzbu.zzg(i23, 0L);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        i6 = zzbu.zzj(i23, 0);
                        i19 += i6;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    zzb = zzbu.zzb(i23, true);
                    i19 += zzb;
                    break;
                case 59:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    } else {
                        Object object2 = unsafe2.getObject(t, j6);
                        str = object2;
                        if (object2 instanceof zzbi) {
                            obj = object2;
                            zzb = zzbu.zzc(i23, (zzbi) obj);
                            i19 += zzb;
                            break;
                        }
                        zzb = zzbu.zzb(i23, str);
                        i19 += zzb;
                    }
                case 60:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    zzb = zzeh.zzc(i23, unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                case 61:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    obj = unsafe2.getObject(t, j6);
                    zzb = zzbu.zzc(i23, (zzbi) obj);
                    i19 += zzb;
                    break;
                case 62:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        i4 = zzg(t, j6);
                        zzb = zzbu.zzh(i23, i4);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        i5 = zzg(t, j6);
                        zzb = zzbu.zzl(i23, i5);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    i6 = zzbu.zzk(i23, 0);
                    i19 += i6;
                    break;
                case 65:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    zzb = zzbu.zzh(i23, 0L);
                    i19 += zzb;
                    break;
                case 66:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        i7 = zzg(t, j6);
                        zzb = zzbu.zzi(i23, i7);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i19 = i19;
                    if (zza((zzdv<T>) t, i23, i22)) {
                        j = zzh(t, j6);
                        zzb = zzbu.zzf(i23, j);
                        i19 += zzb;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i19 = i19;
                    if (!zza((zzdv<T>) t, i23, i22)) {
                        break;
                    }
                    zzb = zzbu.zzc(i23, (zzdr) unsafe2.getObject(t, j6), zzaa(i22));
                    i19 += zzb;
                    break;
                default:
                    i19 = i19;
                    break;
            }
        }
        int zza3 = i19 + zza(this.zzkm, t);
        int i28 = zza3;
        if (this.zzkd) {
            i28 = zza3 + this.zzkn.zza(t).zzan();
        }
        return i28;
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x0214, code lost:
        continue;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.icing.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(T r7) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzdv.zzk(java.lang.Object):boolean");
    }
}
