package com.google.android.gms.internal.firebase_remote_config;

import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzan.class */
public final class zzan extends zzp {
    private Object data;

    public zzan(Object obj) {
        super(zzam.MEDIA_TYPE);
        this.data = zzdt.checkNotNull(obj);
    }

    private static boolean zza(boolean z, Writer writer, String str, Object obj) {
        boolean z2 = z;
        if (obj != null) {
            if (zzbt.isNull(obj)) {
                z2 = z;
            } else {
                if (z) {
                    z = false;
                } else {
                    writer.write("&");
                }
                writer.write(str);
                String zzah = zzcs.zzah(obj instanceof Enum ? zzbz.zza((Enum) obj).getName() : obj.toString());
                z2 = z;
                if (zzah.length() != 0) {
                    writer.write("=");
                    writer.write(zzah);
                    z2 = z;
                }
            }
        }
        return z2;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzcm
    public final void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, zzo()));
        boolean z = true;
        for (Map.Entry<String, Object> entry : zzbt.zzf(this.data).entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String zzah = zzcs.zzah(entry.getKey());
                Class<?> cls = value.getClass();
                if ((value instanceof Iterable) || cls.isArray()) {
                    Iterator it = zzco.zzi(value).iterator();
                    boolean z2 = z;
                    while (true) {
                        boolean z3 = z2;
                        z = z3;
                        if (it.hasNext()) {
                            z2 = zza(z3, bufferedWriter, zzah, it.next());
                        }
                    }
                } else {
                    z = zza(z, bufferedWriter, zzah, value);
                }
            }
        }
        bufferedWriter.flush();
    }
}
