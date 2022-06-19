package com.google.firebase.perf.network;

import com.google.android.gms.internal.firebase-perf.zzam;
import com.google.android.gms.internal.firebase_perf.zzaz;
import com.google.firebase.perf.internal.zzf;
import java.io.IOException;
import org.apache.http.HttpHost;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfHttpClient.class */
public class FirebasePerfHttpClient {
    private FirebasePerfHttpClient() {
    }

    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) zza(httpClient, httpHost, httpRequest, responseHandler, new zzaz(), zzf.zzal());
    }

    public static <T> T execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) zza(httpClient, httpHost, httpRequest, responseHandler, httpContext, new zzaz(), zzf.zzal());
    }

    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler) {
        return (T) zza(httpClient, httpUriRequest, responseHandler, new zzaz(), zzf.zzal());
    }

    public static <T> T execute(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext) {
        return (T) zza(httpClient, httpUriRequest, responseHandler, httpContext, new zzaz(), zzf.zzal());
    }

    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest) {
        return zza(httpClient, httpHost, httpRequest, (com.google.android.gms.internal.firebase-perf.zzaz) new zzaz(), zzf.zzal());
    }

    public static HttpResponse execute(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        return zza(httpClient, httpHost, httpRequest, httpContext, (com.google.android.gms.internal.firebase-perf.zzaz) new zzaz(), zzf.zzal());
    }

    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest) {
        return zza(httpClient, httpUriRequest, new zzaz(), zzf.zzal());
    }

    public static HttpResponse execute(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext) {
        return zza(httpClient, httpUriRequest, httpContext, (com.google.android.gms.internal.firebase-perf.zzaz) new zzaz(), zzf.zzal());
    }

    private static <T> T zza(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            zzb.zza(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).zzb(httpRequest.getRequestLine().getMethod());
            Long zza = zzg.zza((HttpMessage) httpRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            return (T) httpClient.execute(httpHost, httpRequest, new zze(responseHandler, zzazVar, zzb));
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static <T> T zza(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext, zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            zzb.zza(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).zzb(httpRequest.getRequestLine().getMethod());
            Long zza = zzg.zza((HttpMessage) httpRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            return (T) httpClient.execute(httpHost, httpRequest, new zze(responseHandler, zzazVar, zzb), httpContext);
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static <T> T zza(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            zzb.zza(httpUriRequest.getURI().toString()).zzb(httpUriRequest.getMethod());
            Long zza = zzg.zza((HttpMessage) httpUriRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            return (T) httpClient.execute(httpUriRequest, new zze(responseHandler, zzazVar, zzb));
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static <T> T zza(HttpClient httpClient, HttpUriRequest httpUriRequest, ResponseHandler<T> responseHandler, HttpContext httpContext, zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            zzb.zza(httpUriRequest.getURI().toString()).zzb(httpUriRequest.getMethod());
            Long zza = zzg.zza((HttpMessage) httpUriRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            return (T) httpClient.execute(httpUriRequest, new zze(responseHandler, zzazVar, zzb), httpContext);
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static HttpResponse zza(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, com.google.android.gms.internal.firebase-perf.zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            zzb.zza(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).zzb(httpRequest.getRequestLine().getMethod());
            Long zza = zzg.zza((HttpMessage) httpRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest);
            zzb.zzh(zzazVar.zzby());
            zzb.zzc(execute.getStatusLine().getStatusCode());
            Long zza2 = zzg.zza((HttpMessage) execute);
            if (zza2 != null) {
                zzb.zzi(zza2.longValue());
            }
            String zza3 = zzg.zza(execute);
            if (zza3 != null) {
                zzb.zzc(zza3);
            }
            zzb.zzz();
            return execute;
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static HttpResponse zza(HttpClient httpClient, HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext, com.google.android.gms.internal.firebase-perf.zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            String valueOf = String.valueOf(httpHost.toURI());
            String valueOf2 = String.valueOf(httpRequest.getRequestLine().getUri());
            zzb.zza(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).zzb(httpRequest.getRequestLine().getMethod());
            Long zza = zzg.zza((HttpMessage) httpRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            HttpResponse execute = httpClient.execute(httpHost, httpRequest, httpContext);
            zzb.zzh(zzazVar.zzby());
            zzb.zzc(execute.getStatusLine().getStatusCode());
            Long zza2 = zzg.zza((HttpMessage) execute);
            if (zza2 != null) {
                zzb.zzi(zza2.longValue());
            }
            String zza3 = zzg.zza(execute);
            if (zza3 != null) {
                zzb.zzc(zza3);
            }
            zzb.zzz();
            return execute;
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static HttpResponse zza(HttpClient httpClient, HttpUriRequest httpUriRequest, com.google.android.gms.internal.firebase-perf.zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            zzb.zza(httpUriRequest.getURI().toString()).zzb(httpUriRequest.getMethod());
            Long zza = zzg.zza((HttpMessage) httpUriRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            HttpResponse execute = httpClient.execute(httpUriRequest);
            zzb.zzh(zzazVar.zzby());
            zzb.zzc(execute.getStatusLine().getStatusCode());
            Long zza2 = zzg.zza((HttpMessage) execute);
            if (zza2 != null) {
                zzb.zzi(zza2.longValue());
            }
            String zza3 = zzg.zza(execute);
            if (zza3 != null) {
                zzb.zzc(zza3);
            }
            zzb.zzz();
            return execute;
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }

    private static HttpResponse zza(HttpClient httpClient, HttpUriRequest httpUriRequest, HttpContext httpContext, com.google.android.gms.internal.firebase-perf.zzaz zzazVar, zzf zzfVar) {
        zzam zzb = com.google.android.gms.internal.firebase_perf.zzam.zzb(zzfVar);
        try {
            zzb.zza(httpUriRequest.getURI().toString()).zzb(httpUriRequest.getMethod());
            Long zza = zzg.zza((HttpMessage) httpUriRequest);
            if (zza != null) {
                zzb.zzd(zza.longValue());
            }
            zzazVar.reset();
            zzb.zze(zzazVar.zzbx());
            HttpResponse execute = httpClient.execute(httpUriRequest, httpContext);
            zzb.zzh(zzazVar.zzby());
            zzb.zzc(execute.getStatusLine().getStatusCode());
            Long zza2 = zzg.zza((HttpMessage) execute);
            if (zza2 != null) {
                zzb.zzi(zza2.longValue());
            }
            String zza3 = zzg.zza(execute);
            if (zza3 != null) {
                zzb.zzc(zza3);
            }
            zzb.zzz();
            return execute;
        } catch (IOException e) {
            zzb.zzh(zzazVar.zzby());
            zzg.zza(zzb);
            throw e;
        }
    }
}
