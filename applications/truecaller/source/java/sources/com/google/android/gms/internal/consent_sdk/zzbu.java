package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzbu.class */
public final class zzbu {
    public static final int zza = 1;
    public static final int zzb = 2;
    public static final int zzc = 3;
    public static final int zzd = 1;
    public static final int zze = 2;
    public static final int zzf = 3;
    public static final int zzg = 1;
    public static final int zzh = 2;
    public static final int zzi = 3;
    public static final int zzj = 4;
    public static final int zzk = 5;
    public static final int zzl = 6;
    public static final int zzm = 7;
    public static final int zzn = 8;
    private static final /* synthetic */ int[] zzo = {1, 2, 3};
    private static final /* synthetic */ int[] zzp = {1, 2, 3};
    private static final /* synthetic */ int[] zzq = {1, 2, 3, 4, 5, 6, 7, 8};

    public static int zza(JsonReader jsonReader) throws IOException {
        String nextString = jsonReader.nextString();
        nextString.hashCode();
        boolean z = true;
        switch (nextString.hashCode()) {
            case 64208429:
                if (nextString.equals("CLEAR")) {
                    z = false;
                    break;
                }
                break;
            case 82862015:
                if (nextString.equals("WRITE")) {
                    z = true;
                    break;
                }
                break;
            case 1856333582:
                if (nextString.equals("UNKNOWN_ACTION_TYPE")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return zzf;
            case true:
                return zze;
            case true:
                return zzd;
            default:
                throw new IOException(nextString.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(nextString) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "));
        }
    }

    public static void zza(int i, JsonWriter jsonWriter) throws IOException {
        if (i != 0) {
            int i2 = zzbq.zza[i - 1];
            if (i2 == 1) {
                jsonWriter.value("UNKNOWN");
                return;
            } else if (i2 == 2) {
                jsonWriter.value("ANDROID");
                return;
            } else if (i2 != 3) {
                return;
            } else {
                jsonWriter.value("IOS");
                return;
            }
        }
        throw null;
    }

    public static int[] zza() {
        return (int[]) zzo.clone();
    }

    public static int zzb(JsonReader jsonReader) throws IOException {
        String nextString = jsonReader.nextString();
        nextString.hashCode();
        boolean z = true;
        switch (nextString.hashCode()) {
            case -2058725357:
                if (nextString.equals("CONSENT_SIGNAL_COLLECT_CONSENT")) {
                    z = false;
                    break;
                }
                break;
            case -1969035850:
                if (nextString.equals("CONSENT_SIGNAL_ERROR")) {
                    z = true;
                    break;
                }
                break;
            case -1263695752:
                if (nextString.equals("CONSENT_SIGNAL_UNKNOWN")) {
                    z = true;
                    break;
                }
                break;
            case -954325659:
                if (nextString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                    z = true;
                    break;
                }
                break;
            case -918677260:
                if (nextString.equals("CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION")) {
                    z = true;
                    break;
                }
                break;
            case 429411856:
                if (nextString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                    z = true;
                    break;
                }
                break;
            case 467888915:
                if (nextString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                    z = true;
                    break;
                }
                break;
            case 1725474845:
                if (nextString.equals("CONSENT_SIGNAL_NOT_REQUIRED")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return zzk;
            case true:
                return zzm;
            case true:
                return zzg;
            case true:
                return zzi;
            case true:
                return zzn;
            case true:
                return zzj;
            case true:
                return zzh;
            case true:
                return zzl;
            default:
                throw new IOException(nextString.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "));
        }
    }

    public static int[] zzb() {
        return (int[]) zzp.clone();
    }

    public static int[] zzc() {
        return (int[]) zzq.clone();
    }
}
