package com.inmobi.commons.core.network;

import com.inmobi.commons.core.network.NetworkError;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8407d;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.commons.core.network.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/b.class */
public class C8382b {

    /* renamed from: a */
    public static final String f32595a = "com.inmobi.commons.core.network.b";

    /* renamed from: b */
    public C8383c f32596b;

    /* renamed from: c */
    public HttpURLConnection f32597c;

    public C8382b(C8383c cVar) {
        this.f32596b = cVar;
    }

    /* renamed from: a */
    public static String m5747a(String str) {
        String str2 = null;
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                str2 = null;
                if (jSONObject.has("errorMessage")) {
                    str2 = jSONObject.getString("errorMessage");
                }
            } catch (JSONException e) {
                str2 = null;
            }
        }
        return str2;
    }

    /* renamed from: a */
    private void m5748a(C8384d dVar, boolean z) throws IOException {
        if (!(this.f32596b.f32616u != -1) || this.f32597c.getContentLength() <= this.f32596b.f32616u) {
            byte[] a = C8407d.m5648a(z ? this.f32597c.getErrorStream() : this.f32597c.getInputStream());
            if (a.length != 0) {
                byte[] bArr = a;
                if (this.f32596b.mo5742b()) {
                    byte[] a2 = this.f32596b.m5743a(a);
                    bArr = a2;
                    if (a2 == null) {
                        dVar.f32624b = new NetworkError(NetworkError.ErrorCode.INVALID_ENCRYPTED_RESPONSE_RECEIVED, "Unable to decrypt the server response.");
                        bArr = a2;
                    }
                }
                byte[] bArr2 = bArr;
                if (bArr != null) {
                    bArr2 = bArr;
                    if (this.f32596b.f32617v) {
                        byte[] a3 = C8407d.m5643a(bArr);
                        bArr2 = a3;
                        if (a3 == null) {
                            dVar.f32624b = new NetworkError(NetworkError.ErrorCode.GZIP_DECOMPRESSION_FAILED, "Failed to uncompress gzip response");
                            bArr2 = a3;
                        }
                    }
                }
                if (bArr2 != null) {
                    dVar.m5730b(bArr2);
                }
            }
            dVar.f32626d = this.f32597c.getHeaderFields();
            return;
        }
        dVar.f32624b = new NetworkError(NetworkError.ErrorCode.RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT, "Response size greater than specified max response size");
    }

    /* renamed from: a */
    private void m5746a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setConnectTimeout(this.f32596b.f32612q);
        httpURLConnection.setReadTimeout(this.f32596b.f32613r);
        httpURLConnection.setUseCaches(false);
        Map<String, String> d = this.f32596b.m5738d();
        if (d != null) {
            for (String str : d.keySet()) {
                httpURLConnection.setRequestProperty(str, d.get(str));
            }
        }
        String str2 = this.f32596b.f32610o;
        httpURLConnection.setRequestMethod(str2);
        if (!"GET".equals(str2)) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
        }
    }

    /* renamed from: a */
    public C8384d mo5727a() {
        C8384d dVar;
        Throwable th;
        BufferedWriter bufferedWriter;
        this.f32596b.mo5745a();
        if (this.f32596b.f32618w != 1) {
            C8384d dVar2 = new C8384d();
            dVar2.f32624b = new NetworkError(NetworkError.ErrorCode.GDPR_COMPLIANCE_ENFORCED, "Network Request dropped as current request is not GDPR compliant.");
            return dVar2;
        }
        if (C8407d.m5650a()) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f32596b.m5736e()).openConnection();
                m5746a(httpURLConnection);
                this.f32597c = httpURLConnection;
                if (!this.f32596b.f32614s) {
                    httpURLConnection.setInstanceFollowRedirects(false);
                }
                if ("POST".equals(this.f32596b.f32610o)) {
                    String f = this.f32596b.m5735f();
                    this.f32597c.setRequestProperty("Content-Length", Integer.toString(f.length()));
                    this.f32597c.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    BufferedWriter bufferedWriter2 = null;
                    try {
                        bufferedWriter = new BufferedWriter(new OutputStreamWriter(this.f32597c.getOutputStream()));
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        bufferedWriter.write(f);
                        C8407d.m5649a(bufferedWriter);
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedWriter2 = bufferedWriter;
                        C8407d.m5649a(bufferedWriter2);
                        throw th;
                    }
                }
                dVar = mo5726b();
            } catch (IOException e) {
                dVar = new C8384d();
                dVar.f32624b = new NetworkError(NetworkError.ErrorCode.NETWORK_IO_ERROR, e.getLocalizedMessage());
            } catch (Exception e2) {
                dVar = new C8384d();
                dVar.f32624b = new NetworkError(NetworkError.ErrorCode.UNKNOWN_ERROR, e2.getLocalizedMessage());
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", "GenericException");
                    hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e2.getMessage());
                    C8366b.m5794a();
                    C8366b.m5789a("root", "ExceptionCaught", hashMap);
                } catch (Exception e3) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e2.getMessage());
                    sb.append(")");
                }
            }
        } else {
            dVar = new C8384d();
            dVar.f32624b = new NetworkError(NetworkError.ErrorCode.NETWORK_UNAVAILABLE_ERROR, "Network not reachable currently. Please try again.");
        }
        return dVar;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public C8384d mo5726b() {
        C8384d dVar = new C8384d();
        try {
            int responseCode = this.f32597c.getResponseCode();
            StringBuilder sb = new StringBuilder();
            sb.append(this.f32596b.f32611p);
            sb.append("Response code: ");
            sb.append(responseCode);
            try {
                if (responseCode == 200) {
                    m5748a(dVar, false);
                } else {
                    NetworkError.ErrorCode fromValue = NetworkError.ErrorCode.fromValue(responseCode);
                    if (fromValue == NetworkError.ErrorCode.BAD_REQUEST) {
                        m5748a(dVar, true);
                        dVar.f32624b = new NetworkError(fromValue, m5747a(dVar.m5731b()));
                    } else {
                        NetworkError.ErrorCode errorCode = fromValue;
                        if (fromValue == null) {
                            errorCode = NetworkError.ErrorCode.UNKNOWN_ERROR;
                        }
                        dVar.f32624b = new NetworkError(errorCode, "HTTP:" + responseCode);
                        dVar.f32626d = this.f32597c.getHeaderFields();
                    }
                }
                this.f32597c.disconnect();
            } catch (Throwable th) {
                this.f32597c.disconnect();
                throw th;
            }
        } catch (SocketTimeoutException e) {
            NetworkError.ErrorCode errorCode2 = NetworkError.ErrorCode.HTTP_GATEWAY_TIMEOUT;
            dVar.f32624b = new NetworkError(errorCode2, errorCode2.toString());
        } catch (IOException e2) {
            NetworkError.ErrorCode errorCode3 = NetworkError.ErrorCode.NETWORK_IO_ERROR;
            dVar.f32624b = new NetworkError(errorCode3, errorCode3.toString());
        } catch (Exception e3) {
            NetworkError.ErrorCode errorCode4 = NetworkError.ErrorCode.UNKNOWN_ERROR;
            dVar.f32624b = new NetworkError(errorCode4, errorCode4.toString());
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("type", "GenericException");
                hashMap.put(AvidVideoPlaybackListenerImpl.MESSAGE, e3.getMessage());
                C8366b.m5794a();
                C8366b.m5789a("root", "ExceptionCaught", hashMap);
            } catch (Exception e4) {
                StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                sb2.append(e3.getMessage());
                sb2.append(")");
            }
        } catch (OutOfMemoryError e5) {
            NetworkError.ErrorCode errorCode5 = NetworkError.ErrorCode.OUT_OF_MEMORY_ERROR;
            dVar.f32624b = new NetworkError(errorCode5, errorCode5.toString());
        }
        return dVar;
    }
}
