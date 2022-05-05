package com.google.android.gms.internal.measurement;

import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxf.class */
public final class zzxf {
    private static final zzxf zzcbs = new zzxf();
    private final zzxk zzcbt;
    private final ConcurrentMap<Class<?>, zzxj<?>> zzcbu = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.measurement.zzxk] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzxf() {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            java.util.concurrent.ConcurrentHashMap r1 = new java.util.concurrent.ConcurrentHashMap
            r2 = r1
            r2.<init>()
            r0.zzcbu = r1
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x0013:
            r0 = r7
            if (r0 > 0) goto L_0x0034
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r1 = r0
            r2 = 0
            java.lang.String r3 = "com.google.protobuf.AndroidProto3SchemaFactory"
            r1[r2] = r3
            r1 = 0
            r0 = r0[r1]
            com.google.android.gms.internal.measurement.zzxk r0 = zzgb(r0)
            r8 = r0
            r0 = r8
            r6 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0034
            int r7 = r7 + 1
            r0 = r8
            r6 = r0
            goto L_0x0013
        L_0x0034:
            r0 = r6
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0042
            com.google.android.gms.internal.measurement.zzwi r0 = new com.google.android.gms.internal.measurement.zzwi
            r1 = r0
            r1.<init>()
            r8 = r0
        L_0x0042:
            r0 = r5
            r1 = r8
            r0.zzcbt = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzxf.<init>():void");
    }

    private static zzxk zzgb(String str) {
        try {
            return (zzxk) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public static zzxf zzxn() {
        return zzcbs;
    }

    public final <T> zzxj<T> zzag(T t) {
        return zzi(t.getClass());
    }

    public final <T> zzxj<T> zzi(Class<T> cls) {
        zzvo.zza(cls, MessagesContract.MessagesEntry.COLUMN_MESSAGE_TYPE);
        zzxj<?> zzxjVar = this.zzcbu.get(cls);
        zzxj<T> zzxjVar2 = (zzxj<T>) zzxjVar;
        if (zzxjVar == null) {
            zzxjVar2 = this.zzcbt.zzh(cls);
            zzvo.zza(cls, MessagesContract.MessagesEntry.COLUMN_MESSAGE_TYPE);
            zzvo.zza(zzxjVar2, "schema");
            zzxj<?> putIfAbsent = this.zzcbu.putIfAbsent(cls, zzxjVar2);
            if (putIfAbsent != null) {
                zzxjVar2 = (zzxj<T>) putIfAbsent;
            }
        }
        return zzxjVar2;
    }
}
