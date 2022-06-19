package com.google.android.gms.internal.mlkit_translate;

import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzdy.class */
public final class zzdy extends zzds {
    private static final Class<?>[] zza = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object zzb;

    public zzdy(Boolean bool) {
        zza(bool);
    }

    public zzdy(Number number) {
        zza(number);
    }

    public zzdy(String str) {
        zza(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
        if (r7 == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zza(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Character
            if (r0 == 0) goto L16
            r0 = r3
            r1 = r4
            java.lang.Character r1 = (java.lang.Character) r1
            char r1 = r1.charValue()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0.zzb = r1
            return
        L16:
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Number
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L66
            r0 = r4
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L2e
        L28:
            r0 = 1
            r7 = r0
            goto L61
        L2e:
            r0 = r4
            java.lang.Class r0 = r0.getClass()
            r8 = r0
            java.lang.Class<?>[] r0 = com.google.android.gms.internal.mlkit_translate.zzdy.zza
            r9 = r0
            r0 = r9
            int r0 = r0.length
            r10 = r0
            r0 = 0
            r7 = r0
        L41:
            r0 = r7
            r1 = r10
            if (r0 >= r1) goto L5e
            r0 = r9
            r1 = r7
            r0 = r0[r1]
            r1 = r8
            boolean r0 = r0.isAssignableFrom(r1)
            if (r0 == 0) goto L58
            goto L28
        L58:
            int r7 = r7 + 1
            goto L41
        L5e:
            r0 = 0
            r7 = r0
        L61:
            r0 = r7
            if (r0 == 0) goto L68
        L66:
            r0 = 1
            r6 = r0
        L68:
            r0 = r6
            if (r0 == 0) goto L72
            r0 = r3
            r1 = r4
            r0.zzb = r1
            return
        L72:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzdy.zza(java.lang.Object):void");
    }

    private static boolean zza(zzdy zzdyVar) {
        Object obj = zzdyVar.zzb;
        if (obj instanceof Number) {
            Number number = (Number) obj;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzdy.class != obj.getClass()) {
            return false;
        }
        zzdy zzdyVar = (zzdy) obj;
        if (this.zzb == null) {
            return zzdyVar.zzb == null;
        } else if (zza(this) && zza(zzdyVar)) {
            return zzd().longValue() == zzdyVar.zzd().longValue();
        } else {
            Object obj2 = this.zzb;
            if (!(obj2 instanceof Number) || !(zzdyVar.zzb instanceof Number)) {
                return obj2.equals(zzdyVar.zzb);
            }
            double doubleValue = zzd().doubleValue();
            double doubleValue2 = zzdyVar.zzd().doubleValue();
            if (doubleValue == doubleValue2) {
                return true;
            }
            return Double.isNaN(doubleValue) && Double.isNaN(doubleValue2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    public final int hashCode() {
        char doubleToLongBits;
        if (this.zzb == null) {
            return 31;
        }
        if (zza(this)) {
            doubleToLongBits = zzd().longValue();
        } else {
            Object obj = this.zzb;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(zzd().doubleValue());
        }
        return (int) ((doubleToLongBits >>> ' ') ^ doubleToLongBits);
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final boolean zzb() {
        return this.zzb instanceof Boolean ? zzc().booleanValue() : Boolean.parseBoolean(zze());
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final Boolean zzc() {
        return (Boolean) this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final Number zzd() {
        Object obj = this.zzb;
        return obj instanceof String ? new zzee((String) this.zzb) : (Number) obj;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final String zze() {
        Object obj = this.zzb;
        return obj instanceof Number ? zzd().toString() : obj instanceof Boolean ? zzc().toString() : (String) obj;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzds
    public final long zzf() {
        return this.zzb instanceof Number ? zzd().longValue() : Long.parseLong(zze());
    }

    public final boolean zzg() {
        return this.zzb instanceof Boolean;
    }

    public final boolean zzh() {
        return this.zzb instanceof Number;
    }
}
