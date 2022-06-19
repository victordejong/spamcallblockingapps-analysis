package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzegl;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzebf.class */
public final class zzebf<P> {
    private static final Charset UTF_8 = Charset.forName(POBCommonConstants.URL_ENCODING);
    private final Class<P> zzibi;
    private ConcurrentMap<String, List<zzebi<P>>> zzibp = new ConcurrentHashMap();
    private zzebi<P> zzibq;

    private zzebf(Class<P> cls) {
        this.zzibi = cls;
    }

    public static <P> zzebf<P> zza(Class<P> cls) {
        return new zzebf<>(cls);
    }

    public final zzebi<P> zza(P p, zzegl.zzb zzbVar) throws GeneralSecurityException {
        byte[] bArr;
        if (zzbVar.zzbau() == zzege.ENABLED) {
            int i = zzear.zzibf[zzbVar.zzbav().ordinal()];
            if (i == 1 || i == 2) {
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(zzbVar.zzbeq()).array();
            } else if (i == 3) {
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(zzbVar.zzbeq()).array();
            } else if (i != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            } else {
                bArr = zzeas.zzibg;
            }
            zzebi<P> zzebiVar = new zzebi<>(p, bArr, zzbVar.zzbau(), zzbVar.zzbav(), zzbVar.zzbeq());
            ArrayList arrayList = new ArrayList();
            arrayList.add(zzebiVar);
            String str = new String(zzebiVar.zzbaw(), UTF_8);
            List<zzebi<P>> put = this.zzibp.put(str, Collections.unmodifiableList(arrayList));
            if (put != null) {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.addAll(put);
                arrayList2.add(zzebiVar);
                this.zzibp.put(str, Collections.unmodifiableList(arrayList2));
            }
            return zzebiVar;
        }
        throw new GeneralSecurityException("only ENABLED key is allowed");
    }

    public final void zza(zzebi<P> zzebiVar) {
        if (zzebiVar != null) {
            if (zzebiVar.zzbau() != zzege.ENABLED) {
                throw new IllegalArgumentException("the primary entry has to be ENABLED");
            }
            List<zzebi<P>> list = this.zzibp.get(new String(zzebiVar.zzbaw(), UTF_8));
            if (list == null) {
                list = Collections.emptyList();
            }
            if (list.isEmpty()) {
                throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
            }
            this.zzibq = zzebiVar;
            return;
        }
        throw new IllegalArgumentException("the primary entry must be non-null");
    }

    public final Class<P> zzbai() {
        return this.zzibi;
    }

    public final zzebi<P> zzbar() {
        return this.zzibq;
    }
}
