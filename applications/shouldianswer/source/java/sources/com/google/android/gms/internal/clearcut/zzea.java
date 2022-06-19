package com.google.android.gms.internal.clearcut;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzea.class */
public final class zzea {
    private static final zzea zznc = new zzea();
    private final zzeg zznd;
    private final ConcurrentMap<Class<?>, zzef<?>> zzne = new ConcurrentHashMap();

    private zzea() {
        zzdd zzddVar = null;
        int i = 0;
        while (i <= 0) {
            zzeg zzk = zzk(new String[]{"com.google.protobuf.AndroidProto3SchemaFactory"}[0]);
            zzddVar = zzk;
            if (zzk != null) {
                break;
            }
            i++;
            zzddVar = zzk;
        }
        this.zznd = zzddVar == null ? new zzdd() : zzddVar;
    }

    public static zzea zzcm() {
        return zznc;
    }

    private static zzeg zzk(String str) {
        try {
            return (zzeg) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }

    public final <T> zzef<T> zze(Class<T> cls) {
        zzci.zza(cls, "messageType");
        zzef<?> zzefVar = this.zzne.get(cls);
        zzef<?> zzefVar2 = zzefVar;
        if (zzefVar == null) {
            zzefVar2 = this.zznd.zzd(cls);
            zzci.zza(cls, "messageType");
            zzci.zza(zzefVar2, "schema");
            zzef<?> putIfAbsent = this.zzne.putIfAbsent(cls, zzefVar2);
            if (putIfAbsent != null) {
                zzefVar2 = putIfAbsent;
            }
        }
        return (zzef<T>) zzefVar2;
    }

    public final <T> zzef<T> zzp(T t) {
        return zze(t.getClass());
    }
}
