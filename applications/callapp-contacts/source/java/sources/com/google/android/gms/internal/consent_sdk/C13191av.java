package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import android.util.JsonWriter;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.consent_sdk.av */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/av.class */
public final class C13191av {

    /* renamed from: a */
    public static final int f50342a = 1;

    /* renamed from: b */
    public static final int f50343b = 2;

    /* renamed from: c */
    public static final int f50344c = 3;

    /* renamed from: d */
    public static final int f50345d = 1;

    /* renamed from: e */
    public static final int f50346e = 2;

    /* renamed from: f */
    public static final int f50347f = 3;

    /* renamed from: g */
    public static final int f50348g = 1;

    /* renamed from: h */
    public static final int f50349h = 2;

    /* renamed from: i */
    public static final int f50350i = 3;

    /* renamed from: j */
    public static final int f50351j = 4;

    /* renamed from: k */
    public static final int f50352k = 5;

    /* renamed from: l */
    public static final int f50353l = 6;

    /* renamed from: m */
    public static final int f50354m = 7;

    /* renamed from: n */
    public static final int f50355n = 8;

    /* renamed from: o */
    private static final /* synthetic */ int[] f50356o = {1, 2, 3};

    /* renamed from: p */
    private static final /* synthetic */ int[] f50357p = {1, 2, 3};

    /* renamed from: q */
    private static final /* synthetic */ int[] f50358q = {1, 2, 3, 4, 5, 6, 7, 8};

    /* renamed from: a */
    public static int m13576a(JsonReader jsonReader) throws IOException {
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
                return f50347f;
            case true:
                return f50346e;
            case true:
                return f50345d;
            default:
                String valueOf = String.valueOf(nextString);
                throw new IOException(valueOf.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(valueOf) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "));
        }
    }

    /* renamed from: a */
    public static void m13577a(int i, JsonWriter jsonWriter) throws IOException {
        if (i != 0) {
            int i2 = C13187ar.f50333a[i - 1];
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

    /* renamed from: a */
    public static int[] m13578a() {
        return (int[]) f50356o.clone();
    }

    /* renamed from: b */
    public static int m13574b(JsonReader jsonReader) throws IOException {
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
                return f50352k;
            case true:
                return f50354m;
            case true:
                return f50348g;
            case true:
                return f50350i;
            case true:
                return f50355n;
            case true:
                return f50351j;
            case true:
                return f50349h;
            case true:
                return f50353l;
            default:
                String valueOf = String.valueOf(nextString);
                throw new IOException(valueOf.length() != 0 ? "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: ".concat(valueOf) : new String("Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "));
        }
    }

    /* renamed from: b */
    public static int[] m13575b() {
        return (int[]) f50357p.clone();
    }

    /* renamed from: c */
    public static int[] m13573c() {
        return (int[]) f50358q.clone();
    }
}
