package com.google.android.gms.internal.firebase_remote_config;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.firebase.perf.FirebasePerformance;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzac.class */
public final class zzac {
    private final int statusCode;
    private final zzy zzag;
    private int zzbf;
    private boolean zzbg;
    private InputStream zzbr;
    private final String zzbs;
    private final String zzbt;
    private zzai zzbu;
    private final String zzbv;
    private final zzab zzbw;
    private boolean zzbx;

    public zzac(zzab zzabVar, zzai zzaiVar) {
        StringBuilder sb;
        this.zzbw = zzabVar;
        this.zzbf = zzabVar.zzv();
        this.zzbg = zzabVar.zzw();
        this.zzbu = zzaiVar;
        this.zzbs = zzaiVar.getContentEncoding();
        int statusCode = zzaiVar.getStatusCode();
        this.statusCode = statusCode < 0 ? 0 : statusCode;
        String reasonPhrase = zzaiVar.getReasonPhrase();
        this.zzbv = reasonPhrase;
        Logger logger = zzag.zzbz;
        boolean z = false;
        if (this.zzbg) {
            z = false;
            if (logger.isLoggable(Level.CONFIG)) {
                z = true;
            }
        }
        if (z) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------");
            sb.append(zzcl.zzgg);
            String zzag = zzaiVar.zzag();
            if (zzag != null) {
                sb.append(zzag);
            } else {
                sb.append(this.statusCode);
                if (reasonPhrase != null) {
                    sb.append(' ');
                    sb.append(reasonPhrase);
                }
            }
            sb.append(zzcl.zzgg);
        } else {
            sb = null;
        }
        zzabVar.zzy().zza(zzaiVar, z ? sb : null);
        String contentType = zzaiVar.getContentType();
        String contentType2 = contentType == null ? zzabVar.zzy().getContentType() : contentType;
        this.zzbt = contentType2;
        this.zzag = contentType2 == null ? null : new zzy(contentType2);
        if (z) {
            logger.logp(Level.CONFIG, "com.google.api.client.http.HttpResponse", "<init>", sb.toString());
        }
    }

    private final Charset zzaf() {
        zzy zzyVar = this.zzag;
        return (zzyVar == null || zzyVar.zzr() == null) ? zzbo.ISO_8859_1 : this.zzag.zzr();
    }

    public final void disconnect() {
        ignore();
        this.zzbu.disconnect();
    }

    public final InputStream getContent() {
        if (!this.zzbx) {
            InputStream content = this.zzbu.getContent();
            if (content != null) {
                InputStream inputStream = content;
                InputStream inputStream2 = content;
                try {
                    String str = this.zzbs;
                    InputStream inputStream3 = content;
                    if (str != null) {
                        inputStream3 = content;
                        if (str.contains("gzip")) {
                            inputStream3 = new GZIPInputStream(content);
                        }
                    }
                    InputStream inputStream4 = inputStream3;
                    Logger logger = zzag.zzbz;
                    InputStream inputStream5 = inputStream3;
                    if (this.zzbg) {
                        inputStream5 = inputStream3;
                        if (logger.isLoggable(Level.CONFIG)) {
                            InputStream inputStream6 = inputStream3;
                            InputStream inputStream7 = inputStream3;
                            inputStream5 = new zzce(inputStream3, logger, Level.CONFIG, this.zzbf);
                        }
                    }
                    inputStream = inputStream5;
                    inputStream2 = inputStream5;
                    this.zzbr = inputStream5;
                } catch (EOFException e) {
                    inputStream2.close();
                } catch (Throwable th) {
                    inputStream.close();
                    throw th;
                }
            }
            this.zzbx = true;
        }
        return this.zzbr;
    }

    public final String getContentType() {
        return this.zzbt;
    }

    public final int getStatusCode() {
        return this.statusCode;
    }

    public final String getStatusMessage() {
        return this.zzbv;
    }

    public final void ignore() {
        InputStream content = getContent();
        if (content != null) {
            content.close();
        }
    }

    public final <T> T zza(Class<T> cls) {
        int i = this.statusCode;
        boolean z = true;
        if (this.zzbw.getRequestMethod().equals(FirebasePerformance.HttpMethod.HEAD) || i / 100 == 1 || i == 204 || i == 304) {
            ignore();
            z = false;
        }
        if (!z) {
            return null;
        }
        return (T) this.zzbw.zzaa().zza(getContent(), zzaf(), cls);
    }

    public final boolean zzad() {
        int i = this.statusCode;
        return i >= 200 && i < 300;
    }

    /* JADX WARN: Finally extract failed */
    public final String zzae() {
        InputStream content = getContent();
        if (content == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            zzdt.checkNotNull(content);
            zzdt.checkNotNull(byteArrayOutputStream);
            byte[] bArr = new byte[CodedOutputStream.DEFAULT_BUFFER_SIZE];
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    content.close();
                    return byteArrayOutputStream.toString(zzaf().name());
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (Throwable th) {
            content.close();
            throw th;
        }
    }

    public final zzw zzx() {
        return this.zzbw.zzy();
    }
}
