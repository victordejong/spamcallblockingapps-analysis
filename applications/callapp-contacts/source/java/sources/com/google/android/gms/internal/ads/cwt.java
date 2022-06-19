package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.C12107k;
import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwt.class */
public final class cwt {

    /* renamed from: f */
    private static final Object f46679f = new Object();

    /* renamed from: a */
    private final Context f46680a;

    /* renamed from: b */
    private final SharedPreferences f46681b;

    /* renamed from: c */
    private final String f46682c;

    /* renamed from: d */
    private final cwg f46683d;

    /* renamed from: e */
    private boolean f46684e;

    private cwt(Context context, duu duuVar, cwg cwgVar) {
        this.f46684e = false;
        this.f46680a = context;
        this.f46682c = Integer.toString(duuVar.zzv());
        this.f46681b = context.getSharedPreferences("pcvmspf", 0);
        this.f46683d = cwgVar;
    }

    public cwt(Context context, duu duuVar, cwg cwgVar, boolean z) {
        this(context, duuVar, cwgVar);
        this.f46684e = z;
    }

    /* renamed from: a */
    private final File m17099a(String str) {
        return new File(new File(this.f46680a.getDir("pccache", 0), this.f46682c), str);
    }

    /* renamed from: a */
    private final String m17105a() {
        String valueOf = String.valueOf(this.f46682c);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    /* renamed from: a */
    private final void m17103a(int i, long j) {
        cwg cwgVar = this.f46683d;
        if (cwgVar != null) {
            cwgVar.zza(i, j);
        }
    }

    /* renamed from: a */
    private final void m17102a(int i, long j, String str) {
        cwg cwgVar = this.f46683d;
        if (cwgVar != null) {
            cwgVar.zza(i, j, str);
        }
    }

    /* renamed from: b */
    private final String m17098b() {
        String valueOf = String.valueOf(this.f46682c);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }

    /* renamed from: b */
    private static String m17096b(duw duwVar) {
        return C12107k.m19026b(dva.m15692a().m15681a(duwVar.m15695a().zzaci).m15679b(duwVar.m15695a().zzacj).m15680b(duwVar.m15695a().zzacl).m15678c(duwVar.m15695a().zzacm).m15682a(duwVar.m15695a().zzack).mo16259f().mo16257f().m16467d());
    }

    /* renamed from: c */
    private final dva m17095c(int i) {
        String string = i == cwv.f46685a ? this.f46681b.getString(m17098b(), null) : i == cwv.f46686b ? this.f46681b.getString(m17105a(), null) : null;
        if (string == null) {
            return null;
        }
        try {
            return dva.m15690a(dlw.m16475a(C12107k.m19028a(string)), this.f46684e ? dmt.m16396a() : dmt.m16394b());
        } catch (zzenn e) {
            return null;
        } catch (NullPointerException e2) {
            m17103a(2029, System.currentTimeMillis());
            return null;
        }
    }

    /* renamed from: a */
    public final cwn m17104a(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f46679f) {
            dva m17095c = m17095c(i);
            if (m17095c == null) {
                m17103a(4022, currentTimeMillis);
                return null;
            }
            File m17099a = m17099a(m17095c.zzaci);
            File file = new File(m17099a, "pcam.jar");
            File file2 = file;
            if (!file.exists()) {
                file2 = new File(m17099a, "pcam");
            }
            File file3 = new File(m17099a, "pcbc");
            File file4 = new File(m17099a, "pcopt");
            m17103a(5016, currentTimeMillis);
            return new cwn(m17095c, file2, file3, file4);
        }
    }

    /* renamed from: a */
    public final boolean m17101a(duw duwVar) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f46679f) {
            if (!cwp.m17115a(new File(m17099a(duwVar.m15695a().zzaci), "pcbc"), duwVar.zzacg.m16467d())) {
                m17103a(4020, currentTimeMillis);
                return false;
            }
            String m17096b = m17096b(duwVar);
            SharedPreferences.Editor edit = this.f46681b.edit();
            edit.putString(m17098b(), m17096b);
            boolean commit = edit.commit();
            if (commit) {
                m17103a(5015, currentTimeMillis);
            } else {
                m17103a(4021, currentTimeMillis);
            }
            return commit;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013f A[Catch: all -> 0x02ac, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x000c, B:7:0x0026, B:9:0x0033, B:10:0x003d, B:12:0x0040, B:14:0x0055, B:19:0x006a, B:24:0x007f, B:25:0x00da, B:27:0x00e2, B:32:0x00f7, B:34:0x00ff, B:35:0x010c, B:37:0x0119, B:43:0x013c, B:45:0x013f, B:47:0x0172, B:48:0x017c, B:50:0x017f, B:52:0x018e, B:53:0x0198, B:57:0x019f, B:59:0x01aa, B:60:0x01ba, B:62:0x01bd, B:64:0x01f2, B:66:0x0200, B:68:0x020c, B:72:0x021c, B:74:0x021f, B:76:0x0233, B:78:0x023f, B:80:0x024a, B:81:0x0255, B:81:0x0255, B:82:0x0258, B:87:0x0287, B:89:0x0294, B:90:0x0299, B:91:0x029f, B:92:0x02a9), top: B:99:0x000c }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m17100a(com.google.android.gms.internal.ads.duw r7, com.google.android.gms.internal.ads.cwu r8) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cwt.m17100a(com.google.android.gms.internal.ads.duw, com.google.android.gms.internal.ads.cwu):boolean");
    }

    /* renamed from: b */
    public final boolean m17097b(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (f46679f) {
            dva m17095c = m17095c(i);
            if (m17095c == null) {
                m17103a(4025, currentTimeMillis);
                return false;
            }
            File m17099a = m17099a(m17095c.zzaci);
            if (!new File(m17099a, "pcam.jar").exists()) {
                m17103a(4026, currentTimeMillis);
                return false;
            } else if (!new File(m17099a, "pcbc").exists()) {
                m17103a(4027, currentTimeMillis);
                return false;
            } else {
                m17103a(5019, currentTimeMillis);
                return true;
            }
        }
    }
}
