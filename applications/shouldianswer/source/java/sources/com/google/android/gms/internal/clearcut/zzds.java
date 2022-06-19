package com.google.android.gms.internal.clearcut;

import com.google.android.flexbox.FlexItem;
import com.google.android.gms.internal.clearcut.zzcg;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzds.class */
final class zzds<T> implements zzef<T> {
    private static final Unsafe zzmh = zzfd.zzef();
    private final int[] zzmi;
    private final Object[] zzmj;
    private final int zzmk;
    private final int zzml;
    private final int zzmm;
    private final zzdo zzmn;
    private final boolean zzmo;
    private final boolean zzmp;
    private final boolean zzmq;
    private final boolean zzmr;
    private final int[] zzms;
    private final int[] zzmt;
    private final int[] zzmu;
    private final zzdw zzmv;
    private final zzcy zzmw;
    private final zzex<?, ?> zzmx;
    private final zzbu<?> zzmy;
    private final zzdj zzmz;

    private zzds(int[] iArr, Object[] objArr, int i, int i2, int i3, zzdo zzdoVar, boolean z, boolean z2, int[] iArr2, int[] iArr3, int[] iArr4, zzdw zzdwVar, zzcy zzcyVar, zzex<?, ?> zzexVar, zzbu<?> zzbuVar, zzdj zzdjVar) {
        this.zzmi = iArr;
        this.zzmj = objArr;
        this.zzmk = i;
        this.zzml = i2;
        this.zzmm = i3;
        this.zzmp = zzdoVar instanceof zzcg;
        this.zzmq = z;
        this.zzmo = zzbuVar != null && zzbuVar.zze(zzdoVar);
        this.zzmr = false;
        this.zzms = iArr2;
        this.zzmt = iArr3;
        this.zzmu = iArr4;
        this.zzmv = zzdwVar;
        this.zzmw = zzcyVar;
        this.zzmx = zzexVar;
        this.zzmy = zzbuVar;
        this.zzmn = zzdoVar;
        this.zzmz = zzdjVar;
    }

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzay zzayVar) {
        return zzax.zza(i, bArr, i2, i3, zzn(obj), zzayVar);
    }

    private static int zza(zzef<?> zzefVar, int i, byte[] bArr, int i2, int i3, zzcn<?> zzcnVar, zzay zzayVar) {
        int i4;
        int zza = zza((zzef) zzefVar, bArr, i2, i3, zzayVar);
        while (true) {
            i4 = zza;
            zzcnVar.add(zzayVar.zzff);
            if (i4 >= i3) {
                break;
            }
            int zza2 = zzax.zza(bArr, i4, zzayVar);
            if (i != zzayVar.zzfd) {
                break;
            }
            zza = zza((zzef) zzefVar, bArr, zza2, i3, zzayVar);
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, int i3, zzay zzayVar) {
        zzds zzdsVar = (zzds) zzefVar;
        Object newInstance = zzdsVar.newInstance();
        int zza = zzdsVar.zza((zzds) newInstance, bArr, i, i2, i3, zzayVar);
        zzdsVar.zzc(newInstance);
        zzayVar.zzff = newInstance;
        return zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, zzay zzayVar) {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = zzax.zza(b, bArr, i3, zzayVar);
            i5 = zzayVar.zzfd;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzco.zzbl();
        }
        Object newInstance = zzefVar.newInstance();
        int i6 = i5 + i4;
        zzefVar.zza(newInstance, bArr, i4, i6, zzayVar);
        zzefVar.zzc(newInstance);
        zzayVar.zzff = newInstance;
        return i6;
    }

    private static <UT, UB> int zza(zzex<UT, UB> zzexVar, T t) {
        return zzexVar.zzm(zzexVar.zzq(t));
    }

    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzay zzayVar) {
        Long l;
        Integer num;
        zzbb zzbbVar;
        char c;
        int i9;
        int i10;
        Unsafe unsafe = zzmh;
        long j2 = this.zzmi[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    l = Double.valueOf(zzax.zze(bArr, i));
                    unsafe.putObject(t, j, l);
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    num = Float.valueOf(zzax.zzf(bArr, i));
                    unsafe.putObject(t, j, num);
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = zzax.zzb(bArr, i, zzayVar);
                    c = zzayVar.zzfe;
                    zzbbVar = Long.valueOf(c);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = zzax.zza(bArr, i, zzayVar);
                    i9 = zzayVar.zzfd;
                    zzbbVar = Integer.valueOf(i9);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    l = Long.valueOf(zzax.zzd(bArr, i));
                    unsafe.putObject(t, j, l);
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    num = Integer.valueOf(zzax.zzc(bArr, i));
                    unsafe.putObject(t, j, num);
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = zzax.zzb(bArr, i, zzayVar);
                    zzbbVar = Boolean.valueOf(zzayVar.zzfe != 0);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzax.zza(bArr, i, zzayVar);
                    i10 = zzayVar.zzfd;
                    if (i10 == 0) {
                        zzbbVar = "";
                        unsafe.putObject(t, j, zzbbVar);
                        unsafe.putInt(t, j2, i4);
                        break;
                    } else if ((i6 & 536870912) != 0 && !zzff.zze(bArr, i, i + i10)) {
                        throw zzco.zzbp();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i10, zzci.UTF_8));
                        i += i10;
                        unsafe.putInt(t, j2, i4);
                    }
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zza(zzad(i8), bArr, i, i2, zzayVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj = zzayVar.zzff;
                    zzbbVar = object == null ? obj : zzci.zza(object, obj);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = zzax.zza(bArr, i, zzayVar);
                    i10 = zzayVar.zzfd;
                    if (i10 == 0) {
                        zzbbVar = zzbb.zzfi;
                        unsafe.putObject(t, j, zzbbVar);
                        unsafe.putInt(t, j2, i4);
                        break;
                    } else {
                        unsafe.putObject(t, j, zzbb.zzb(bArr, i, i10));
                        i += i10;
                        unsafe.putInt(t, j2, i4);
                    }
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzax.zza(bArr, i, zzayVar);
                    int i11 = zzayVar.zzfd;
                    zzck<?> zzaf = zzaf(i8);
                    if (zzaf != null && zzaf.zzb(i11) == null) {
                        zzn(t).zzb(i3, Long.valueOf(i11));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i11));
                        unsafe.putInt(t, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = zzax.zza(bArr, i, zzayVar);
                    i9 = zzbk.zzm(zzayVar.zzfd);
                    zzbbVar = Integer.valueOf(i9);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = zzax.zzb(bArr, i, zzayVar);
                    c = zzbk.zza(zzayVar.zzfe);
                    zzbbVar = Long.valueOf(c);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zza(zzad(i8), bArr, i, i2, (i3 & (-8)) | 4, zzayVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    Object obj2 = zzayVar.zzff;
                    zzbbVar = object2 == null ? obj2 : zzci.zza(object2, obj2);
                    unsafe.putObject(t, j, zzbbVar);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03ff  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0483 -> B:108:0x048f). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x04c3 -> B:103:0x0456). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:142:0x057b -> B:143:0x057e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:149:0x05ba -> B:141:0x0575). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0317 -> B:74:0x032e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x036f -> B:72:0x0309). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x03e6 -> B:94:0x03f5). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0427 -> B:91:0x03c3). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.clearcut.zzay r22) {
        /*
            Method dump skipped, instructions count: 2228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, zzay zzayVar) {
        Unsafe unsafe = zzmh;
        Object zzae = zzae(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.zzmz.zzi(object)) {
            obj = this.zzmz.zzk(zzae);
            this.zzmz.zzb(obj, object);
            unsafe.putObject(t, j, obj);
        }
        zzdh<?, ?> zzl = this.zzmz.zzl(zzae);
        Map<?, ?> zzg = this.zzmz.zzg(obj);
        int zza = zzax.zza(bArr, i, zzayVar);
        int i5 = zzayVar.zzfd;
        if (i5 < 0 || i5 > i2 - zza) {
            throw zzco.zzbl();
        }
        int i6 = i5 + zza;
        Object obj2 = zzl.zzmc;
        Object obj3 = zzl.zzdu;
        while (zza < i6) {
            int i7 = zza + 1;
            byte b = bArr[zza];
            int i8 = i7;
            byte b2 = b;
            if (b < 0) {
                i8 = zzax.zza(b, bArr, i7, zzayVar);
                b2 = zzayVar.zzfd;
            }
            int i9 = b2 >>> 3;
            int i10 = b2 & 7;
            if (i9 != 1) {
                if (i9 == 2 && i10 == zzl.zzmd.zzel()) {
                    zza = zza(bArr, i8, i2, zzl.zzmd, zzl.zzdu.getClass(), zzayVar);
                    obj3 = zzayVar.zzff;
                }
                zza = zzax.zza(b2, bArr, i8, i2, zzayVar);
            } else if (i10 == zzl.zzmb.zzel()) {
                zza = zza(bArr, i8, i2, zzl.zzmb, (Class<?>) null, zzayVar);
                obj2 = zzayVar.zzff;
            } else {
                zza = zzax.zza(b2, bArr, i8, i2, zzayVar);
            }
        }
        if (zza != i6) {
            throw zzco.zzbo();
        }
        zzg.put(obj2, obj3);
        return i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x05fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.clearcut.zzay r22) {
        /*
            Method dump skipped, instructions count: 1846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    private static int zza(byte[] bArr, int i, int i2, zzfl zzflVar, Class<?> cls, zzay zzayVar) {
        int i3;
        Object valueOf;
        Long l;
        Float f;
        int i4;
        char c;
        switch (zzdt.zzgq[zzflVar.ordinal()]) {
            case 1:
                i3 = zzax.zzb(bArr, i, zzayVar);
                valueOf = Boolean.valueOf(zzayVar.zzfe != 0);
                zzayVar.zzff = valueOf;
                break;
            case 2:
                i3 = zzax.zze(bArr, i, zzayVar);
                break;
            case 3:
                l = Double.valueOf(zzax.zze(bArr, i));
                zzayVar.zzff = l;
                i3 = i + 8;
                break;
            case 4:
            case 5:
                f = Integer.valueOf(zzax.zzc(bArr, i));
                zzayVar.zzff = f;
                i3 = i + 4;
                break;
            case 6:
            case 7:
                l = Long.valueOf(zzax.zzd(bArr, i));
                zzayVar.zzff = l;
                i3 = i + 8;
                break;
            case 8:
                f = Float.valueOf(zzax.zzf(bArr, i));
                zzayVar.zzff = f;
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = zzax.zza(bArr, i, zzayVar);
                i4 = zzayVar.zzfd;
                valueOf = Integer.valueOf(i4);
                zzayVar.zzff = valueOf;
                break;
            case 12:
            case 13:
                i3 = zzax.zzb(bArr, i, zzayVar);
                c = zzayVar.zzfe;
                valueOf = Long.valueOf(c);
                zzayVar.zzff = valueOf;
                break;
            case 14:
                i3 = zza((zzef) zzea.zzcm().zze(cls), bArr, i, i2, zzayVar);
                break;
            case 15:
                i3 = zzax.zza(bArr, i, zzayVar);
                i4 = zzbk.zzm(zzayVar.zzfd);
                valueOf = Integer.valueOf(i4);
                zzayVar.zzff = valueOf;
                break;
            case 16:
                i3 = zzax.zzb(bArr, i, zzayVar);
                c = zzbk.zza(zzayVar.zzfe);
                valueOf = Long.valueOf(c);
                zzayVar.zzff = valueOf;
                break;
            case 17:
                i3 = zzax.zzd(bArr, i, zzayVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    public static <T> zzds<T> zza(Class<T> cls, zzdm zzdmVar, zzdw zzdwVar, zzcy zzcyVar, zzex<?, ?> zzexVar, zzbu<?> zzbuVar, zzdj zzdjVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        if (!(zzdmVar instanceof zzec)) {
            ((zzes) zzdmVar).zzcf();
            throw new NoSuchMethodError();
        }
        zzec zzecVar = (zzec) zzdmVar;
        boolean z = zzecVar.zzcf() == zzcg.zzg.zzkm;
        if (zzecVar.getFieldCount() == 0) {
            i3 = 0;
            i2 = 0;
            i = 0;
        } else {
            i = zzecVar.zzcp();
            i2 = zzecVar.zzcq();
            i3 = zzecVar.zzcu();
        }
        int[] iArr = new int[i3 << 2];
        Object[] objArr = new Object[i3 << 1];
        int[] iArr2 = zzecVar.zzcr() > 0 ? new int[zzecVar.zzcr()] : null;
        int[] iArr3 = zzecVar.zzcs() > 0 ? new int[zzecVar.zzcs()] : null;
        zzed zzco = zzecVar.zzco();
        if (zzco.next()) {
            int zzcx = zzco.zzcx();
            int i11 = 0;
            int i12 = 0;
            int i13 = 0;
            while (true) {
                int i14 = i13;
                if (zzcx >= zzecVar.zzcv() || i11 >= ((zzcx - i) << 2)) {
                    if (zzco.zzda()) {
                        i8 = (int) zzfd.zza(zzco.zzdb());
                        i9 = (int) zzfd.zza(zzco.zzdc());
                        i7 = 0;
                    } else {
                        i8 = (int) zzfd.zza(zzco.zzdd());
                        if (zzco.zzde()) {
                            i9 = (int) zzfd.zza(zzco.zzdf());
                            i7 = zzco.zzdg();
                        } else {
                            i9 = 0;
                            i7 = 0;
                        }
                    }
                    iArr[i11] = zzco.zzcx();
                    int i15 = i11 + 1;
                    iArr[i15] = (zzco.zzdi() ? 536870912 : 0) | (zzco.zzdh() ? 268435456 : 0) | (zzco.zzcy() << 20) | i8;
                    iArr[i11 + 2] = i9 | (i7 << 20);
                    if (zzco.zzdl() != null) {
                        int i16 = (i11 / 4) << 1;
                        objArr[i16] = zzco.zzdl();
                        if (zzco.zzdj() != null) {
                            objArr[i16 + 1] = zzco.zzdj();
                        } else if (zzco.zzdk() != null) {
                            objArr[i16 + 1] = zzco.zzdk();
                        }
                    } else if (zzco.zzdj() != null) {
                        objArr[((i11 / 4) << 1) + 1] = zzco.zzdj();
                    } else if (zzco.zzdk() != null) {
                        objArr[((i11 / 4) << 1) + 1] = zzco.zzdk();
                    }
                    int zzcy = zzco.zzcy();
                    if (zzcy == zzcb.MAP.ordinal()) {
                        iArr2[i12] = i11;
                        i10 = i12 + 1;
                        i4 = i14;
                    } else {
                        i10 = i12;
                        i4 = i14;
                        if (zzcy >= 18) {
                            i10 = i12;
                            i4 = i14;
                            if (zzcy <= 49) {
                                iArr3[i14] = iArr[i15] & 1048575;
                                i4 = i14 + 1;
                                i10 = i12;
                            }
                        }
                    }
                    if (!zzco.next()) {
                        break;
                    }
                    i6 = zzco.zzcx();
                    i5 = i10;
                } else {
                    int i17 = 0;
                    while (true) {
                        i6 = zzcx;
                        i5 = i12;
                        i4 = i14;
                        if (i17 < 4) {
                            iArr[i11 + i17] = -1;
                            i17++;
                        }
                    }
                }
                i11 += 4;
                zzcx = i6;
                i12 = i5;
                i13 = i4;
            }
        }
        return new zzds<>(iArr, objArr, i, i2, zzecVar.zzcv(), zzecVar.zzch(), z, false, zzecVar.zzct(), iArr2, iArr3, zzdwVar, zzcyVar, zzexVar, zzbuVar, zzdjVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzck<?> zzckVar, UB ub, zzex<UT, UB> zzexVar) {
        zzdh<?, ?> zzl = this.zzmz.zzl(zzae(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (zzckVar.zzb(((Integer) next.getValue()).intValue()) == null) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzexVar.zzdz();
                }
                zzbg zzk = zzbb.zzk(zzdg.zza(zzl, next.getKey(), next.getValue()));
                try {
                    zzdg.zza(zzk.zzae(), zzl, next.getKey(), next.getValue());
                    zzexVar.zza((zzex<UT, UB>) ub2, i2, zzk.zzad());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private static void zza(int i, Object obj, zzfr zzfrVar) {
        if (obj instanceof String) {
            zzfrVar.zza(i, (String) obj);
        } else {
            zzfrVar.zza(i, (zzbb) obj);
        }
    }

    private static <UT, UB> void zza(zzex<UT, UB> zzexVar, T t, zzfr zzfrVar) {
        zzexVar.zza(zzexVar.zzq(t), zzfrVar);
    }

    private final <K, V> void zza(zzfr zzfrVar, int i, Object obj, int i2) {
        if (obj != null) {
            zzfrVar.zza(i, this.zzmz.zzl(zzae(i2)), this.zzmz.zzh(obj));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzag = zzag(i) & 1048575;
        if (!zza((zzds<T>) t2, i)) {
            return;
        }
        Object zzo = zzfd.zzo(t, zzag);
        Object zzo2 = zzfd.zzo(t2, zzag);
        if (zzo != null && zzo2 != null) {
            zzfd.zza(t, zzag, zzci.zza(zzo, zzo2));
            zzb((zzds<T>) t, i);
        } else if (zzo2 == null) {
        } else {
            zzfd.zza(t, zzag, zzo2);
            zzb((zzds<T>) t, i);
        }
    }

    private final boolean zza(T t, int i) {
        if (!this.zzmq) {
            int zzah = zzah(i);
            return (zzfd.zzj(t, (long) (zzah & 1048575)) & (1 << (zzah >>> 20))) != 0;
        }
        int zzag = zzag(i);
        long j = zzag & 1048575;
        switch ((zzag & 267386880) >>> 20) {
            case 0:
                return zzfd.zzn(t, j) != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1:
                return zzfd.zzm(t, j) != FlexItem.FLEX_GROW_DEFAULT;
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
                } else if (!(zzo instanceof zzbb)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzbb.zzfi.equals(zzo);
                }
            case 9:
                return zzfd.zzo(t, j) != null;
            case 10:
                return !zzbb.zzfi.equals(zzfd.zzo(t, j));
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
    }

    private final boolean zza(T t, int i, int i2) {
        return zzfd.zzj(t, (long) (zzah(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzmq ? zza((zzds<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzef zzefVar) {
        return zzefVar.zzo(zzfd.zzo(obj, i & 1048575));
    }

    private final zzef zzad(int i) {
        int i2 = (i / 4) << 1;
        zzef zzefVar = (zzef) this.zzmj[i2];
        if (zzefVar != null) {
            return zzefVar;
        }
        zzef<T> zze = zzea.zzcm().zze((Class) this.zzmj[i2 + 1]);
        this.zzmj[i2] = zze;
        return zze;
    }

    private final Object zzae(int i) {
        return this.zzmj[(i / 4) << 1];
    }

    private final zzck<?> zzaf(int i) {
        return (zzck) this.zzmj[((i / 4) << 1) + 1];
    }

    private final int zzag(int i) {
        return this.zzmi[i + 1];
    }

    private final int zzah(int i) {
        return this.zzmi[i + 2];
    }

    private final int zzai(int i) {
        int i2 = this.zzmk;
        if (i >= i2) {
            int i3 = this.zzmm;
            if (i < i3) {
                int i4 = (i - i2) << 2;
                if (this.zzmi[i4] != i) {
                    return -1;
                }
                return i4;
            } else if (i > this.zzml) {
                return -1;
            } else {
                int i5 = i3 - i2;
                int length = (this.zzmi.length / 4) - 1;
                while (i5 <= length) {
                    int i6 = (length + i5) >>> 1;
                    int i7 = i6 << 2;
                    int i8 = this.zzmi[i7];
                    if (i == i8) {
                        return i7;
                    }
                    if (i < i8) {
                        length = i6 - 1;
                    } else {
                        i5 = i6 + 1;
                    }
                }
                return -1;
            }
        }
        return -1;
    }

    private final void zzb(T t, int i) {
        if (this.zzmq) {
            return;
        }
        int zzah = zzah(i);
        long j = zzah & 1048575;
        zzfd.zza((Object) t, j, zzfd.zzj(t, j) | (1 << (zzah >>> 20)));
    }

    private final void zzb(T t, int i, int i2) {
        zzfd.zza((Object) t, zzah(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0986  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.clearcut.zzfr r10) {
        /*
            Method dump skipped, instructions count: 2486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zzb(java.lang.Object, com.google.android.gms.internal.clearcut.zzfr):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzag = zzag(i);
        int i2 = this.zzmi[i];
        long j = zzag & 1048575;
        if (!zza((zzds<T>) t2, i2, i)) {
            return;
        }
        Object zzo = zzfd.zzo(t, j);
        Object zzo2 = zzfd.zzo(t2, j);
        if (zzo != null && zzo2 != null) {
            zzfd.zza(t, j, zzci.zza(zzo, zzo2));
            zzb((zzds<T>) t, i2, i);
        } else if (zzo2 == null) {
        } else {
            zzfd.zza(t, j, zzo2);
            zzb((zzds<T>) t, i2, i);
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzds<T>) t, i) == zza((zzds<T>) t2, i);
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

    private static zzey zzn(Object obj) {
        zzcg zzcgVar = (zzcg) obj;
        zzey zzeyVar = zzcgVar.zzjp;
        zzey zzeyVar2 = zzeyVar;
        if (zzeyVar == zzey.zzea()) {
            zzeyVar2 = zzey.zzeb();
            zzcgVar.zzjp = zzeyVar2;
        }
        return zzeyVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r7, r0), com.google.android.gms.internal.clearcut.zzfd.zzo(r8, r0)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01ad, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r7, r0), com.google.android.gms.internal.clearcut.zzfd.zzo(r8, r0)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01cb, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x01e8, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0206, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0223, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0240, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x025d, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x027d, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r7, r0), com.google.android.gms.internal.clearcut.zzfd.zzo(r8, r0)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x029d, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r7, r0), com.google.android.gms.internal.clearcut.zzfd.zzo(r8, r0)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x02bd, code lost:
        if (com.google.android.gms.internal.clearcut.zzeh.zzd(com.google.android.gms.internal.clearcut.zzfd.zzo(r7, r0), com.google.android.gms.internal.clearcut.zzfd.zzo(r8, r0)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x02da, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzl(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzl(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x02f7, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0315, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0332, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0350, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x036e, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x038b, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzj(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzj(r8, r0)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03a9, code lost:
        if (com.google.android.gms.internal.clearcut.zzfd.zzk(r7, r0) == com.google.android.gms.internal.clearcut.zzfd.zzk(r8, r0)) goto L85;
     */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1009
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.equals(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0307, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0330, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0333, code lost:
        r14 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x033a, code lost:
        r14 = (r9 * 53) + r14;
     */
    /* JADX WARN: Type inference failed for: r0v100, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [double] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(T r6) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.hashCode(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final T newInstance() {
        return (T) this.zzmv.newInstance(this.zzmn);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x099e  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a14  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x135a  */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v215, types: [double] */
    /* JADX WARN: Type inference failed for: r0v223, types: [long] */
    /* JADX WARN: Type inference failed for: r0v227, types: [long] */
    /* JADX WARN: Type inference failed for: r0v235, types: [long] */
    /* JADX WARN: Type inference failed for: r0v265, types: [long] */
    /* JADX WARN: Type inference failed for: r0v273, types: [long] */
    /* JADX WARN: Type inference failed for: r0v331, types: [double] */
    /* JADX WARN: Type inference failed for: r0v341, types: [long] */
    /* JADX WARN: Type inference failed for: r0v346, types: [long] */
    /* JADX WARN: Type inference failed for: r0v356, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v395, types: [long] */
    /* JADX WARN: Type inference failed for: r0v405, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v509, types: [double] */
    /* JADX WARN: Type inference failed for: r0v517, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v521, types: [long] */
    /* JADX WARN: Type inference failed for: r0v529, types: [long] */
    /* JADX WARN: Type inference failed for: r0v559, types: [long] */
    /* JADX WARN: Type inference failed for: r0v567, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.clearcut.zzfr r9) {
        /*
            Method dump skipped, instructions count: 5012
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, com.google.android.gms.internal.clearcut.zzfr):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v153, types: [int] */
    /* JADX WARN: Type inference failed for: r0v154 */
    /* JADX WARN: Type inference failed for: r0v155 */
    /* JADX WARN: Type inference failed for: r0v99 */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zza(T t, byte[] bArr, int i, int i2, zzay zzayVar) {
        int i3;
        Object zza;
        int zzm;
        ?? r0;
        if (!this.zzmq) {
            zza((zzds<T>) t, bArr, i, i2, 0, zzayVar);
            return;
        }
        Unsafe unsafe = zzmh;
        while (i < i2) {
            int i4 = i + 1;
            byte b = bArr[i];
            if (b < 0) {
                i4 = zzax.zza(b, bArr, i4, zzayVar);
                b = zzayVar.zzfd;
            }
            int i5 = b >>> 3;
            int i6 = b & 7;
            int zzai = zzai(i5);
            if (zzai >= 0) {
                int i7 = this.zzmi[zzai + 1];
                int i8 = (267386880 & i7) >>> 20;
                long j = 1048575 & i7;
                if (i8 <= 17) {
                    boolean z = true;
                    switch (i8) {
                        case 0:
                            if (i6 != 1) {
                                break;
                            } else {
                                zzfd.zza(t, j, zzax.zze(bArr, i4));
                                i = i4 + 8;
                                break;
                            }
                        case 1:
                            if (i6 != 5) {
                                break;
                            } else {
                                zzfd.zza((Object) t, j, zzax.zzf(bArr, i4));
                                i = i4 + 4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zzb(bArr, i4, zzayVar);
                                r0 = zzayVar.zzfe;
                                unsafe.putLong(t, j, (long) r0);
                                break;
                            }
                        case 4:
                        case 11:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zza(bArr, i4, zzayVar);
                                zzm = zzayVar.zzfd;
                                unsafe.putInt(t, j, zzm);
                                break;
                            }
                        case 5:
                        case 14:
                            if (i6 != 1) {
                                break;
                            } else {
                                unsafe.putLong(t, j, zzax.zzd(bArr, i4));
                                i = i4 + 8;
                                break;
                            }
                        case 6:
                        case 13:
                            if (i6 != 5) {
                                break;
                            } else {
                                unsafe.putInt(t, j, zzax.zzc(bArr, i4));
                                i = i4 + 4;
                                break;
                            }
                        case 7:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zzb(bArr, i4, zzayVar);
                                if (zzayVar.zzfe == 0) {
                                    z = false;
                                }
                                zzfd.zza(t, j, z);
                                break;
                            }
                        case 8:
                            if (i6 != 2) {
                                break;
                            } else {
                                i = (536870912 & i7) == 0 ? zzax.zzc(bArr, i4, zzayVar) : zzax.zzd(bArr, i4, zzayVar);
                                zza = zzayVar.zzff;
                                unsafe.putObject(t, j, zza);
                                break;
                            }
                        case 9:
                            if (i6 != 2) {
                                break;
                            } else {
                                i = zza(zzad(zzai), bArr, i4, i2, zzayVar);
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    zza = zzci.zza(object, zzayVar.zzff);
                                    unsafe.putObject(t, j, zza);
                                    break;
                                }
                                zza = zzayVar.zzff;
                                unsafe.putObject(t, j, zza);
                            }
                        case 10:
                            if (i6 != 2) {
                                break;
                            } else {
                                i = zzax.zze(bArr, i4, zzayVar);
                                zza = zzayVar.zzff;
                                unsafe.putObject(t, j, zza);
                                break;
                            }
                        case 12:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zza(bArr, i4, zzayVar);
                                zzm = zzayVar.zzfd;
                                unsafe.putInt(t, j, zzm);
                                break;
                            }
                        case 15:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zza(bArr, i4, zzayVar);
                                zzm = zzbk.zzm(zzayVar.zzfd);
                                unsafe.putInt(t, j, zzm);
                                break;
                            }
                        case 16:
                            if (i6 != 0) {
                                break;
                            } else {
                                i = zzax.zzb(bArr, i4, zzayVar);
                                r0 = zzbk.zza(zzayVar.zzfe);
                                unsafe.putLong(t, j, (long) r0);
                                break;
                            }
                    }
                } else if (i8 == 27) {
                    if (i6 == 2) {
                        zzcn zzcnVar = (zzcn) unsafe.getObject(t, j);
                        zzcn zzcnVar2 = zzcnVar;
                        if (!zzcnVar.zzu()) {
                            int size = zzcnVar.size();
                            zzcnVar2 = zzcnVar.zzi(size == 0 ? 10 : size << 1);
                            unsafe.putObject(t, j, zzcnVar2);
                        }
                        i = zza(zzad(zzai), b, bArr, i4, i2, zzcnVar2, zzayVar);
                    }
                } else if (i8 <= 49) {
                    int zza2 = zza((zzds<T>) t, bArr, i4, i2, b, i5, i6, zzai, i7, i8, j, zzayVar);
                    i = zza2;
                    if (zza2 == i4) {
                        i3 = zza2;
                    }
                } else {
                    int i9 = i4;
                    if (i8 != 50) {
                        int zza3 = zza((zzds<T>) t, bArr, i9, i2, b, i5, i6, i7, i8, j, zzai, zzayVar);
                        i = zza3;
                        if (zza3 == i9) {
                            i3 = zza3;
                        }
                    } else if (i6 == 2) {
                        int zza4 = zza(t, bArr, i9, i2, zzai, i5, j, zzayVar);
                        i = zza4;
                        if (zza4 == i9) {
                            i3 = zza4;
                        }
                    }
                }
                i = zza(b, bArr, i3, i2, t, zzayVar);
            }
            i3 = i4;
            i = zza(b, bArr, i3, i2, t, zzayVar);
        }
        if (i != i2) {
            throw zzco.zzbo();
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t) {
        int[] iArr = this.zzmt;
        if (iArr != null) {
            for (int i : iArr) {
                long zzag = zzag(i) & 1048575;
                Object zzo = zzfd.zzo(t, zzag);
                if (zzo != null) {
                    zzfd.zza(t, zzag, this.zzmz.zzj(zzo));
                }
            }
        }
        int[] iArr2 = this.zzmu;
        if (iArr2 != null) {
            for (int i2 : iArr2) {
                this.zzmw.zza(t, i2);
            }
        }
        this.zzmx.zzc(t);
        if (this.zzmo) {
            this.zzmy.zzc(t);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final void zzc(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzmi.length; i += 4) {
                int zzag = zzag(i);
                long j = 1048575 & zzag;
                int i2 = this.zzmi[i];
                switch ((zzag & 267386880) >>> 20) {
                    case 0:
                        if (zza((zzds<T>) t2, i)) {
                            zzfd.zza(t, j, zzfd.zzn(t2, j));
                            zzb((zzds<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza((zzds<T>) t2, i)) {
                            zzfd.zza((Object) t, j, zzfd.zzm(t2, j));
                            zzb((zzds<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 3:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 4:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 5:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 6:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 7:
                        if (zza((zzds<T>) t2, i)) {
                            zzfd.zza(t, j, zzfd.zzl(t2, j));
                            zzb((zzds<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 9:
                    case 17:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 11:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 12:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 13:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 14:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 15:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzj(t2, j));
                        zzb((zzds<T>) t, i);
                        break;
                    case 16:
                        if (!zza((zzds<T>) t2, i)) {
                            break;
                        }
                        zzfd.zza((Object) t, j, zzfd.zzk(t2, j));
                        zzb((zzds<T>) t, i);
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
                        this.zzmw.zza(t, t2, j);
                        break;
                    case 50:
                        zzeh.zza(this.zzmz, t, t2, j);
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
                        if (!zza((zzds<T>) t2, i2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb((zzds<T>) t, i2, i);
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
                        if (!zza((zzds<T>) t2, i2, i)) {
                            break;
                        }
                        zzfd.zza(t, j, zzfd.zzo(t2, j));
                        zzb((zzds<T>) t, i2, i);
                        break;
                }
            }
            if (this.zzmq) {
                return;
            }
            zzeh.zza(this.zzmx, t, t2);
            if (!this.zzmo) {
                return;
            }
            zzeh.zza(this.zzmy, t, t2);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:240:0x0ad6, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0b1c, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x0b2e, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0b74, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0b86, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L412;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0bc3, code lost:
        if (zza((com.google.android.gms.internal.clearcut.zzds<T>) r8, r0, r19) != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x1060, code lost:
        if ((r14 & r23) != 0) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x1063, code lost:
        r13 = com.google.android.gms.internal.clearcut.zzbn.zzc(r0, (com.google.android.gms.internal.clearcut.zzdo) r0.getObject(r8, r0), zzad(r19));
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x10c5, code lost:
        if ((r14 & r23) != 0) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x10c8, code lost:
        r13 = com.google.android.gms.internal.clearcut.zzbn.zzh(r0, 0L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x10db, code lost:
        if ((r14 & r23) != 0) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x10de, code lost:
        r13 = com.google.android.gms.internal.clearcut.zzbn.zzk(r0, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x1137, code lost:
        if ((r14 & r23) != 0) goto L408;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x113a, code lost:
        r18 = r0.getObject(r8, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x115a, code lost:
        if ((r14 & r23) != 0) goto L412;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x115d, code lost:
        r13 = com.google.android.gms.internal.clearcut.zzeh.zzc(r0, r0.getObject(r8, r0), zzad(r19));
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x11b2, code lost:
        if ((r14 & r23) != 0) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x11b5, code lost:
        r13 = com.google.android.gms.internal.clearcut.zzbn.zzc(r0, true);
     */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* JADX WARN: Type inference failed for: r0v408, types: [long] */
    /* JADX WARN: Type inference failed for: r0v472, types: [long] */
    /* JADX WARN: Type inference failed for: r0v479, types: [long] */
    /* JADX WARN: Type inference failed for: r0v562, types: [long] */
    /* JADX WARN: Type inference failed for: r0v756, types: [long] */
    /* JADX WARN: Type inference failed for: r0v761, types: [long] */
    /* JADX WARN: Type inference failed for: r0v816, types: [long] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzm(T r8) {
        /*
            Method dump skipped, instructions count: 4786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zzm(java.lang.Object):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final boolean zzo(T t) {
        int i;
        boolean z;
        boolean z2;
        int[] iArr = this.zzms;
        if (iArr == null || iArr.length == 0) {
            return true;
        }
        int i2 = -1;
        int i3 = 0;
        for (int i4 : iArr) {
            int zzai = zzai(i4);
            int zzag = zzag(zzai);
            if (!this.zzmq) {
                int i5 = this.zzmi[zzai + 2];
                int i6 = i5 & 1048575;
                i = 1 << (i5 >>> 20);
                if (i6 != i2) {
                    i3 = zzmh.getInt(t, i6);
                    i2 = i6;
                }
            } else {
                i = 0;
            }
            if (((268435456 & zzag) != 0) && !zza((zzds<T>) t, zzai, i3, i)) {
                return false;
            }
            int i7 = (267386880 & zzag) >>> 20;
            if (i7 != 9 && i7 != 17) {
                if (i7 != 27) {
                    if (i7 == 60 || i7 == 68) {
                        if (zza((zzds<T>) t, i4, zzai) && !zza(t, zzag, zzad(zzai))) {
                            return false;
                        }
                    } else if (i7 != 49) {
                        if (i7 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzh = this.zzmz.zzh(zzfd.zzo(t, zzag & 1048575));
                            if (!zzh.isEmpty()) {
                                if (this.zzmz.zzl(zzae(zzai)).zzmd.zzek() == zzfq.MESSAGE) {
                                    zzef<T> zzefVar = null;
                                    for (Object obj : zzh.values()) {
                                        zzef<T> zzefVar2 = zzefVar;
                                        if (zzefVar == null) {
                                            zzefVar2 = zzea.zzcm().zze(obj.getClass());
                                        }
                                        zzefVar = zzefVar2;
                                        if (!zzefVar2.zzo(obj)) {
                                            z2 = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            z2 = true;
                            if (!z2) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzfd.zzo(t, zzag & 1048575);
                if (!list.isEmpty()) {
                    zzef zzad = zzad(zzai);
                    for (int i8 = 0; i8 < list.size(); i8++) {
                        if (!zzad.zzo(list.get(i8))) {
                            z = false;
                            break;
                        }
                    }
                }
                z = true;
                if (!z) {
                    return false;
                }
            } else if (zza((zzds<T>) t, zzai, i3, i) && !zza(t, zzag, zzad(zzai))) {
                return false;
            }
        }
        return !this.zzmo || this.zzmy.zza(t).isInitialized();
    }
}
