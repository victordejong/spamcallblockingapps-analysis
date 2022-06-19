package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.pm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pm.class */
public final class C6854pm {

    /* renamed from: a */
    private final C7002tm f28049a;

    /* renamed from: b */
    private final C6373co f28050b;

    /* renamed from: c */
    private final boolean f28051c;

    private C6854pm() {
        this.f28050b = C6410do.m15754F();
        this.f28051c = false;
        this.f28049a = new C7002tm();
    }

    public C6854pm(C7002tm c7002tm) {
        this.f28050b = C6410do.m15754F();
        this.f28049a = c7002tm;
        this.f28051c = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25762o3)).booleanValue();
    }

    /* renamed from: a */
    public static C6854pm m12219a() {
        return new C6854pm();
    }

    /* renamed from: d */
    private final void m12216d(int i) {
        synchronized (this) {
            C6373co c6373co = this.f28050b;
            c6373co.m16006t();
            List<String> m13767d = C6679kw.m13767d();
            ArrayList arrayList = new ArrayList();
            for (String str : m13767d) {
                for (String str2 : str.split(",")) {
                    try {
                        arrayList.add(Long.valueOf(str2));
                    } catch (NumberFormatException e) {
                        C5722o1.m17990k("Experiment ID is not a number");
                    }
                }
            }
            c6373co.m16007s(arrayList);
            C6928rm c6928rm = new C6928rm(this.f28049a, this.f28050b.m15512n().mo10723K(), null);
            int i2 = i - 1;
            c6928rm.m11381b(i2);
            c6928rm.m11382a();
            String valueOf = String.valueOf(Integer.toString(i2, 10));
            C5722o1.m17990k(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* renamed from: e */
    private final void m12215e(int i) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                try {
                    try {
                        fileOutputStream.write(m12214f(i).getBytes());
                        try {
                            fileOutputStream.close();
                        } catch (IOException e) {
                            C5722o1.m17990k("Could not close Clearcut output stream.");
                        }
                    } catch (IOException e2) {
                        C5722o1.m17990k("Could not write Clearcut to file.");
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            C5722o1.m17990k("Could not close Clearcut output stream.");
                        }
                    }
                } catch (Throwable th) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        C5722o1.m17990k("Could not close Clearcut output stream.");
                    }
                    throw th;
                }
            } catch (FileNotFoundException e5) {
                C5722o1.m17990k("Could not find file for Clearcut");
            }
        }
    }

    /* renamed from: f */
    private final String m12214f(int i) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f28050b.m16009q(), Long.valueOf(C5667s.m18153k().mo16806b()), Integer.valueOf(i - 1), Base64.encodeToString(this.f28050b.m15512n().mo10723K(), 3));
        }
        return format;
    }

    /* renamed from: b */
    public final void m12218b(AbstractC6817om abstractC6817om) {
        synchronized (this) {
            if (this.f28051c) {
                try {
                    abstractC6817om.mo8772a(this.f28050b);
                } catch (NullPointerException e) {
                    C5667s.m18156h().m12235k(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    /* renamed from: c */
    public final void m12217c(int i) {
        synchronized (this) {
            if (!this.f28051c) {
                return;
            }
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25770p3)).booleanValue()) {
                m12215e(i);
            } else {
                m12216d(i);
            }
        }
    }
}
