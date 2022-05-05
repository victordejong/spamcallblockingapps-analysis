package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzzd.class */
public final class zzzd implements Cloneable {
    private Object value;
    private zzzb<?, ?> zzcfj;
    private List<zzzi> zzcfk = new ArrayList();

    private final byte[] toByteArray() throws IOException {
        byte[] bArr = new byte[zzf()];
        zza(zzyy.zzo(bArr));
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzyv */
    public final zzzd clone() {
        zzzd zzzdVar = new zzzd();
        try {
            zzzdVar.zzcfj = this.zzcfj;
            if (this.zzcfk == null) {
                zzzdVar.zzcfk = null;
            } else {
                zzzdVar.zzcfk.addAll(this.zzcfk);
            }
            if (this.value != null) {
                if (this.value instanceof zzzg) {
                    zzzdVar.value = (zzzg) ((zzzg) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    zzzdVar.value = ((byte[]) this.value).clone();
                } else {
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[] bArr2 = new byte[bArr.length];
                        zzzdVar.value = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.value instanceof boolean[]) {
                        zzzdVar.value = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        zzzdVar.value = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        zzzdVar.value = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        zzzdVar.value = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        zzzdVar.value = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzzg[]) {
                        zzzg[] zzzgVarArr = (zzzg[]) this.value;
                        zzzg[] zzzgVarArr2 = new zzzg[zzzgVarArr.length];
                        zzzdVar.value = zzzgVarArr2;
                        for (int i2 = 0; i2 < zzzgVarArr.length; i2++) {
                            zzzgVarArr2[i2] = (zzzg) zzzgVarArr[i2].clone();
                        }
                    }
                }
            }
            return zzzdVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzd)) {
            return false;
        }
        zzzd zzzdVar = (zzzd) obj;
        if (this.value == null || zzzdVar.value == null) {
            if (this.zzcfk != null && zzzdVar.zzcfk != null) {
                return this.zzcfk.equals(zzzdVar.zzcfk);
            }
            try {
                return Arrays.equals(toByteArray(), zzzdVar.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else if (this.zzcfj != zzzdVar.zzcfj) {
            return false;
        } else {
            return !this.zzcfj.zzcfd.isArray() ? this.value.equals(zzzdVar.value) : this.value instanceof byte[] ? Arrays.equals((byte[]) this.value, (byte[]) zzzdVar.value) : this.value instanceof int[] ? Arrays.equals((int[]) this.value, (int[]) zzzdVar.value) : this.value instanceof long[] ? Arrays.equals((long[]) this.value, (long[]) zzzdVar.value) : this.value instanceof float[] ? Arrays.equals((float[]) this.value, (float[]) zzzdVar.value) : this.value instanceof double[] ? Arrays.equals((double[]) this.value, (double[]) zzzdVar.value) : this.value instanceof boolean[] ? Arrays.equals((boolean[]) this.value, (boolean[]) zzzdVar.value) : Arrays.deepEquals((Object[]) this.value, (Object[]) zzzdVar.value);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.value != null) {
            zzzb<?, ?> zzzbVar = this.zzcfj;
            Object obj = this.value;
            if (zzzbVar.zzcfe) {
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    Object obj2 = Array.get(obj, i);
                    if (obj2 != null) {
                        zzzbVar.zza(obj2, zzyyVar);
                    }
                }
                return;
            }
            zzzbVar.zza(obj, zzyyVar);
            return;
        }
        for (zzzi zzziVar : this.zzcfk) {
            zzyyVar.zzca(zzziVar.tag);
            zzyyVar.zzp(zzziVar.zzbug);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzzi zzziVar) throws IOException {
        Object obj;
        if (this.zzcfk != null) {
            this.zzcfk.add(zzziVar);
            return;
        }
        if (this.value instanceof zzzg) {
            byte[] bArr = zzziVar.zzbug;
            zzyx zzj = zzyx.zzj(bArr, 0, bArr.length);
            int zzuy = zzj.zzuy();
            if (zzuy != bArr.length - zzyy.zzbc(zzuy)) {
                throw zzzf.zzyw();
            }
            obj = ((zzzg) this.value).zza(zzj);
        } else if (this.value instanceof zzzg[]) {
            zzzg[] zzzgVarArr = (zzzg[]) this.zzcfj.zzah(Collections.singletonList(zzziVar));
            zzzg[] zzzgVarArr2 = (zzzg[]) this.value;
            obj = (zzzg[]) Arrays.copyOf(zzzgVarArr2, zzzgVarArr2.length + zzzgVarArr.length);
            System.arraycopy(zzzgVarArr, 0, obj, zzzgVarArr2.length, zzzgVarArr.length);
        } else {
            obj = this.zzcfj.zzah(Collections.singletonList(zzziVar));
        }
        this.zzcfj = this.zzcfj;
        this.value = obj;
        this.zzcfk = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T zzb(zzzb<?, T> zzzbVar) {
        if (this.value == null) {
            this.zzcfj = zzzbVar;
            this.value = zzzbVar.zzah(this.zzcfk);
            this.zzcfk = null;
        } else if (!this.zzcfj.equals(zzzbVar)) {
            throw new IllegalStateException("Tried to getExtension with a different Extension.");
        }
        return (T) this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzf() {
        int i;
        int i2 = 0;
        if (this.value == null) {
            Iterator<zzzi> it = this.zzcfk.iterator();
            int i3 = 0;
            while (true) {
                i = i3;
                if (!it.hasNext()) {
                    break;
                }
                zzzi next = it.next();
                i3 += zzyy.zzbj(next.tag) + 0 + next.zzbug.length;
            }
        } else {
            zzzb<?, ?> zzzbVar = this.zzcfj;
            Object obj = this.value;
            if (zzzbVar.zzcfe) {
                int length = Array.getLength(obj);
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i2 >= length) {
                        break;
                    }
                    i4 = i4;
                    if (Array.get(obj, i2) != null) {
                        i4 += zzzbVar.zzak(Array.get(obj, i2));
                    }
                    i2++;
                }
            } else {
                i = zzzbVar.zzak(obj);
            }
        }
        return i;
    }
}
