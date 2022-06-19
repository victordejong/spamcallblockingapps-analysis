package com.google.android.gms.internal.firebase_messaging;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.m.d.r.c;
import e.m.d.r.d;
import e.m.d.r.e;
import e.m.d.r.f;
import e.m.d.r.g;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/zzu.class */
public final class zzu implements f {
    private static final Charset zza = Charset.forName(StringConstant.UTF8);
    private static final d zzb;
    private static final d zzc;
    private static final e<Map.Entry<Object, Object>> zzd;
    private OutputStream zze;
    private final Map<Class<?>, e<?>> zzf;
    private final Map<Class<?>, g<?>> zzg;
    private final e<Object> zzh;
    private final zzy zzi = new zzy(this);

    static {
        zzo zzoVar = new zzo();
        zzoVar.zza(1);
        zzs zzb2 = zzoVar.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put(zzb2.annotationType(), zzb2);
        zzb = new d(AnalyticsConstants.KEY, hashMap == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap), (d.a) null);
        zzo zzoVar2 = new zzo();
        zzoVar2.zza(2);
        zzs zzb3 = zzoVar2.zzb();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(zzb3.annotationType(), zzb3);
        zzc = new d("value", hashMap2 == null ? Collections.emptyMap() : C22128a.m8637c0(hashMap2), (d.a) null);
        zzd = zzt.zza;
    }

    public zzu(OutputStream outputStream, Map<Class<?>, e<?>> map, Map<Class<?>, g<?>> map2, e<Object> eVar) {
        this.zze = outputStream;
        this.zzf = map;
        this.zzg = map2;
        this.zzh = eVar;
    }

    public static /* synthetic */ void zzg(Map.Entry entry, f fVar) throws IOException {
        fVar.add(zzb, entry.getKey());
        fVar.add(zzc, entry.getValue());
    }

    private static int zzh(d dVar) {
        zzs zzsVar = (zzs) ((Annotation) dVar.b.get(zzs.class));
        if (zzsVar != null) {
            return zzsVar.zza();
        }
        throw new c("Field has no @Protobuf config");
    }

    private final <T> long zzi(e<T> eVar, T t) throws IOException {
        zzp zzpVar = new zzp();
        try {
            OutputStream outputStream = this.zze;
            this.zze = zzpVar;
            eVar.encode(t, this);
            this.zze = outputStream;
            long zza2 = zzpVar.zza();
            zzpVar.close();
            return zza2;
        } catch (Throwable th) {
            try {
                zzpVar.close();
            } catch (Throwable th2) {
            }
            throw th;
        }
    }

    private static zzs zzj(d dVar) {
        zzs zzsVar = (zzs) ((Annotation) dVar.b.get(zzs.class));
        if (zzsVar != null) {
            return zzsVar;
        }
        throw new c("Field has no @Protobuf config");
    }

    private final <T> zzu zzk(e<T> eVar, d dVar, T t, boolean z) throws IOException {
        long zzi = zzi(eVar, t);
        if (!z || zzi != 0) {
            zzn((zzh(dVar) << 3) | 2);
            zzo(zzi);
            eVar.encode(t, this);
            return this;
        }
        return this;
    }

    private final <T> zzu zzl(g<T> gVar, d dVar, T t, boolean z) throws IOException {
        this.zzi.zza(dVar, z);
        gVar.encode(t, this.zzi);
        return this;
    }

    private static ByteBuffer zzm(int i) {
        return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
    }

    private final void zzn(int i) throws IOException {
        while ((i & (-128)) != 0) {
            this.zze.write((i & Constants.ERR_WATERMARKR_INFO) | 128);
            i >>>= 7;
        }
        this.zze.write(i & Constants.ERR_WATERMARKR_INFO);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r6 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzo(long r6) throws java.io.IOException {
        /*
            r5 = this;
        L0:
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r6
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L22
            r0 = r5
            java.io.OutputStream r0 = r0.zze
            r1 = r6
            int r1 = (int) r1
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r2 = 128(0x80, float:1.794E-43)
            r1 = r1 | r2
            r0.write(r1)
            r0 = r6
            r1 = 7
            long r0 = r0 >>> r1
            r6 = r0
            goto L0
        L22:
            r0 = r5
            java.io.OutputStream r0 = r0.zze
            r1 = r6
            int r1 = (int) r1
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_messaging.zzu.zzo(long):void");
    }

    public final f add(d dVar, double d) throws IOException {
        zza(dVar, d, true);
        return this;
    }

    public final f add(d dVar, float f) throws IOException {
        zzb(dVar, f, true);
        return this;
    }

    public final /* synthetic */ f add(d dVar, int i) throws IOException {
        zzd(dVar, i, true);
        return this;
    }

    public final /* synthetic */ f add(d dVar, long j) throws IOException {
        zze(dVar, j, true);
        return this;
    }

    public final f add(d dVar, Object obj) throws IOException {
        zzc(dVar, obj, true);
        return this;
    }

    public final /* synthetic */ f add(d dVar, boolean z) throws IOException {
        zzd(dVar, z ? 1 : 0, true);
        return this;
    }

    public final f add(String str, double d) throws IOException {
        zza(d.a(str), d, true);
        return this;
    }

    public final f add(String str, int i) throws IOException {
        zzd(d.a(str), i, true);
        return this;
    }

    public final f add(String str, long j) throws IOException {
        zze(d.a(str), j, true);
        return this;
    }

    public final f add(String str, Object obj) throws IOException {
        zzc(d.a(str), obj, true);
        return this;
    }

    public final f add(String str, boolean z) throws IOException {
        zzd(d.a(str), z ? 1 : 0, true);
        return this;
    }

    public final f inline(Object obj) throws IOException {
        zzf(obj);
        return this;
    }

    public final f nested(d dVar) throws IOException {
        throw new c("nested() is not implemented for protobuf encoding.");
    }

    public final f nested(String str) throws IOException {
        return nested(d.a(str));
    }

    public final f zza(d dVar, double d, boolean z) throws IOException {
        if (!z || d != PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            zzn((zzh(dVar) << 3) | 1);
            this.zze.write(zzm(8).putDouble(d).array());
            return this;
        }
        return this;
    }

    public final f zzb(d dVar, float f, boolean z) throws IOException {
        if (!z || f != 0.0f) {
            zzn((zzh(dVar) << 3) | 5);
            this.zze.write(zzm(4).putFloat(f).array());
            return this;
        }
        return this;
    }

    public final f zzc(d dVar, Object obj, boolean z) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            zzn((zzh(dVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(zza);
            zzn(bytes.length);
            this.zze.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                zzc(dVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                zzk(zzd, dVar, entry, false);
            }
            return this;
        } else if (obj instanceof Double) {
            zza(dVar, ((Double) obj).doubleValue(), z);
            return this;
        } else if (obj instanceof Float) {
            zzb(dVar, ((Float) obj).floatValue(), z);
            return this;
        } else if (obj instanceof Number) {
            zze(dVar, ((Number) obj).longValue(), z);
            return this;
        } else if (obj instanceof Boolean) {
            zzd(dVar, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return this;
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return this;
            }
            zzn((zzh(dVar) << 3) | 2);
            zzn(bArr.length);
            this.zze.write(bArr);
            return this;
        } else {
            e<?> eVar = this.zzf.get(obj.getClass());
            if (eVar != null) {
                zzk(eVar, dVar, obj, z);
                return this;
            }
            g<?> gVar = this.zzg.get(obj.getClass());
            if (gVar != null) {
                zzl(gVar, dVar, obj, z);
                return this;
            } else if (obj instanceof zzq) {
                zzd(dVar, ((zzq) obj).getNumber(), true);
                return this;
            } else if (obj instanceof Enum) {
                zzd(dVar, ((Enum) obj).ordinal(), true);
                return this;
            } else {
                zzk(this.zzh, dVar, obj, z);
                return this;
            }
        }
    }

    public final zzu zzd(d dVar, int i, boolean z) throws IOException {
        if (!z || i != 0) {
            zzs zzj = zzj(dVar);
            zzr zzrVar = zzr.DEFAULT;
            int ordinal = zzj.zzb().ordinal();
            if (ordinal == 0) {
                zzn(zzj.zza() << 3);
                zzn(i);
            } else if (ordinal == 1) {
                zzn(zzj.zza() << 3);
                zzn((i + i) ^ (i >> 31));
            } else if (ordinal == 2) {
                zzn((zzj.zza() << 3) | 5);
                this.zze.write(zzm(4).putInt(i).array());
            }
            return this;
        }
        return this;
    }

    public final zzu zze(d dVar, long j, boolean z) throws IOException {
        if (!z || j != 0) {
            zzs zzj = zzj(dVar);
            zzr zzrVar = zzr.DEFAULT;
            int ordinal = zzj.zzb().ordinal();
            if (ordinal == 0) {
                zzn(zzj.zza() << 3);
                zzo(j);
            } else if (ordinal == 1) {
                zzn(zzj.zza() << 3);
                zzo((j >> 63) ^ (j + j));
            } else if (ordinal == 2) {
                zzn((zzj.zza() << 3) | 1);
                this.zze.write(zzm(8).putLong(j).array());
            }
            return this;
        }
        return this;
    }

    public final zzu zzf(Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        e<?> eVar = this.zzf.get(obj.getClass());
        if (eVar != null) {
            eVar.encode(obj, this);
            return this;
        }
        String valueOf = String.valueOf(obj.getClass());
        valueOf.length();
        throw new c("No encoder for ".concat(valueOf));
    }
}
