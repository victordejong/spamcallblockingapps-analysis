package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjo.class */
public final class zzjo {
    private static final zzjo zzb = new zzjo(true);
    public final zzlx zza = new zzlq(16);
    private boolean zzc;
    private boolean zzd;

    private zzjo() {
    }

    private zzjo(boolean z) {
        zzb();
        zzb();
    }

    public static zzjo zza() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void zzd(com.google.android.gms.internal.measurement.zzjn r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.zzmr r0 = r0.zzb()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.zzkf.zze(r0)
            com.google.android.gms.internal.measurement.zzmr r0 = com.google.android.gms.internal.measurement.zzmr.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.zzms r0 = com.google.android.gms.internal.measurement.zzms.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.zzms r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto Laf;
                case 1: goto La6;
                case 2: goto L9d;
                case 3: goto L94;
                case 4: goto L8b;
                case 5: goto L82;
                case 6: goto L71;
                case 7: goto L60;
                case 8: goto L4f;
                default: goto L4c;
            }
        L4c:
            goto Lbb
        L4f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzlc
            if (r0 != 0) goto Lba
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzkj
            if (r0 == 0) goto Lbb
            goto Lba
        L60:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lba
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzjz
            if (r0 == 0) goto Lbb
            goto Lba
        L71:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.zzix
            if (r0 != 0) goto Lba
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto Lbb
            goto Lba
        L82:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto Lb5
        L8b:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto Lb5
        L94:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto Lb5
        L9d:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto Lb5
        La6:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto Lb5
        Laf:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        Lb5:
            r0 = r12
            if (r0 == 0) goto Lbb
        Lba:
            return
        Lbb:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            int r6 = r6.zza()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.measurement.zzmr r6 = r6.zzb()
            com.google.android.gms.internal.measurement.zzms r6 = r6.zza()
            r4[r5] = r6
            r4 = r3
            r5 = 2
            r6 = r9
            java.lang.Class r6 = r6.getClass()
            java.lang.String r6 = r6.getName()
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzjo.zzd(com.google.android.gms.internal.measurement.zzjn, java.lang.Object):void");
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzjo zzjoVar = new zzjo();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry zzg = this.zza.zzg(i);
            zzjoVar.zzc((zzjn) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : this.zza.zzc()) {
            zzjoVar.zzc((zzjn) entry.getKey(), entry.getValue());
        }
        zzjoVar.zzd = this.zzd;
        return zzjoVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjo) {
            return this.zza.equals(((zzjo) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zzb() {
        if (this.zzc) {
            return;
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zzc(zzjn zzjnVar, Object obj) {
        if (!zzjnVar.zzc()) {
            zzd(zzjnVar, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zzd(zzjnVar, arrayList.get(i));
            }
            obj = arrayList;
        }
        if (obj instanceof zzkj) {
            this.zzd = true;
        }
        this.zza.put(zzjnVar, obj);
    }
}
