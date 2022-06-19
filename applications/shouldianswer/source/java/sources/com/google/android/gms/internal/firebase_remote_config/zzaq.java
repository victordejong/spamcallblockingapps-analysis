package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaq.class */
public final class zzaq extends zzai {
    private final int responseCode;
    private final String responseMessage;
    private final HttpURLConnection zzct;
    private final ArrayList<String> zzcu = new ArrayList<>();
    private final ArrayList<String> zzcv = new ArrayList<>();

    public zzaq(HttpURLConnection httpURLConnection) {
        this.zzct = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.responseCode = responseCode == -1 ? 0 : responseCode;
        this.responseMessage = httpURLConnection.getResponseMessage();
        ArrayList<String> arrayList = this.zzcu;
        ArrayList<String> arrayList2 = this.zzcv;
        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        arrayList.add(key);
                        arrayList2.add(str);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final void disconnect() {
        this.zzct.disconnect();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final InputStream getContent() {
        InputStream inputStream;
        try {
            inputStream = this.zzct.getInputStream();
        } catch (IOException e) {
            inputStream = this.zzct.getErrorStream();
        }
        if (inputStream == null) {
            return null;
        }
        return new zzat(this, inputStream);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String getContentEncoding() {
        return this.zzct.getContentEncoding();
    }

    public final long getContentLength() {
        String headerField = this.zzct.getHeaderField("Content-Length");
        if (headerField == null) {
            return -1L;
        }
        return Long.parseLong(headerField);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String getContentType() {
        return this.zzct.getHeaderField("Content-Type");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String getReasonPhrase() {
        return this.responseMessage;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final int getStatusCode() {
        return this.responseCode;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String zzag() {
        String headerField = this.zzct.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final int zzah() {
        return this.zzcu.size();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String zzc(int i) {
        return this.zzcu.get(i);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzai
    public final String zzd(int i) {
        return this.zzcv.get(i);
    }
}
