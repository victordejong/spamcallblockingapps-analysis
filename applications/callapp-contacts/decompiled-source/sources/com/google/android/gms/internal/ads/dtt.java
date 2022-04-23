package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.azz;
import com.google.android.gms.internal.ads.beb;
import java.util.concurrent.ExecutionException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtt.class */
public final class dtt extends dus {

    /* renamed from: d  reason: collision with root package name */
    private static final duv<bwm> f27216d = new duv<>();
    private final Context e;
    private azz.a f;

    public dtt(dtg dtgVar, String str, String str2, beb.a.b bVar, int i, int i2, Context context, azz.a aVar) {
        super(dtgVar, str, str2, bVar, i, 27);
        this.f = null;
        this.e = context;
        this.f = aVar;
    }

    private static String a(azz.a aVar) {
        if (aVar == null || !aVar.a() || dtl.b(aVar.b().zzfg)) {
            return null;
        }
        return aVar.b().zzfg;
    }

    private final String c() {
        try {
            if (this.f27237a.g != null) {
                this.f27237a.g.get();
            }
            beb.a aVar = this.f27237a.f;
            if (aVar == null || !aVar.a()) {
                return null;
            }
            return aVar.zzfg;
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004c A[Catch: all -> 0x01cc, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x0010, B:6:0x001c, B:8:0x0026, B:10:0x0032, B:17:0x004c, B:19:0x0059, B:20:0x0060, B:24:0x0073, B:31:0x0087, B:33:0x008e, B:34:0x0095, B:36:0x009b, B:39:0x00ab, B:41:0x00b0, B:48:0x00c1, B:50:0x00cb, B:51:0x00d2, B:53:0x00d7, B:58:0x00e6, B:60:0x011d, B:62:0x012a, B:62:0x012a, B:63:0x012d, B:68:0x0140, B:70:0x014c, B:71:0x0155, B:73:0x0165, B:75:0x016b, B:76:0x0174), top: B:98:0x0010 }] */
    @Override // com.google.android.gms.internal.ads.dus
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void a() throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dtt.a():void");
    }
}
