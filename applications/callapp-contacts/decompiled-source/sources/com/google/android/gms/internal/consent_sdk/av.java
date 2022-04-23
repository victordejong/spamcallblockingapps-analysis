package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/av.class */
public final class av {

    /* renamed from: a  reason: collision with root package name */
    public static final int f28726a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f28727b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f28728c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f28729d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public static final int g = 1;
    public static final int h = 2;
    public static final int i = 3;
    public static final int j = 4;
    public static final int k = 5;
    public static final int l = 6;
    public static final int m = 7;
    public static final int n = 8;
    private static final /* synthetic */ int[] o = {1, 2, 3};
    private static final /* synthetic */ int[] p = {1, 2, 3};
    private static final /* synthetic */ int[] q = {1, 2, 3, 4, 5, 6, 7, 8};

    public static int a(JsonReader jsonReader) throws IOException {
        String nextString = jsonReader.nextString();
        nextString.hashCode();
        char c2 = 65535;
        switch (nextString.hashCode()) {
            case 64208429:
                if (nextString.equals("CLEAR")) {
                    c2 = 0;
                    break;
                }
                break;
            case 82862015:
                if (nextString.equals("WRITE")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1856333582:
                if (nextString.equals("UNKNOWN_ACTION_TYPE")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return f;
            case 1:
                return e;
            case 2:
                return f28729d;
            default:
                String valueOf = String.valueOf(nextString);
                throw new IOException(valueOf.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(valueOf) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "));
        }
    }

    public static void a(int i2, JsonWriter jsonWriter) throws IOException {
        if (i2 != 0) {
            int i3 = ar.f28717a[i2 - 1];
            if (i3 == 1) {
                jsonWriter.value("UNKNOWN");
            } else if (i3 == 2) {
                jsonWriter.value("ANDROID");
            } else if (i3 == 3) {
                jsonWriter.value("IOS");
            }
        } else {
            throw null;
        }
    }

    public static int[] a() {
        return (int[]) o.clone();
    }

    public static int b(JsonReader jsonReader) throws IOException {
        String nextString = jsonReader.nextString();
        nextString.hashCode();
        char c2 = 65535;
        switch (nextString.hashCode()) {
            case -2058725357:
                if (nextString.equals("CONSENT_SIGNAL_COLLECT_CONSENT")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1969035850:
                if (nextString.equals("CONSENT_SIGNAL_ERROR")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1263695752:
                if (nextString.equals("CONSENT_SIGNAL_UNKNOWN")) {
                    c2 = 2;
                    break;
                }
                break;
            case -954325659:
                if (nextString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                    c2 = 3;
                    break;
                }
                break;
            case -918677260:
                if (nextString.equals("CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION")) {
                    c2 = 4;
                    break;
                }
                break;
            case 429411856:
                if (nextString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                    c2 = 5;
                    break;
                }
                break;
            case 467888915:
                if (nextString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                    c2 = 6;
                    break;
                }
                break;
            case 1725474845:
                if (nextString.equals("CONSENT_SIGNAL_NOT_REQUIRED")) {
                    c2 = 7;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return k;
            case 1:
                return m;
            case 2:
                return g;
            case 3:
                return i;
            case 4:
                return n;
            case 5:
                return j;
            case 6:
                return h;
            case 7:
                return l;
            default:
                String valueOf = String.valueOf(nextString);
                throw new IOException(valueOf.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: ".concat(valueOf) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "));
        }
    }

    public static int[] b() {
        return (int[]) p.clone();
    }

    public static int[] c() {
        return (int[]) q.clone();
    }
}
