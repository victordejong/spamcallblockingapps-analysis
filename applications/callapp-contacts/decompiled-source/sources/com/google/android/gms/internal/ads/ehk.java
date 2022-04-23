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

    /* renamed from: a  reason: collision with root package name */
    private final ehq f27844a;

    /* renamed from: b  reason: collision with root package name */
    private final eht.n.a f27845b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f27846c;

    public ehk() {
        this.f27845b = eht.n.a();
        this.f27846c = false;
        this.f27844a = new ehq();
    }

    public ehk(ehq ehqVar) {
        this.f27845b = eht.n.a();
        this.f27844a = ehqVar;
        this.f27846c = ((Boolean) ekb.e().a(aq.cN)).booleanValue();
    }

    private static List<Long> a() {
        List<String> b2 = aq.b();
        ArrayList arrayList = new ArrayList();
        for (String str : b2) {
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

    private final void b(ehn.a.b bVar) {
        synchronized (this) {
            this.f27845b.g().a(a());
            ehu a2 = this.f27844a.a(((eht.n) ((dnh) this.f27845b.f())).g());
            a2.f27853b = bVar.zzv();
            a2.a();
            String valueOf = String.valueOf(Integer.toString(bVar.zzv(), 10));
            zzd.zzed(valueOf.length() != 0 ? "Logging Event with event code : ".concat(valueOf) : new String("Logging Event with event code : "));
        }
    }

    private final void c(ehn.a.b bVar) {
        synchronized (this) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(externalStorageDirectory, "clearcut_events.txt"), true);
                    try {
                        try {
                            fileOutputStream.write(d(bVar).getBytes());
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
    }

    private final String d(ehn.a.b bVar) {
        String format;
        synchronized (this) {
            format = String.format("id=%s,timestamp=%s,event=%s,data=%s\n", this.f27845b.a(), Long.valueOf(zzr.zzlc().b()), Integer.valueOf(bVar.zzv()), Base64.encodeToString(((eht.n) ((dnh) this.f27845b.f())).g(), 3));
        }
        return format;
    }

    public final void a(ehj ehjVar) {
        synchronized (this) {
            if (this.f27846c) {
                try {
                    ehjVar.a(this.f27845b);
                } catch (NullPointerException e) {
                    zzr.zzkz().a(e, "AdMobClearcutLogger.modify");
                }
            }
        }
    }

    public final void a(ehn.a.b bVar) {
        synchronized (this) {
            if (this.f27846c) {
                if (((Boolean) ekb.e().a(aq.cO)).booleanValue()) {
                    c(bVar);
                } else {
                    b(bVar);
                }
            }
        }
    }
}
