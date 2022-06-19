package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzfx.class */
final class zzfx implements Cloneable {
    private Object value;
    private zzfv<?, ?> zzrp;
    private List<Object> zzrq = new ArrayList();

    private final byte[] toByteArray() {
        byte[] bArr = new byte[zzen()];
        zza(zzfs.zzg(bArr));
        return bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzeq */
    public final zzfx clone() {
        zzfz clone;
        zzfx zzfxVar = new zzfx();
        try {
            zzfxVar.zzrp = this.zzrp;
            if (this.zzrq == null) {
                zzfxVar.zzrq = null;
            } else {
                zzfxVar.zzrq.addAll(this.zzrq);
            }
            if (this.value != null) {
                if (this.value instanceof zzfz) {
                    clone = (zzfz) ((zzfz) this.value).clone();
                } else if (this.value instanceof byte[]) {
                    clone = ((byte[]) this.value).clone();
                } else {
                    if (this.value instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.value;
                        byte[] bArr2 = new byte[bArr.length];
                        zzfxVar.value = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.value instanceof boolean[]) {
                        clone = ((boolean[]) this.value).clone();
                    } else if (this.value instanceof int[]) {
                        clone = ((int[]) this.value).clone();
                    } else if (this.value instanceof long[]) {
                        clone = ((long[]) this.value).clone();
                    } else if (this.value instanceof float[]) {
                        clone = ((float[]) this.value).clone();
                    } else if (this.value instanceof double[]) {
                        clone = ((double[]) this.value).clone();
                    } else if (this.value instanceof zzfz[]) {
                        zzfz[] zzfzVarArr = (zzfz[]) this.value;
                        zzfz[] zzfzVarArr2 = new zzfz[zzfzVarArr.length];
                        zzfxVar.value = zzfzVarArr2;
                        for (int i2 = 0; i2 < zzfzVarArr.length; i2++) {
                            zzfzVarArr2[i2] = (zzfz) zzfzVarArr[i2].clone();
                        }
                    }
                }
                zzfxVar.value = clone;
            }
            return zzfxVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx)) {
            return false;
        }
        zzfx zzfxVar = (zzfx) obj;
        if (this.value == null || zzfxVar.value == null) {
            List<Object> list2 = this.zzrq;
            if (list2 != null && (list = zzfxVar.zzrq) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(toByteArray(), zzfxVar.toByteArray());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }
        zzfv<?, ?> zzfvVar = this.zzrp;
        if (zzfvVar != zzfxVar.zzrp) {
            return false;
        }
        if (!zzfvVar.zzrk.isArray()) {
            return this.value.equals(zzfxVar.value);
        }
        Object obj2 = this.value;
        return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) zzfxVar.value) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) zzfxVar.value) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) zzfxVar.value) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) zzfxVar.value) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) zzfxVar.value) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) zzfxVar.value) : Arrays.deepEquals((Object[]) obj2, (Object[]) zzfxVar.value);
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(toByteArray()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    public final void zza(zzfs zzfsVar) {
        if (this.value == null) {
            Iterator<Object> it = this.zzrq.iterator();
            if (!it.hasNext()) {
                return;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    public final int zzen() {
        if (this.value == null) {
            Iterator<Object> it = this.zzrq.iterator();
            if (!it.hasNext()) {
                return 0;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }
}
