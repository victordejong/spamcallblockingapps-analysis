package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.ads.zzgr;
import java.io.File;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdva.class */
public final class zzdva {

    /* renamed from: d */
    public static final Object f27885d = new Object();

    /* renamed from: a */
    public final Context f27886a;

    /* renamed from: b */
    public final SharedPreferences f27887b;

    /* renamed from: c */
    public final String f27888c;

    public zzdva(Context context, zzgo zzgoVar) {
        this.f27886a = context;
        this.f27888c = Integer.toString(zzgoVar.zzv());
        this.f27887b = context.getSharedPreferences("pcvmspf", 0);
    }

    /* renamed from: b */
    public static String m13125b(zzgq zzgqVar) {
        zzgr.zza r = zzgr.m12094r();
        r.m12090a(zzgqVar.m12115m().m12099m());
        r.m12088b(zzgqVar.m12115m().m12098n());
        r.m12089b(zzgqVar.m12115m().m12096p());
        r.m12087c(zzgqVar.m12115m().m12095q());
        r.m12091a(zzgqVar.m12115m().m12097o());
        return Hex.m17077a(((zzgr) ((zzejz) r.mo12342K())).mo12346j().toByteArray());
    }

    /* renamed from: a */
    public final zzgr m13131a(int i) {
        String string = i == zzduz.f27863a ? this.f27887b.getString(m13127b(), null) : i == zzduz.f27864b ? this.f27887b.getString(m13132a(), null) : null;
        if (string == null) {
            return null;
        }
        try {
            return zzgr.m12109a(zzeip.zzu(Hex.m17078a(string)), zzejm.m12417b());
        } catch (zzekj e) {
            return null;
        }
    }

    /* renamed from: a */
    public final File m13128a(String str) {
        return new File(new File(this.f27886a.getDir("pccache", 0), this.f27888c), str);
    }

    /* renamed from: a */
    public final String m13132a() {
        String valueOf = String.valueOf(this.f27888c);
        return valueOf.length() != 0 ? "FBAMTD".concat(valueOf) : new String("FBAMTD");
    }

    /* renamed from: a */
    public final boolean m13130a(zzgq zzgqVar) {
        synchronized (f27885d) {
            if (!zzduu.m13139a(new File(m13128a(zzgqVar.m12115m().m12099m()), "pcbc"), zzgqVar.m12113o().toByteArray())) {
                return false;
            }
            String b = m13125b(zzgqVar);
            SharedPreferences.Editor edit = this.f27887b.edit();
            edit.putString(m13127b(), b);
            return edit.commit();
        }
    }

    /* renamed from: a */
    public final boolean m13129a(zzgq zzgqVar, zzdux zzduxVar) {
        File[] listFiles;
        synchronized (f27885d) {
            try {
                zzgr a = m13131a(zzduz.f27863a);
                String m = zzgqVar.m12115m().m12099m();
                if (a != null && a.m12099m().equals(m)) {
                    return false;
                }
                if (!m13128a(m).mkdirs()) {
                    return false;
                }
                File a2 = m13128a(m);
                File file = new File(a2, "pcam");
                File file2 = new File(a2, "pcbc");
                if (!zzduu.m13139a(file, zzgqVar.m12114n().toByteArray())) {
                    return false;
                }
                if (!zzduu.m13139a(file2, zzgqVar.m12113o().toByteArray())) {
                    return false;
                }
                if (zzduxVar == null || zzduxVar.mo13135a(file)) {
                    String b = m13125b(zzgqVar);
                    String string = this.f27887b.getString(m13127b(), null);
                    SharedPreferences.Editor edit = this.f27887b.edit();
                    edit.putString(m13127b(), b);
                    if (string != null) {
                        edit.putString(m13132a(), string);
                    }
                    if (!edit.commit()) {
                        return false;
                    }
                    HashSet hashSet = new HashSet();
                    zzgr a3 = m13131a(zzduz.f27863a);
                    if (a3 != null) {
                        hashSet.add(a3.m12099m());
                    }
                    zzgr a4 = m13131a(zzduz.f27864b);
                    if (a4 != null) {
                        hashSet.add(a4.m12099m());
                    }
                    for (File file3 : new File(this.f27886a.getDir("pccache", 0), this.f27888c).listFiles()) {
                        if (!hashSet.contains(file3.getName())) {
                            zzduu.m13141a(file3);
                        }
                    }
                    return true;
                }
                zzduu.m13141a(a2);
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final zzdus m13126b(int i) {
        synchronized (f27885d) {
            zzgr a = m13131a(i);
            if (a == null) {
                return null;
            }
            File a2 = m13128a(a.m12099m());
            return new zzdus(a, new File(a2, "pcam"), new File(a2, "pcbc"), new File(a2, "pcopt"));
        }
    }

    /* renamed from: b */
    public final String m13127b() {
        String valueOf = String.valueOf(this.f27888c);
        return valueOf.length() != 0 ? "LATMTD".concat(valueOf) : new String("LATMTD");
    }
}
