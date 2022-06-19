package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzds.class */
public final class zzds<T> implements zzef<T> {
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

    private static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzay zzayVar) throws IOException {
        return zzax.zza(i, bArr, i2, i3, zzn(obj), zzayVar);
    }

    private static int zza(zzef<?> zzefVar, int i, byte[] bArr, int i2, int i3, zzcn<?> zzcnVar, zzay zzayVar) throws IOException {
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
    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, int i3, zzay zzayVar) throws IOException {
        zzds zzdsVar = (zzds) zzefVar;
        Object newInstance = zzdsVar.newInstance();
        int zza = zzdsVar.zza((zzds) newInstance, bArr, i, i2, i3, zzayVar);
        zzdsVar.zzc(newInstance);
        zzayVar.zzff = newInstance;
        return zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static int zza(zzef zzefVar, byte[] bArr, int i, int i2, zzay zzayVar) throws IOException {
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

    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzay zzayVar) throws IOException {
        Long l;
        Integer num;
        zzbb zzbbVar;
        char c;
        int i9;
        int i10;
        int i11;
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
                    int i12 = zzayVar.zzfd;
                    if (i12 == 0) {
                        zzbbVar = "";
                        unsafe.putObject(t, j, zzbbVar);
                        unsafe.putInt(t, j2, i4);
                        break;
                    } else if ((i6 & 536870912) != 0 && !zzff.zze(bArr, i, i + i12)) {
                        throw zzco.zzbp();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i12, zzci.UTF_8));
                        i10 = i;
                        i11 = i12;
                        i = i10 + i11;
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
                    i10 = zzax.zza(bArr, i, zzayVar);
                    i11 = zzayVar.zzfd;
                    if (i11 == 0) {
                        zzbbVar = zzbb.zzfi;
                        i = i10;
                        unsafe.putObject(t, j, zzbbVar);
                        unsafe.putInt(t, j2, i4);
                        break;
                    } else {
                        unsafe.putObject(t, j, zzbb.zzb(bArr, i10, i11));
                        i = i10 + i11;
                        unsafe.putInt(t, j2, i4);
                    }
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzax.zza(bArr, i, zzayVar);
                    int i13 = zzayVar.zzfd;
                    zzck<?> zzaf = zzaf(i8);
                    if (zzaf != null && zzaf.zzb(i13) == null) {
                        zzn(t).zzb(i3, Long.valueOf(i13));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i13));
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

    /* JADX WARN: Removed duplicated region for block: B:110:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0591  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03f9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0486 -> B:108:0x0492). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x04c6 -> B:103:0x0452). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:141:0x057f -> B:142:0x0582). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:148:0x05be -> B:140:0x0579). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x031b -> B:74:0x0332). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x0373 -> B:72:0x030d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x03e0 -> B:93:0x03ef). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0421 -> B:90:0x03c4). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.clearcut.zzay r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, long j, zzay zzayVar) throws IOException {
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
    /* JADX WARN: Removed duplicated region for block: B:124:0x05eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.clearcut.zzay r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.clearcut.zzay):int");
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v53, types: [long] */
    private static int zza(byte[] bArr, int i, int i2, zzfl zzflVar, Class<?> cls, zzay zzayVar) throws IOException {
        int i3;
        Comparable valueOf;
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
                    zzcb zzcbVar = zzcb.MAP;
                    if (zzcy == 50) {
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

    private static void zza(int i, Object obj, zzfr zzfrVar) throws IOException {
        if (obj instanceof String) {
            zzfrVar.zza(i, (String) obj);
        } else {
            zzfrVar.zza(i, (zzbb) obj);
        }
    }

    private static <UT, UB> void zza(zzex<UT, UB> zzexVar, T t, zzfr zzfrVar) throws IOException {
        zzexVar.zza(zzexVar.zzq(t), zzfrVar);
    }

    private final <K, V> void zza(zzfr zzfrVar, int i, Object obj, int i2) throws IOException {
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
                return zzfd.zzn(t, j) != PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
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

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0996  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.clearcut.zzfr r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2505
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
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0306, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x032f, code lost:
        if (r15 != null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0332, code lost:
        r14 = r15.hashCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0339, code lost:
        r14 = (r9 * 53) + r14;
     */
    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [double] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [double] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int hashCode(T r6) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzds.hashCode(java.lang.Object):int");
    }

    @Override // com.google.android.gms.internal.clearcut.zzef
    public final T newInstance() {
        return (T) this.zzmv.newInstance(this.zzmn);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x09a5  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0a1a  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x1365  */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v111, types: [long] */
    /* JADX WARN: Type inference failed for: r0v215, types: [double] */
    /* JADX WARN: Type inference failed for: r0v223, types: [long] */
    /* JADX WARN: Type inference failed for: r0v227, types: [long] */
    /* JADX WARN: Type inference failed for: r0v235, types: [long] */
    /* JADX WARN: Type inference failed for: r0v265, types: [long] */
    /* JADX WARN: Type inference failed for: r0v273, types: [long] */
    /* JADX WARN: Type inference failed for: r0v332, types: [double] */
    /* JADX WARN: Type inference failed for: r0v342, types: [long] */
    /* JADX WARN: Type inference failed for: r0v347, types: [long] */
    /* JADX WARN: Type inference failed for: r0v357, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v396, types: [long] */
    /* JADX WARN: Type inference failed for: r0v406, types: [long] */
    /* JADX WARN: Type inference failed for: r0v47, types: [long] */
    /* JADX WARN: Type inference failed for: r0v510, types: [double] */
    /* JADX WARN: Type inference failed for: r0v518, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v522, types: [long] */
    /* JADX WARN: Type inference failed for: r0v530, types: [long] */
    /* JADX WARN: Type inference failed for: r0v560, types: [long] */
    /* JADX WARN: Type inference failed for: r0v568, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.clearcut.zzfr r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5020
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
    public final void zza(T t, byte[] bArr, int i, int i2, zzay zzayVar) throws IOException {
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
        Objects.requireNonNull(t2);
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
        if (!this.zzmq) {
            zzeh.zza(this.zzmx, t, t2);
            if (!this.zzmo) {
                return;
            }
            zzeh.zza(this.zzmy, t, t2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v403, types: [long] */
    /* JADX WARN: Type inference failed for: r0v472, types: [long] */
    /* JADX WARN: Type inference failed for: r0v479, types: [long] */
    /* JADX WARN: Type inference failed for: r0v562, types: [long] */
    /* JADX WARN: Type inference failed for: r0v754, types: [long] */
    /* JADX WARN: Type inference failed for: r0v759, types: [long] */
    /* JADX WARN: Type inference failed for: r0v814, types: [long] */
    @Override // com.google.android.gms.internal.clearcut.zzef
    public final int zzm(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Object obj;
        Object obj2;
        int i7;
        int i8;
        int i9;
        int i10;
        char c;
        int i11;
        int i12;
        int i13;
        char c2;
        char c3;
        int i14;
        Object obj3;
        Object obj4;
        int i15;
        int i16;
        int i17;
        char c4;
        int i18;
        int i19 = 0;
        if (this.zzmq) {
            Unsafe unsafe = zzmh;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                int i22 = i21;
                if (i20 >= this.zzmi.length) {
                    return i22 + zza(this.zzmx, t);
                }
                int zzag = zzag(i20);
                int i23 = (267386880 & zzag) >>> 20;
                int i24 = this.zzmi[i20];
                long j = zzag & 1048575;
                int i25 = (i23 < zzcb.DOUBLE_LIST_PACKED.m38720id() || i23 > zzcb.SINT64_LIST_PACKED.m38720id()) ? 0 : this.zzmi[i20 + 2] & 1048575;
                switch (i23) {
                    case 0:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzb(i24, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                        i12 = i22 + i13;
                        break;
                    case 1:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzb(i24, 0.0f);
                        i12 = i22 + i13;
                        break;
                    case 2:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            c2 = zzfd.zzk(t, j);
                            i13 = zzbn.zzd(i24, (long) c2);
                            i12 = i22 + i13;
                            break;
                        }
                    case 3:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            c3 = zzfd.zzk(t, j);
                            i13 = zzbn.zze(i24, (long) c3);
                            i12 = i22 + i13;
                            break;
                        }
                    case 4:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            i14 = zzfd.zzj(t, j);
                            i13 = zzbn.zzg(i24, i14);
                            i12 = i22 + i13;
                            break;
                        }
                    case 5:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzg(i24, 0L);
                        i12 = i22 + i13;
                        break;
                    case 6:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzj(i24, 0);
                        i12 = i22 + i13;
                        break;
                    case 7:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzc(i24, true);
                        i12 = i22 + i13;
                        break;
                    case 8:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            Object zzo = zzfd.zzo(t, j);
                            obj3 = zzo;
                            if (zzo instanceof zzbb) {
                                obj4 = zzo;
                                i13 = zzbn.zzc(i24, (zzbb) obj4);
                                i12 = i22 + i13;
                                break;
                            }
                            i13 = zzbn.zzb(i24, (String) obj3);
                            i12 = i22 + i13;
                        }
                    case 9:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzeh.zzc(i24, zzfd.zzo(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    case 10:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        obj4 = zzfd.zzo(t, j);
                        i13 = zzbn.zzc(i24, (zzbb) obj4);
                        i12 = i22 + i13;
                        break;
                    case 11:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            i15 = zzfd.zzj(t, j);
                            i13 = zzbn.zzh(i24, i15);
                            i12 = i22 + i13;
                            break;
                        }
                    case 12:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            i16 = zzfd.zzj(t, j);
                            i13 = zzbn.zzl(i24, i16);
                            i12 = i22 + i13;
                            break;
                        }
                    case 13:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzk(i24, 0);
                        i12 = i22 + i13;
                        break;
                    case 14:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzh(i24, 0L);
                        i12 = i22 + i13;
                        break;
                    case 15:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            i17 = zzfd.zzj(t, j);
                            i13 = zzbn.zzi(i24, i17);
                            i12 = i22 + i13;
                            break;
                        }
                    case 16:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        } else {
                            c4 = zzfd.zzk(t, j);
                            i13 = zzbn.zzf(i24, (long) c4);
                            i12 = i22 + i13;
                            break;
                        }
                    case 17:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i20)) {
                            break;
                        }
                        i13 = zzbn.zzc(i24, (zzdo) zzfd.zzo(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    case 18:
                    case 23:
                    case 32:
                        i13 = zzeh.zzw(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        i13 = zzeh.zzv(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 20:
                        i13 = zzeh.zzo(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 21:
                        i13 = zzeh.zzp(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 22:
                        i13 = zzeh.zzs(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 25:
                        i13 = zzeh.zzx(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 26:
                        i13 = zzeh.zzc(i24, zzd(t, j));
                        i12 = i22 + i13;
                        break;
                    case 27:
                        i13 = zzeh.zzc(i24, (List<?>) zzd(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    case 28:
                        i13 = zzeh.zzd(i24, zzd(t, j));
                        i12 = i22 + i13;
                        break;
                    case 29:
                        i13 = zzeh.zzt(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 30:
                        i13 = zzeh.zzr(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 33:
                        i13 = zzeh.zzu(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 34:
                        i13 = zzeh.zzq(i24, zzd(t, j), false);
                        i12 = i22 + i13;
                        break;
                    case 35:
                        int zzi = zzeh.zzi((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzi <= 0) {
                            break;
                        } else {
                            i18 = zzi;
                            if (this.zzmr) {
                                i18 = zzi;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 36:
                        int zzh = zzeh.zzh((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzh <= 0) {
                            break;
                        } else {
                            i18 = zzh;
                            if (this.zzmr) {
                                i18 = zzh;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 37:
                        int zza = zzeh.zza((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zza <= 0) {
                            break;
                        } else {
                            i18 = zza;
                            if (this.zzmr) {
                                i18 = zza;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 38:
                        int zzb = zzeh.zzb((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzb <= 0) {
                            break;
                        } else {
                            i18 = zzb;
                            if (this.zzmr) {
                                i18 = zzb;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 39:
                        int zze = zzeh.zze((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zze <= 0) {
                            break;
                        } else {
                            i18 = zze;
                            if (this.zzmr) {
                                i18 = zze;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 40:
                        int zzi2 = zzeh.zzi((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzi2 <= 0) {
                            break;
                        } else {
                            i18 = zzi2;
                            if (this.zzmr) {
                                i18 = zzi2;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 41:
                        int zzh2 = zzeh.zzh((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzh2 <= 0) {
                            break;
                        } else {
                            i18 = zzh2;
                            if (this.zzmr) {
                                i18 = zzh2;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 42:
                        int zzj = zzeh.zzj((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzj <= 0) {
                            break;
                        } else {
                            i18 = zzj;
                            if (this.zzmr) {
                                i18 = zzj;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 43:
                        int zzf = zzeh.zzf((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzf <= 0) {
                            break;
                        } else {
                            i18 = zzf;
                            if (this.zzmr) {
                                i18 = zzf;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 44:
                        int zzd = zzeh.zzd((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzd <= 0) {
                            break;
                        } else {
                            i18 = zzd;
                            if (this.zzmr) {
                                i18 = zzd;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 45:
                        int zzh3 = zzeh.zzh((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzh3 <= 0) {
                            break;
                        } else {
                            i18 = zzh3;
                            if (this.zzmr) {
                                i18 = zzh3;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 46:
                        int zzi3 = zzeh.zzi((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzi3 <= 0) {
                            break;
                        } else {
                            i18 = zzi3;
                            if (this.zzmr) {
                                i18 = zzi3;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 47:
                        int zzg = zzeh.zzg((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzg <= 0) {
                            break;
                        } else {
                            i18 = zzg;
                            if (this.zzmr) {
                                i18 = zzg;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 48:
                        int zzc = zzeh.zzc((List) unsafe.getObject(t, j));
                        i12 = i22;
                        if (zzc <= 0) {
                            break;
                        } else {
                            i18 = zzc;
                            if (this.zzmr) {
                                i18 = zzc;
                                unsafe.putInt(t, i25, i18);
                            }
                            i12 = i22 + zzbn.zzt(i18) + zzbn.zzr(i24) + i18;
                            break;
                        }
                    case 49:
                        i13 = zzeh.zzd(i24, zzd(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    case 50:
                        i13 = this.zzmz.zzb(i24, zzfd.zzo(t, j), zzae(i20));
                        i12 = i22 + i13;
                        break;
                    case 51:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzb(i24, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                        i12 = i22 + i13;
                        break;
                    case 52:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzb(i24, 0.0f);
                        i12 = i22 + i13;
                        break;
                    case 53:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            c2 = zzh(t, j);
                            i13 = zzbn.zzd(i24, (long) c2);
                            i12 = i22 + i13;
                            break;
                        }
                    case 54:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            c3 = zzh(t, j);
                            i13 = zzbn.zze(i24, (long) c3);
                            i12 = i22 + i13;
                            break;
                        }
                    case 55:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            i14 = zzg(t, j);
                            i13 = zzbn.zzg(i24, i14);
                            i12 = i22 + i13;
                            break;
                        }
                    case 56:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzg(i24, 0L);
                        i12 = i22 + i13;
                        break;
                    case 57:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzj(i24, 0);
                        i12 = i22 + i13;
                        break;
                    case 58:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzc(i24, true);
                        i12 = i22 + i13;
                        break;
                    case 59:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            Object zzo2 = zzfd.zzo(t, j);
                            obj3 = zzo2;
                            if (zzo2 instanceof zzbb) {
                                obj4 = zzo2;
                                i13 = zzbn.zzc(i24, (zzbb) obj4);
                                i12 = i22 + i13;
                                break;
                            }
                            i13 = zzbn.zzb(i24, (String) obj3);
                            i12 = i22 + i13;
                        }
                    case 60:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzeh.zzc(i24, zzfd.zzo(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    case 61:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        obj4 = zzfd.zzo(t, j);
                        i13 = zzbn.zzc(i24, (zzbb) obj4);
                        i12 = i22 + i13;
                        break;
                    case 62:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            i15 = zzg(t, j);
                            i13 = zzbn.zzh(i24, i15);
                            i12 = i22 + i13;
                            break;
                        }
                    case 63:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            i16 = zzg(t, j);
                            i13 = zzbn.zzl(i24, i16);
                            i12 = i22 + i13;
                            break;
                        }
                    case 64:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzk(i24, 0);
                        i12 = i22 + i13;
                        break;
                    case 65:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzh(i24, 0L);
                        i12 = i22 + i13;
                        break;
                    case 66:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            i17 = zzg(t, j);
                            i13 = zzbn.zzi(i24, i17);
                            i12 = i22 + i13;
                            break;
                        }
                    case 67:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        } else {
                            c4 = zzh(t, j);
                            i13 = zzbn.zzf(i24, (long) c4);
                            i12 = i22 + i13;
                            break;
                        }
                    case 68:
                        i12 = i22;
                        if (!zza((zzds<T>) t, i24, i20)) {
                            break;
                        }
                        i13 = zzbn.zzc(i24, (zzdo) zzfd.zzo(t, j), zzad(i20));
                        i12 = i22 + i13;
                        break;
                    default:
                        i12 = i22;
                        break;
                }
                i20 += 4;
                i21 = i12;
            }
        } else {
            Unsafe unsafe2 = zzmh;
            int i26 = -1;
            int i27 = 0;
            int i28 = 0;
            while (true) {
                int i29 = i28;
                if (i19 >= this.zzmi.length) {
                    int zza2 = i27 + zza(this.zzmx, t);
                    int i30 = zza2;
                    if (this.zzmo) {
                        i30 = zza2 + this.zzmy.zza(t).zzas();
                    }
                    return i30;
                }
                int zzag2 = zzag(i19);
                int[] iArr = this.zzmi;
                int i31 = iArr[i19];
                int i32 = (267386880 & zzag2) >>> 20;
                if (i32 <= 17) {
                    i2 = iArr[i19 + 2];
                    int i33 = i2 & 1048575;
                    i = 1 << (i2 >>> 20);
                    int i34 = i26;
                    if (i33 != i26) {
                        i29 = unsafe2.getInt(t, i33);
                        i34 = i33;
                    }
                    i26 = i34;
                    i3 = i29;
                } else {
                    i = 0;
                    i2 = (!this.zzmr || i32 < zzcb.DOUBLE_LIST_PACKED.m38720id() || i32 > zzcb.SINT64_LIST_PACKED.m38720id()) ? 0 : this.zzmi[i19 + 2] & 1048575;
                    i3 = i29;
                }
                long j2 = zzag2 & 1048575;
                switch (i32) {
                    case 0:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i4 = zzbn.zzb(i31, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE) + i27;
                            break;
                        }
                    case 1:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i5 = zzbn.zzb(i31, 0.0f);
                            i4 = i27 + i5;
                            break;
                        }
                    case 2:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i6 = zzbn.zzd(i31, unsafe2.getLong(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 3:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i6 = zzbn.zze(i31, unsafe2.getLong(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 4:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i6 = zzbn.zzg(i31, unsafe2.getInt(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 5:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i6 = zzbn.zzg(i31, 0L);
                            i4 = i27 + i6;
                            break;
                        }
                    case 6:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i5 = zzbn.zzj(i31, 0);
                            i4 = i27 + i5;
                            break;
                        }
                    case 7:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        i6 = zzbn.zzc(i31, true);
                        i4 = i27 + i6;
                        break;
                    case 8:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            Object object = unsafe2.getObject(t, j2);
                            obj = object;
                            if (object instanceof zzbb) {
                                obj2 = object;
                                i6 = zzbn.zzc(i31, (zzbb) obj2);
                                i4 = i27 + i6;
                                break;
                            }
                            i6 = zzbn.zzb(i31, (String) obj);
                            i4 = i27 + i6;
                        }
                    case 9:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        i6 = zzeh.zzc(i31, unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    case 10:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        obj2 = unsafe2.getObject(t, j2);
                        i6 = zzbn.zzc(i31, (zzbb) obj2);
                        i4 = i27 + i6;
                        break;
                    case 11:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i7 = unsafe2.getInt(t, j2);
                            i6 = zzbn.zzh(i31, i7);
                            i4 = i27 + i6;
                            break;
                        }
                    case 12:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i8 = unsafe2.getInt(t, j2);
                            i6 = zzbn.zzl(i31, i8);
                            i4 = i27 + i6;
                            break;
                        }
                    case 13:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        i9 = zzbn.zzk(i31, 0);
                        i4 = i27 + i9;
                        break;
                    case 14:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        i6 = zzbn.zzh(i31, 0L);
                        i4 = i27 + i6;
                        break;
                    case 15:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            i10 = unsafe2.getInt(t, j2);
                            i6 = zzbn.zzi(i31, i10);
                            i4 = i27 + i6;
                            break;
                        }
                    case 16:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        } else {
                            c = unsafe2.getLong(t, j2);
                            i6 = zzbn.zzf(i31, (long) c);
                            i4 = i27 + i6;
                            break;
                        }
                    case 17:
                        i4 = i27;
                        if ((i3 & i) == 0) {
                            break;
                        }
                        i6 = zzbn.zzc(i31, (zzdo) unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    case 18:
                        i6 = zzeh.zzw(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i6;
                        break;
                    case 19:
                    case 24:
                    case 31:
                        i9 = zzeh.zzv(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 20:
                        i9 = zzeh.zzo(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 21:
                        i9 = zzeh.zzp(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 22:
                        i9 = zzeh.zzs(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 23:
                    case 32:
                        i9 = zzeh.zzw(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 25:
                        i9 = zzeh.zzx(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 26:
                        i6 = zzeh.zzc(i31, (List) unsafe2.getObject(t, j2));
                        i4 = i27 + i6;
                        break;
                    case 27:
                        i6 = zzeh.zzc(i31, (List<?>) unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    case 28:
                        i6 = zzeh.zzd(i31, (List) unsafe2.getObject(t, j2));
                        i4 = i27 + i6;
                        break;
                    case 29:
                        i6 = zzeh.zzt(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i6;
                        break;
                    case 30:
                        i9 = zzeh.zzr(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 33:
                        i9 = zzeh.zzu(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 34:
                        i9 = zzeh.zzq(i31, (List) unsafe2.getObject(t, j2), false);
                        i4 = i27 + i9;
                        break;
                    case 35:
                        int zzi4 = zzeh.zzi((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzi4 <= 0) {
                            break;
                        } else {
                            i11 = zzi4;
                            if (this.zzmr) {
                                i11 = zzi4;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 36:
                        int zzh4 = zzeh.zzh((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzh4 <= 0) {
                            break;
                        } else {
                            i11 = zzh4;
                            if (this.zzmr) {
                                i11 = zzh4;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 37:
                        int zza3 = zzeh.zza((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zza3 <= 0) {
                            break;
                        } else {
                            i11 = zza3;
                            if (this.zzmr) {
                                i11 = zza3;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 38:
                        int zzb2 = zzeh.zzb((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzb2 <= 0) {
                            break;
                        } else {
                            i11 = zzb2;
                            if (this.zzmr) {
                                i11 = zzb2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 39:
                        int zze2 = zzeh.zze((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zze2 <= 0) {
                            break;
                        } else {
                            i11 = zze2;
                            if (this.zzmr) {
                                i11 = zze2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 40:
                        int zzi5 = zzeh.zzi((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzi5 <= 0) {
                            break;
                        } else {
                            i11 = zzi5;
                            if (this.zzmr) {
                                i11 = zzi5;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 41:
                        int zzh5 = zzeh.zzh((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzh5 <= 0) {
                            break;
                        } else {
                            i11 = zzh5;
                            if (this.zzmr) {
                                i11 = zzh5;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 42:
                        int zzj2 = zzeh.zzj((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzj2 <= 0) {
                            break;
                        } else {
                            i11 = zzj2;
                            if (this.zzmr) {
                                i11 = zzj2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 43:
                        int zzf2 = zzeh.zzf((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzf2 <= 0) {
                            break;
                        } else {
                            i11 = zzf2;
                            if (this.zzmr) {
                                i11 = zzf2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 44:
                        int zzd2 = zzeh.zzd((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzd2 <= 0) {
                            break;
                        } else {
                            i11 = zzd2;
                            if (this.zzmr) {
                                i11 = zzd2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 45:
                        int zzh6 = zzeh.zzh((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzh6 <= 0) {
                            break;
                        } else {
                            i11 = zzh6;
                            if (this.zzmr) {
                                i11 = zzh6;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 46:
                        int zzi6 = zzeh.zzi((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzi6 <= 0) {
                            break;
                        } else {
                            i11 = zzi6;
                            if (this.zzmr) {
                                i11 = zzi6;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 47:
                        int zzg2 = zzeh.zzg((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzg2 <= 0) {
                            break;
                        } else {
                            i11 = zzg2;
                            if (this.zzmr) {
                                i11 = zzg2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 48:
                        int zzc2 = zzeh.zzc((List) unsafe2.getObject(t, j2));
                        i4 = i27;
                        if (zzc2 <= 0) {
                            break;
                        } else {
                            i11 = zzc2;
                            if (this.zzmr) {
                                i11 = zzc2;
                                unsafe2.putInt(t, i2, i11);
                            }
                            i4 = i27 + zzbn.zzt(i11) + zzbn.zzr(i31) + i11;
                            break;
                        }
                    case 49:
                        i6 = zzeh.zzd(i31, (List) unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    case 50:
                        i6 = this.zzmz.zzb(i31, unsafe2.getObject(t, j2), zzae(i19));
                        i4 = i27 + i6;
                        break;
                    case 51:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i6 = zzbn.zzb(i31, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                            i4 = i27 + i6;
                            break;
                        }
                    case 52:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i9 = zzbn.zzb(i31, 0.0f);
                            i4 = i27 + i9;
                            break;
                        }
                    case 53:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i6 = zzbn.zzd(i31, zzh(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 54:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i6 = zzbn.zze(i31, zzh(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 55:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i6 = zzbn.zzg(i31, zzg(t, j2));
                            i4 = i27 + i6;
                            break;
                        }
                    case 56:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i6 = zzbn.zzg(i31, 0L);
                            i4 = i27 + i6;
                            break;
                        }
                    case 57:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i9 = zzbn.zzj(i31, 0);
                            i4 = i27 + i9;
                            break;
                        }
                    case 58:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        i6 = zzbn.zzc(i31, true);
                        i4 = i27 + i6;
                        break;
                    case 59:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            Object object2 = unsafe2.getObject(t, j2);
                            obj = object2;
                            if (object2 instanceof zzbb) {
                                obj2 = object2;
                                i6 = zzbn.zzc(i31, (zzbb) obj2);
                                i4 = i27 + i6;
                                break;
                            }
                            i6 = zzbn.zzb(i31, (String) obj);
                            i4 = i27 + i6;
                        }
                    case 60:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        i6 = zzeh.zzc(i31, unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    case 61:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        obj2 = unsafe2.getObject(t, j2);
                        i6 = zzbn.zzc(i31, (zzbb) obj2);
                        i4 = i27 + i6;
                        break;
                    case 62:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i7 = zzg(t, j2);
                            i6 = zzbn.zzh(i31, i7);
                            i4 = i27 + i6;
                            break;
                        }
                    case 63:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i8 = zzg(t, j2);
                            i6 = zzbn.zzl(i31, i8);
                            i4 = i27 + i6;
                            break;
                        }
                    case 64:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        i9 = zzbn.zzk(i31, 0);
                        i4 = i27 + i9;
                        break;
                    case 65:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        i6 = zzbn.zzh(i31, 0L);
                        i4 = i27 + i6;
                        break;
                    case 66:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            i10 = zzg(t, j2);
                            i6 = zzbn.zzi(i31, i10);
                            i4 = i27 + i6;
                            break;
                        }
                    case 67:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        } else {
                            c = zzh(t, j2);
                            i6 = zzbn.zzf(i31, (long) c);
                            i4 = i27 + i6;
                            break;
                        }
                    case 68:
                        i4 = i27;
                        if (!zza((zzds<T>) t, i31, i19)) {
                            break;
                        }
                        i6 = zzbn.zzc(i31, (zzdo) unsafe2.getObject(t, j2), zzad(i19));
                        i4 = i27 + i6;
                        break;
                    default:
                        i4 = i27;
                        break;
                }
                i19 += 4;
                i27 = i4;
                i28 = i3;
            }
        }
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
