package com.google.android.gms.tagmanager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzo;
import com.google.android.gms.internal.measurement.zzrs;
import com.google.android.gms.internal.measurement.zzsd;
import com.google.android.gms.internal.measurement.zzse;
import com.google.android.gms.internal.measurement.zzsf;
import com.google.android.gms.internal.measurement.zzzg;
import com.google.android.gms.tagmanager.zzeh;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzer.class */
final class zzer implements Runnable {
    private final String zzazf;
    private volatile String zzbaf;
    private final zzse zzbee;
    private final String zzbef;
    private zzdh<zzo> zzbeg;
    private volatile zzal zzbeh;
    private volatile String zzbei;
    private final Context zzri;

    @VisibleForTesting
    private zzer(Context context, String str, zzse zzseVar, zzal zzalVar) {
        this.zzri = context;
        this.zzbee = zzseVar;
        this.zzazf = str;
        this.zzbeh = zzalVar;
        String valueOf = String.valueOf("/r?id=");
        String valueOf2 = String.valueOf(str);
        this.zzbef = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        this.zzbaf = this.zzbef;
        this.zzbei = null;
    }

    public zzer(Context context, String str, zzal zzalVar) {
        this(context, str, new zzse(), zzalVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        if (this.zzbeg == null) {
            throw new IllegalStateException("callback must be set before execute");
        }
        this.zzbeg.zzno();
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.zzri.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzdi.m328v("...no network connectivity");
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            this.zzbeg.zzt(zzcz.zzbcu);
            return;
        }
        zzdi.m328v("Start loading resource from network ...");
        String zznv = this.zzbeh.zznv();
        String str = this.zzbaf;
        StringBuilder sb = new StringBuilder(String.valueOf(zznv).length() + 12 + String.valueOf(str).length());
        sb.append(zznv);
        sb.append(str);
        sb.append("&v=a65833898");
        String sb2 = sb.toString();
        String str2 = sb2;
        if (this.zzbei != null) {
            str2 = sb2;
            if (!this.zzbei.trim().equals("")) {
                String valueOf = String.valueOf(sb2);
                String str3 = this.zzbei;
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf).length() + 4 + String.valueOf(str3).length());
                sb3.append(valueOf);
                sb3.append("&pv=");
                sb3.append(str3);
                str2 = sb3.toString();
            }
        }
        String str4 = str2;
        if (zzeh.zzpc().zzpd().equals(zzeh.zza.CONTAINER_DEBUG)) {
            String valueOf2 = String.valueOf(str2);
            String valueOf3 = String.valueOf("&gtm_debug=x");
            str4 = valueOf3.length() != 0 ? valueOf2.concat(valueOf3) : new String(valueOf2);
        }
        zzsd zzsx = zzse.zzsx();
        InputStream inputStream = null;
        try {
            try {
                inputStream = zzsx.zzev(str4);
            } catch (zzsf e) {
                String valueOf4 = String.valueOf(str4);
                zzdi.zzab(valueOf4.length() != 0 ? "Error when loading resource for url: ".concat(valueOf4) : new String("Error when loading resource for url: "));
                this.zzbeg.zzt(zzcz.zzbcx);
            } catch (FileNotFoundException e2) {
                String str5 = this.zzazf;
                StringBuilder sb4 = new StringBuilder(String.valueOf(str4).length() + 79 + String.valueOf(str5).length());
                sb4.append("No data is retrieved from the given url: ");
                sb4.append(str4);
                sb4.append(". Make sure container_id: ");
                sb4.append(str5);
                sb4.append(" is correct.");
                zzdi.zzab(sb4.toString());
                this.zzbeg.zzt(zzcz.zzbcw);
                zzsx.close();
                return;
            } catch (IOException e3) {
                String message = e3.getMessage();
                StringBuilder sb5 = new StringBuilder(String.valueOf(str4).length() + 40 + String.valueOf(message).length());
                sb5.append("Error when loading resources from url: ");
                sb5.append(str4);
                sb5.append(" ");
                sb5.append(message);
                zzdi.zzb(sb5.toString(), e3);
                this.zzbeg.zzt(zzcz.zzbcv);
                zzsx.close();
                return;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzrs.zza(inputStream, byteArrayOutputStream);
                zzo zzoVar = (zzo) zzzg.zza(new zzo(), byteArrayOutputStream.toByteArray());
                String valueOf5 = String.valueOf(zzoVar);
                StringBuilder sb6 = new StringBuilder(String.valueOf(valueOf5).length() + 43);
                sb6.append("Successfully loaded supplemented resource: ");
                sb6.append(valueOf5);
                zzdi.m328v(sb6.toString());
                if (zzoVar.zzqg == null && zzoVar.zzqf.length == 0) {
                    String valueOf6 = String.valueOf(this.zzazf);
                    zzdi.m328v(valueOf6.length() != 0 ? "No change for container: ".concat(valueOf6) : new String("No change for container: "));
                }
                this.zzbeg.onSuccess(zzoVar);
                zzsx.close();
                zzdi.m328v("Load resource from network finished.");
            } catch (IOException e4) {
                String message2 = e4.getMessage();
                StringBuilder sb7 = new StringBuilder(String.valueOf(str4).length() + 51 + String.valueOf(message2).length());
                sb7.append("Error when parsing downloaded resources from url: ");
                sb7.append(str4);
                sb7.append(" ");
                sb7.append(message2);
                zzdi.zzb(sb7.toString(), e4);
                this.zzbeg.zzt(zzcz.zzbcw);
                zzsx.close();
            }
        } catch (Throwable th) {
            zzsx.close();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzdh<zzo> zzdhVar) {
        this.zzbeg = zzdhVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzdc(String str) {
        if (str == null) {
            this.zzbaf = this.zzbef;
            return;
        }
        String valueOf = String.valueOf(str);
        zzdi.zzdj(valueOf.length() != 0 ? "Setting CTFE URL path: ".concat(valueOf) : new String("Setting CTFE URL path: "));
        this.zzbaf = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzdu(String str) {
        String valueOf = String.valueOf(str);
        zzdi.zzdj(valueOf.length() != 0 ? "Setting previous container version: ".concat(valueOf) : new String("Setting previous container version: "));
        this.zzbei = str;
    }
}
