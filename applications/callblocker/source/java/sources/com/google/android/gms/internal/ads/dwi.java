package com.google.android.gms.internal.ads;

import android.os.Environment;
import android.util.Base64;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.internal.ads.dwk;
import com.google.android.gms.internal.ads.dwv;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dwi.class */
public final class dwi {

    /* renamed from: a */
    private final dwn f15881a;
    @GuardedBy("this")

    /* renamed from: b */
    private final dwv.C3068n.C3069a f15882b;

    /* renamed from: c */
    private final boolean f15883c;

    private dwi() {
        this.f15882b = dwv.C3068n.m8321d();
        this.f15883c = false;
        this.f15881a = new dwn();
    }

    public dwi(dwn dwnVar) {
        this.f15882b = dwv.C3068n.m8321d();
        this.f15881a = dwnVar;
        this.f15883c = ((Boolean) dyx.m8158e().m7876a(edi.f16481ch)).booleanValue();
    }

    /* renamed from: a */
    public static dwi m8443a() {
        return new dwi();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0051 -> B:10:0x0049). Please submit an issue!!! */
    /* renamed from: b */
    private static List<Long> m8440b() {
        List<String> m7864b = edi.m7864b();
        ArrayList arrayList = new ArrayList();
        for (String str : m7864b) {
            for (String str2 : str.split(",")) {
                try {
                    arrayList.add(Long.valueOf(str2));
                } catch (NumberFormatException e) {
                    C3556uu.m7052a("Experiment ID is not a number");
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private final void m8439b(dwk.C3018a.EnumC3019a enumC3019a) {
        synchronized (this) {
            this.f15882b.m8310h().m8312a(m8440b());
            this.f15881a.m8433a(((dwv.C3068n) ((dcw) this.f15882b.mo9987g())).mo9984l()).m8430b(enumC3019a.mo8208a()).m8432a();
            String valueOf = String.valueOf(Integer.toString(enumC3019a.mo8208a(), 10));
            C3556uu.m7052a(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.io.FileOutputStream] */
    /* renamed from: c */
    private final void m8438c(dwk.C3018a.EnumC3019a enumC3019a) {
        synchronized (this) {
            ?? externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != 0) {
                try {
                    try {
                        externalStorageDirectory = new FileOutputStream(new File((File) externalStorageDirectory, "clearcut_events.txt"), true);
                        try {
                            externalStorageDirectory.write(m8437d(enumC3019a).getBytes());
                            try {
                                externalStorageDirectory.close();
                            } catch (IOException e) {
                                C3556uu.m7052a("Could not close Clearcut output stream.");
                            }
                        } catch (IOException e2) {
                            C3556uu.m7052a("Could not write Clearcut to file.");
                            try {
                                externalStorageDirectory.close();
                            } catch (IOException e3) {
                                C3556uu.m7052a("Could not close Clearcut output stream.");
                            }
                        }
                    } finally {
                    }
                } catch (FileNotFoundException e4) {
                    C3556uu.m7052a("Could not find file for Clearcut");
                }
            }
        }
    }

    /* renamed from: d */
    private final String m8437d(dwk.C3018a.EnumC3019a enumC3019a) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f15882b.m8318a(), Long.valueOf(C2341q.m14737j().mo13861b()), Integer.valueOf(enumC3019a.mo8208a()), Base64.encodeToString(((dwv.C3068n) ((dcw) this.f15882b.mo9987g())).mo9984l(), 3));
        }
        return format;
    }

    /* renamed from: a */
    public final void m8442a(dwk.C3018a.EnumC3019a enumC3019a) {
        synchronized (this) {
            if (this.f15883c) {
                if (((Boolean) dyx.m8158e().m7876a(edi.f16482ci)).booleanValue()) {
                    m8438c(enumC3019a);
                } else {
                    m8439b(enumC3019a);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8441a(dwl dwlVar) {
        synchronized (this) {
            if (this.f15883c) {
                try {
                    dwlVar.mo8434a(this.f15882b);
                } catch (NullPointerException e) {
                    C2341q.m14740g().m7095a(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }
}
