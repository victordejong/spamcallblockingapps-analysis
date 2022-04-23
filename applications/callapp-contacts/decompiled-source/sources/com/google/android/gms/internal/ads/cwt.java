package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.k;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwt.class */
public final class cwt {
    private static final Object f = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f26509a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f26510b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26511c;

    /* renamed from: d  reason: collision with root package name */
    private final cwg f26512d;
    private boolean e;

    private cwt(Context context, duu duuVar, cwg cwgVar) {
        this.e = false;
        this.f26509a = context;
        this.f26511c = Integer.toString(duuVar.zzv());
        this.f26510b = context.getSharedPreferences("pcvmspf", 0);
        this.f26512d = cwgVar;
    }

    public cwt(Context context, duu duuVar, cwg cwgVar, boolean z) {
        this(context, duuVar, cwgVar);
        this.e = z;
    }

    private final File a(String str) {
        return new File(new File(this.f26509a.getDir("pccache", 0), this.f26511c), str);
    }

    private final String a() {
        String valueOf = String.valueOf(this.f26511c);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    private final void a(int i, long j) {
        cwg cwgVar = this.f26512d;
        if (cwgVar != null) {
            cwgVar.zza(i, j);
        }
    }

    private final void a(int i, long j, String str) {
        cwg cwgVar = this.f26512d;
        if (cwgVar != null) {
            cwgVar.zza(i, j, str);
        }
    }

    private final String b() {
        String valueOf = String.valueOf(this.f26511c);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    private static String b(duw duwVar) {
        return k.b(dva.a().a(duwVar.a().zzaci).b(duwVar.a().zzacj).b(duwVar.a().zzacl).c(duwVar.a().zzacm).a(duwVar.a().zzack).f().f().d());
    }

    private final dva c(int i) {
        String string = i == cwv.f26513a ? this.f26510b.getString(b(), null) : i == cwv.f26514b ? this.f26510b.getString(a(), null) : null;
        if (string == null) {
            return null;
        }
        try {
            return dva.a(dlw.a(k.a(string)), this.e ? dmt.a() : dmt.b());
        } catch (zzenn e) {
            return null;
        } catch (NullPointerException e2) {
            a(2029, System.currentTimeMillis());
            return null;
        }
    }

    public final cwn a(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            dva c2 = c(i);
            if (c2 == null) {
                a(4022, currentTimeMillis);
                return null;
            }
            File a2 = a(c2.zzaci);
            File file = new File(a2, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(a2, "pcam");
            }
            File file3 = new File(a2, "pcbc");
            File file4 = new File(a2, "pcopt");
            a(5016, currentTimeMillis);
            return new cwn(c2, file2, file3, file4);
        }
    }

    public final boolean a(duw duwVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            if (!cwp.a(new File(a(duwVar.a().zzaci), "pcbc"), duwVar.zzacg.d())) {
                a(4020, currentTimeMillis);
                return false;
            }
            String b2 = b(duwVar);
            SharedPreferences.Editor edit = this.f26510b.edit();
            edit.putString(b(), b2);
            boolean commit = edit.commit();
            if (commit) {
                a(5015, currentTimeMillis);
            } else {
                a(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f A[Catch: all -> 0x02ac, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000c, B:7:0x0026, B:9:0x0033, B:10:0x003d, B:12:0x0040, B:14:0x0055, B:19:0x006a, B:24:0x007f, B:25:0x00da, B:27:0x00e2, B:32:0x00f7, B:34:0x00ff, B:35:0x010c, B:37:0x0119, B:43:0x013c, B:45:0x013f, B:47:0x0172, B:48:0x017c, B:50:0x017f, B:52:0x018e, B:53:0x0198, B:57:0x019f, B:59:0x01aa, B:60:0x01ba, B:62:0x01bd, B:64:0x01f2, B:66:0x0200, B:68:0x020c, B:72:0x021c, B:74:0x021f, B:76:0x0233, B:78:0x023f, B:80:0x024a, B:81:0x0255, B:81:0x0255, B:82:0x0258, B:87:0x0287, B:89:0x0294, B:90:0x0299, B:91:0x029f, B:92:0x02a9), top: B:99:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.duw r7, com.google.android.gms.internal.ads.cwu r8) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cwt.a(com.google.android.gms.internal.ads.duw, com.google.android.gms.internal.ads.cwu):boolean");
    }

    public final boolean b(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f) {
            dva c2 = c(i);
            if (c2 == null) {
                a(4025, currentTimeMillis);
                return false;
            }
            File a2 = a(c2.zzaci);
            if (!new File(a2, "pcam.jar").exists()) {
                a(4026, currentTimeMillis);
                return false;
            } else if (!new File(a2, "pcbc").exists()) {
                a(4027, currentTimeMillis);
                return false;
            } else {
                a(5019, currentTimeMillis);
                return true;
            }
        }
    }
}
