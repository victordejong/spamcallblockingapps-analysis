package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wv2.class */
public final class wv2 {

    /* renamed from: a */
    private final aw2 f9070a;
    @GuardedBy("this")

    /* renamed from: b */
    private final ex2 f9071b;

    /* renamed from: c */
    private final boolean f9072c;

    private wv2() {
        this.f9071b = gx2.H();
        this.f9072c = false;
        this.f9070a = new aw2();
    }

    public wv2(aw2 aw2Var) {
        this.f9071b = gx2.H();
        this.f9070a = aw2Var;
        this.f9072c = ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7283L2)).booleanValue();
    }

    /* renamed from: a */
    public static wv2 m4992a() {
        return new wv2();
    }

    /* renamed from: d */
    private final void m4989d(zzui zzuiVar) {
        synchronized (this) {
            ex2 ex2Var = this.f9071b;
            ex2Var.t();
            List<String> d = C1842m3.m6597d();
            ArrayList arrayList = new ArrayList();
            for (String str : d) {
                for (String str2 : str.split(",")) {
                    try {
                        arrayList.add(Long.valueOf(str2));
                    } catch (NumberFormatException e) {
                        y0.k("Experiment ID is not a number");
                    }
                }
            }
            ex2Var.s(arrayList);
            zv2 zv2Var = new zv2(this.f9070a, this.f9071b.m().A(), null);
            zv2Var.m4503b(zzuiVar.zza());
            zv2Var.m4504a();
            String valueOf = String.valueOf(Integer.toString(zzuiVar.zza(), 10));
            y0.k(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* renamed from: e */
    private final void m4988e(zzui zzuiVar) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                    try {
                        try {
                            fileOutputStream.write(m4987f(zzuiVar).getBytes());
                            try {
                                fileOutputStream.close();
                            } catch (IOException e) {
                                y0.k("Could not close Clearcut output stream.");
                            }
                        } catch (IOException e2) {
                            y0.k("Could not write Clearcut to file.");
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                y0.k("Could not close Clearcut output stream.");
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e4) {
                            y0.k("Could not close Clearcut output stream.");
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e5) {
                    y0.k("Could not find file for Clearcut");
                }
            }
        }
    }

    /* renamed from: f */
    private final String m4987f(zzui zzuiVar) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f9071b.q(), Long.valueOf(C1407r.m8913k().m8245c()), Integer.valueOf(zzuiVar.zza()), Base64.encodeToString(this.f9071b.m().A(), 3));
        }
        return format;
    }

    /* renamed from: b */
    public final void m4991b(zzui zzuiVar) {
        synchronized (this) {
            if (this.f9072c) {
                if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7289M2)).booleanValue()) {
                    m4988e(zzuiVar);
                } else {
                    m4989d(zzuiVar);
                }
            }
        }
    }

    /* renamed from: c */
    public final void m4990c(vv2 vv2Var) {
        synchronized (this) {
            if (this.f9072c) {
                try {
                    vv2Var.m5177a(this.f9071b);
                } catch (NullPointerException e) {
                    C1407r.m8916h().m4590g(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }
}
