package com.google.android.gms.internal.mlkit_translate;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzeh.class */
public final class zzeh<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> zzd = new zzeg();
    public int zza;
    public int zzb;
    public final zzem<K, V> zzc;
    private Comparator<? super K> zze;
    private zzem<K, V> zzf;
    private zzej zzg;
    private zzel zzh;

    public zzeh() {
        this(zzd);
    }

    private zzeh(Comparator<? super K> comparator) {
        this.zza = 0;
        this.zzb = 0;
        this.zzc = new zzem<>();
        this.zze = comparator == null ? zzd : comparator;
    }

    private final zzem<K, V> zza(K k, boolean z) {
        int i;
        zzem<K, V> zzemVar;
        Comparator<? super K> comparator = this.zze;
        zzem<K, V> zzemVar2 = this.zzf;
        if (zzemVar2 != null) {
            Comparable comparable = comparator == zzd ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(zzemVar2.zzf) : comparator.compare(k, (K) zzemVar2.zzf);
                if (i != 0) {
                    zzem<K, V> zzemVar3 = i < 0 ? zzemVar2.zzb : zzemVar2.zzc;
                    if (zzemVar3 == null) {
                        break;
                    }
                    zzemVar2 = zzemVar3;
                } else {
                    return zzemVar2;
                }
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzem<K, V> zzemVar4 = this.zzc;
        if (zzemVar2 != null) {
            zzemVar = new zzem<>(zzemVar2, k, zzemVar4, zzemVar4.zze);
            if (i < 0) {
                zzemVar2.zzb = zzemVar;
            } else {
                zzemVar2.zzc = zzemVar;
            }
            zzb(zzemVar2, true);
        } else if (comparator == zzd && !(k instanceof Comparable)) {
            throw new ClassCastException(C22128a.m8631d2(k, new StringBuilder(), " is not Comparable"));
        } else {
            zzemVar = new zzem<>(zzemVar2, k, zzemVar4, zzemVar4.zze);
            this.zzf = zzemVar;
        }
        this.zza++;
        this.zzb++;
        return zzemVar;
    }

    private final void zza(zzem<K, V> zzemVar) {
        zzem<K, V> zzemVar2 = zzemVar.zzb;
        zzem<K, V> zzemVar3 = zzemVar.zzc;
        zzem<K, V> zzemVar4 = zzemVar3.zzb;
        zzem<K, V> zzemVar5 = zzemVar3.zzc;
        zzemVar.zzc = zzemVar4;
        if (zzemVar4 != null) {
            zzemVar4.zza = zzemVar;
        }
        zza(zzemVar, zzemVar3);
        zzemVar3.zzb = zzemVar;
        zzemVar.zza = zzemVar3;
        int max = Math.max(zzemVar2 != null ? zzemVar2.zzh : 0, zzemVar4 != null ? zzemVar4.zzh : 0) + 1;
        zzemVar.zzh = max;
        int i = 0;
        if (zzemVar5 != null) {
            i = zzemVar5.zzh;
        }
        zzemVar3.zzh = Math.max(max, i) + 1;
    }

    private final void zza(zzem<K, V> zzemVar, zzem<K, V> zzemVar2) {
        zzem<K, V> zzemVar3 = zzemVar.zza;
        zzemVar.zza = null;
        if (zzemVar2 != null) {
            zzemVar2.zza = zzemVar3;
        }
        if (zzemVar3 == null) {
            this.zzf = zzemVar2;
        } else if (zzemVar3.zzb == zzemVar) {
            zzemVar3.zzb = zzemVar2;
        } else {
            zzemVar3.zzc = zzemVar2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final zzem<K, V> zzb(Object obj) {
        if (obj != 0) {
            try {
                return zza((zzeh<K, V>) obj, false);
            } catch (ClassCastException e) {
                return null;
            }
        }
        return null;
    }

    private final void zzb(zzem<K, V> zzemVar) {
        zzem<K, V> zzemVar2 = zzemVar.zzb;
        zzem<K, V> zzemVar3 = zzemVar.zzc;
        zzem<K, V> zzemVar4 = zzemVar2.zzb;
        zzem<K, V> zzemVar5 = zzemVar2.zzc;
        zzemVar.zzb = zzemVar5;
        if (zzemVar5 != null) {
            zzemVar5.zza = zzemVar;
        }
        zza(zzemVar, zzemVar2);
        zzemVar2.zzc = zzemVar;
        zzemVar.zza = zzemVar2;
        int max = Math.max(zzemVar3 != null ? zzemVar3.zzh : 0, zzemVar5 != null ? zzemVar5.zzh : 0) + 1;
        zzemVar.zzh = max;
        int i = 0;
        if (zzemVar4 != null) {
            i = zzemVar4.zzh;
        }
        zzemVar2.zzh = Math.max(max, i) + 1;
    }

    private final void zzb(zzem<K, V> zzemVar, boolean z) {
        while (zzemVar != null) {
            zzem<K, V> zzemVar2 = zzemVar.zzb;
            zzem<K, V> zzemVar3 = zzemVar.zzc;
            int i = zzemVar2 != null ? zzemVar2.zzh : 0;
            int i2 = zzemVar3 != null ? zzemVar3.zzh : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                zzem<K, V> zzemVar4 = zzemVar3.zzb;
                zzem<K, V> zzemVar5 = zzemVar3.zzc;
                int i4 = zzemVar5 != null ? zzemVar5.zzh : 0;
                int i5 = 0;
                if (zzemVar4 != null) {
                    i5 = zzemVar4.zzh;
                }
                int i6 = i5 - i4;
                if (i6 == -1 || (i6 == 0 && !z)) {
                    zza((zzem) zzemVar);
                } else {
                    zzb((zzem) zzemVar3);
                    zza((zzem) zzemVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                zzem<K, V> zzemVar6 = zzemVar2.zzb;
                zzem<K, V> zzemVar7 = zzemVar2.zzc;
                int i7 = zzemVar7 != null ? zzemVar7.zzh : 0;
                int i8 = 0;
                if (zzemVar6 != null) {
                    i8 = zzemVar6.zzh;
                }
                int i9 = i8 - i7;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    zzb((zzem) zzemVar);
                } else {
                    zza((zzem) zzemVar2);
                    zzb((zzem) zzemVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                zzemVar.zzh = i + 1;
                if (z) {
                    return;
                }
            } else {
                zzemVar.zzh = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            zzemVar = zzemVar.zza;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.zzf = null;
        this.zza = 0;
        this.zzb++;
        zzem<K, V> zzemVar = this.zzc;
        zzemVar.zze = zzemVar;
        zzemVar.zzd = zzemVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return zzb(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        zzej zzejVar = this.zzg;
        if (zzejVar != null) {
            return zzejVar;
        }
        zzej zzejVar2 = new zzej(this);
        this.zzg = zzejVar2;
        return zzejVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        zzem<K, V> zzb = zzb(obj);
        if (zzb != null) {
            return zzb.zzg;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        zzel zzelVar = this.zzh;
        if (zzelVar != null) {
            return zzelVar;
        }
        zzel zzelVar2 = new zzel(this);
        this.zzh = zzelVar2;
        return zzelVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        zzem<K, V> zza = zza((zzeh<K, V>) k, true);
        V v2 = zza.zzg;
        zza.zzg = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        zzem<K, V> zza = zza(obj);
        if (zza != null) {
            return zza.zzg;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.zza;
    }

    public final zzem<K, V> zza(Object obj) {
        zzem<K, V> zzb = zzb(obj);
        if (zzb != null) {
            zza((zzem) zzb, true);
        }
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.mlkit_translate.zzem<K, V> zza(java.util.Map.Entry<?, ?> r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            java.lang.Object r1 = r1.getKey()
            com.google.android.gms.internal.mlkit_translate.zzem r0 = r0.zzb(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L49
            r0 = r5
            V r0 = r0.zzg
            r7 = r0
            r0 = r4
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L3b
            r0 = r7
            if (r0 == 0) goto L35
            r0 = r7
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L35
            goto L3b
        L35:
            r0 = 0
            r8 = r0
            goto L3e
        L3b:
            r0 = 1
            r8 = r0
        L3e:
            r0 = r8
            if (r0 == 0) goto L49
            r0 = r6
            r8 = r0
            goto L4c
        L49:
            r0 = 0
            r8 = r0
        L4c:
            r0 = r8
            if (r0 == 0) goto L53
            r0 = r5
            return r0
        L53:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzeh.zza(java.util.Map$Entry):com.google.android.gms.internal.mlkit_translate.zzem");
    }

    public final void zza(zzem<K, V> zzemVar, boolean z) {
        zzem<K, V> zzemVar2;
        int i;
        if (z) {
            zzem<K, V> zzemVar3 = zzemVar.zze;
            zzemVar3.zzd = zzemVar.zzd;
            zzemVar.zzd.zze = zzemVar3;
        }
        zzem<K, V> zzemVar4 = zzemVar.zzb;
        zzem<K, V> zzemVar5 = zzemVar.zzc;
        zzem<K, V> zzemVar6 = zzemVar.zza;
        int i2 = 0;
        if (zzemVar4 == null || zzemVar5 == null) {
            if (zzemVar4 != null) {
                zza(zzemVar, zzemVar4);
                zzemVar.zzb = null;
            } else if (zzemVar5 != null) {
                zza(zzemVar, zzemVar5);
                zzemVar.zzc = null;
            } else {
                zza(zzemVar, (zzem) null);
            }
            zzb(zzemVar6, false);
            this.zza--;
            this.zzb++;
            return;
        }
        if (zzemVar4.zzh > zzemVar5.zzh) {
            zzem<K, V> zzemVar7 = zzemVar4;
            zzem<K, V> zzemVar8 = zzemVar4.zzc;
            while (true) {
                zzem<K, V> zzemVar9 = zzemVar8;
                zzem<K, V> zzemVar10 = zzemVar7;
                zzemVar7 = zzemVar9;
                zzemVar2 = zzemVar10;
                if (zzemVar7 == null) {
                    break;
                }
                zzemVar8 = zzemVar7.zzc;
            }
        } else {
            zzem<K, V> zzemVar11 = zzemVar5.zzb;
            while (true) {
                zzem<K, V> zzemVar12 = zzemVar11;
                if (zzemVar12 == null) {
                    break;
                }
                zzemVar5 = zzemVar12;
                zzemVar11 = zzemVar12.zzb;
            }
            zzemVar2 = zzemVar5;
        }
        zza((zzem) zzemVar2, false);
        zzem<K, V> zzemVar13 = zzemVar.zzb;
        if (zzemVar13 != null) {
            i = zzemVar13.zzh;
            zzemVar2.zzb = zzemVar13;
            zzemVar13.zza = zzemVar2;
            zzemVar.zzb = null;
        } else {
            i = 0;
        }
        zzem<K, V> zzemVar14 = zzemVar.zzc;
        if (zzemVar14 != null) {
            i2 = zzemVar14.zzh;
            zzemVar2.zzc = zzemVar14;
            zzemVar14.zza = zzemVar2;
            zzemVar.zzc = null;
        }
        zzemVar2.zzh = Math.max(i, i2) + 1;
        zza(zzemVar, zzemVar2);
    }
}
