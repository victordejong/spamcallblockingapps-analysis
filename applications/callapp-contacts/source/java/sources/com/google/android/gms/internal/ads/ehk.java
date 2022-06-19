package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.ehn;
import com.google.android.gms.internal.ads.eht;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ehk.class */
public final class ehk {

    /* renamed from: a */
    private final ehq f49035a;

    /* renamed from: b */
    private final eht.C12494n.C12495a f49036b;

    /* renamed from: c */
    private final boolean f49037c;

    public ehk() {
        this.f49036b = eht.C12494n.m14979a();
        this.f49037c = false;
        this.f49035a = new ehq();
    }

    public ehk(ehq ehqVar) {
        this.f49036b = eht.C12494n.m14979a();
        this.f49035a = ehqVar;
        this.f49037c = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42757cN)).booleanValue();
    }

    /* renamed from: a */
    private static List<Long> m15049a() {
        List<String> m18472b = C12187aq.m18472b();
        ArrayList arrayList = new ArrayList();
        for (String str : m18472b) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str2));
                } catch (NumberFormatException e) {
                    zzd.zzed("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private final void m15046b(ehn.C12444a.EnumC12446b enumC12446b) {
        synchronized (this) {
            this.f49036b.m14961g().m14963a(m15049a());
            ehu m15042a = this.f49035a.m15042a(((eht.C12494n) ((dnh) this.f49036b.mo16259f())).mo16256g());
            m15042a.f49044b = enumC12446b.zzv();
            m15042a.m14887a();
            String valueOf = String.valueOf(Integer.toString(enumC12446b.zzv(), 10));
            zzd.zzed(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* renamed from: c */
    private final void m15045c(ehn.C12444a.EnumC12446b enumC12446b) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    try {
                        fileOutputStream.write(m15044d(enumC12446b).getBytes());
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            zzd.zzed("Could not close Clearcut output stream.");
                        }
                    } catch (IOException e2) {
                        zzd.zzed("Could not write Clearcut to file.");
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            zzd.zzed("Could not close Clearcut output stream.");
                        }
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        zzd.zzed("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (FileNotFoundException e5) {
                zzd.zzed("Could not find file for Clearcut");
            }
        }
    }

    /* renamed from: d */
    private final String m15044d(ehn.C12444a.EnumC12446b enumC12446b) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f49036b.m14969a(), Long.valueOf(zzr.zzlc().mo19038b()), Integer.valueOf(enumC12446b.zzv()), Base64.encodeToString(((eht.C12494n) ((dnh) this.f49036b.mo16259f())).mo16256g(), 3));
        }
        return format;
    }

    /* renamed from: a */
    public final void m15048a(ehj ehjVar) {
        synchronized (this) {
            if (this.f49037c) {
                try {
                    ehjVar.mo15050a(this.f49036b);
                } catch (NullPointerException e) {
                    zzr.zzkz().m13979a(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m15047a(ehn.C12444a.EnumC12446b enumC12446b) {
        synchronized (this) {
            if (!this.f49037c) {
                return;
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42758cO)).booleanValue()) {
                m15045c(enumC12446b);
            } else {
                m15046b(enumC12446b);
            }
        }
    }
}
