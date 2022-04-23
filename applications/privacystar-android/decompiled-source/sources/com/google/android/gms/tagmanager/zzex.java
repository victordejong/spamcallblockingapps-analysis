package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzl;
import com.google.android.gms.internal.measurement.zzrq;
import com.google.android.gms.internal.measurement.zzrs;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.internal.measurement.zzsa;
import com.google.android.gms.internal.measurement.zzzf;
import com.google.android.gms.internal.measurement.zzzg;
import com.google.android.gms.tagmanager.zzeh;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzex.class */
public final class zzex implements zzah {
    private final ExecutorService zzaea = Executors.newSingleThreadExecutor();
    private final String zzazf;
    private zzdh<zzrq> zzbeg;
    private final Context zzri;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzex(Context context, String str) {
        this.zzri = context;
        this.zzazf = str;
    }

    private static zzrw zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzda.zzdr(byteArrayOutputStream.toString("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            zzdi.zzdj("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException e2) {
            zzdi.zzab("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private static zzrw zze(byte[] bArr) {
        try {
            zzrw zza = zzrs.zza((zzl) zzzg.zza(new zzl(), bArr));
            if (zza != null) {
                zzdi.m328v("The container was successfully loaded from the resource (using binary file)");
            }
            return zza;
        } catch (zzsa e) {
            zzdi.zzab("The resource file is invalid. The container from the binary file is invalid");
            return null;
        } catch (zzzf e2) {
            zzdi.m329e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        }
    }

    @VisibleForTesting
    private final File zzpi() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.zzazf);
        return new File(this.zzri.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final void release() {
        synchronized (this) {
            this.zzaea.shutdown();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzrq zzrqVar) {
        this.zzaea.execute(new zzez(this, zzrqVar));
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzdh<zzrq> zzdhVar) {
        this.zzbeg = zzdhVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean zzb(zzrq zzrqVar) {
        File zzpi = zzpi();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzpi);
            try {
                try {
                    byte[] bArr = new byte[zzrqVar.zzvu()];
                    zzzg.zza(zzrqVar, bArr, 0, bArr.length);
                    fileOutputStream.write(bArr);
                    try {
                        fileOutputStream.close();
                        return true;
                    } catch (IOException e) {
                        zzdi.zzab("error closing stream for writing resource to disk");
                        return true;
                    }
                } catch (IOException e2) {
                    zzdi.zzab("Error writing resource to disk. Removing resource from disk.");
                    zzpi.delete();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException e3) {
                        zzdi.zzab("error closing stream for writing resource to disk");
                        return false;
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                    zzdi.zzab("error closing stream for writing resource to disk");
                }
                throw th;
            }
        } catch (FileNotFoundException e5) {
            zzdi.m329e("Error opening resource file for writing");
            return false;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zznp() {
        this.zzaea.execute(new zzey(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzph() {
        FileInputStream fileInputStream;
        zzrq zzrqVar;
        if (this.zzbeg == null) {
            throw new IllegalStateException("Callback must be set before execute");
        }
        this.zzbeg.zzno();
        zzdi.m328v("Attempting to load resource from disk");
        if ((zzeh.zzpc().zzpd() == zzeh.zza.CONTAINER || zzeh.zzpc().zzpd() == zzeh.zza.CONTAINER_DEBUG) && this.zzazf.equals(zzeh.zzpc().getContainerId())) {
            this.zzbeg.zzt(zzcz.zzbcu);
            return;
        }
        try {
            try {
                fileInputStream = new FileInputStream(zzpi());
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    zzrs.zza(fileInputStream, byteArrayOutputStream);
                    zzrqVar = (zzrq) zzzg.zza(new zzrq(), byteArrayOutputStream.toByteArray());
                } catch (IOException e) {
                    this.zzbeg.zzt(zzcz.zzbcv);
                    zzdi.zzab("Failed to read the resource from disk");
                    try {
                        fileInputStream.close();
                    } catch (IOException e2) {
                        zzdi.zzab("Error closing stream for reading resource from disk");
                    }
                } catch (IllegalArgumentException e3) {
                    this.zzbeg.zzt(zzcz.zzbcv);
                    zzdi.zzab("Failed to read the resource from disk. The resource is inconsistent");
                    try {
                        fileInputStream.close();
                    } catch (IOException e4) {
                        zzdi.zzab("Error closing stream for reading resource from disk");
                    }
                }
                if (zzrqVar.zzqg == null && zzrqVar.zzbpt == null) {
                    throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
                }
                this.zzbeg.onSuccess(zzrqVar);
                try {
                    fileInputStream.close();
                } catch (IOException e5) {
                    zzdi.zzab("Error closing stream for reading resource from disk");
                }
                zzdi.m328v("The Disk resource was successfully read.");
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (IOException e6) {
                    zzdi.zzab("Error closing stream for reading resource from disk");
                }
                throw th;
            }
        } catch (FileNotFoundException e7) {
            zzdi.zzdj("Failed to find the resource in the disk");
            this.zzbeg.zzt(zzcz.zzbcu);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final zzrw zzu(int i) {
        try {
            InputStream openRawResource = this.zzri.getResources().openRawResource(i);
            String resourceName = this.zzri.getResources().getResourceName(i);
            StringBuilder sb = new StringBuilder(String.valueOf(resourceName).length() + 66);
            sb.append("Attempting to load a container from the resource ID ");
            sb.append(i);
            sb.append(" (");
            sb.append(resourceName);
            sb.append(")");
            zzdi.m328v(sb.toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                zzrs.zza(openRawResource, byteArrayOutputStream);
                zzrw zza = zza(byteArrayOutputStream);
                if (zza == null) {
                    return zze(byteArrayOutputStream.toByteArray());
                }
                zzdi.m328v("The container was successfully loaded from the resource (using JSON file format)");
                return zza;
            } catch (IOException e) {
                String resourceName2 = this.zzri.getResources().getResourceName(i);
                StringBuilder sb2 = new StringBuilder(String.valueOf(resourceName2).length() + 67);
                sb2.append("Error reading the default container with resource ID ");
                sb2.append(i);
                sb2.append(" (");
                sb2.append(resourceName2);
                sb2.append(")");
                zzdi.zzab(sb2.toString());
                return null;
            }
        } catch (Resources.NotFoundException e2) {
            StringBuilder sb3 = new StringBuilder(98);
            sb3.append("Failed to load the container. No default container resource found with the resource ID ");
            sb3.append(i);
            zzdi.zzab(sb3.toString());
            return null;
        }
    }
}
