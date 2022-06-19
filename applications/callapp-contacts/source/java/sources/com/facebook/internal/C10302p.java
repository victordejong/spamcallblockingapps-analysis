package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b#\u0018�� 82\u00020\u0001:\u000289BÃ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\r0\r\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\u0006\u0010\u0002\u001a\u00020\u0003R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b!\u0010 R)\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\r0\r¢\u0006\b\n��\u001a\u0004\b\"\u0010#R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n��\u001a\u0004\b$\u0010%R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n��\u001a\u0004\b&\u0010'R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b(\u0010 R\u0011\u0010\u001a\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b)\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b*\u0010+R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b,\u0010 R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b-\u0010+R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b.\u0010+R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b/\u0010+R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b0\u00101R\u0011\u0010\u0012\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b2\u0010+R\u0011\u0010\u0013\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b3\u0010+R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b4\u00105R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b6\u0010+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0019\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b7\u0010 ¨\u0006:"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettings;", "", "supportsImplicitLogging", "", "nuxContent", "", "nuxEnabled", "sessionTimeoutInSeconds", "", "smartLoginOptions", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "dialogConfigurations", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "automaticLoggingEnabled", "errorClassification", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "smartLoginBookmarkIconURL", "smartLoginMenuIconURL", "iAPAutomaticLoggingEnabled", "codelessEventsEnabled", "eventBindings", "Lorg/json/JSONArray;", "sdkUpdateMessage", "trackUninstallEnabled", "monitorViaDialogEnabled", "rawAamRules", "suggestedEventsSetting", "restrictiveDataSetting", "(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAutomaticLoggingEnabled", "()Z", "getCodelessEventsEnabled", "getDialogConfigurations", "()Ljava/util/Map;", "getErrorClassification", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "getEventBindings", "()Lorg/json/JSONArray;", "getIAPAutomaticLoggingEnabled", "getMonitorViaDialogEnabled", "getNuxContent", "()Ljava/lang/String;", "getNuxEnabled", "getRawAamRules", "getRestrictiveDataSetting", "getSdkUpdateMessage", "getSessionTimeoutInSeconds", "()I", "getSmartLoginBookmarkIconURL", "getSmartLoginMenuIconURL", "getSmartLoginOptions", "()Ljava/util/EnumSet;", "getSuggestedEventsSetting", "getTrackUninstallEnabled", "Companion", "DialogFeatureConfig", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.p */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/p.class */
public final class C10302p {

    /* renamed from: m */
    public static final C10303a f33843m = new C10303a(null);

    /* renamed from: a */
    public final boolean f33844a;

    /* renamed from: b */
    public final int f33845b;

    /* renamed from: c */
    public final EnumSet<EnumC10211ad> f33846c;

    /* renamed from: d */
    public final boolean f33847d;

    /* renamed from: e */
    public final C10285h f33848e;

    /* renamed from: f */
    public final boolean f33849f;

    /* renamed from: g */
    public final boolean f33850g;

    /* renamed from: h */
    public final JSONArray f33851h;

    /* renamed from: i */
    final String f33852i;

    /* renamed from: j */
    public final String f33853j;

    /* renamed from: k */
    public final String f33854k;

    /* renamed from: l */
    public final String f33855l;

    /* renamed from: n */
    private final String f33856n;

    /* renamed from: o */
    private final boolean f33857o;

    /* renamed from: p */
    private final Map<String, Map<String, C10304b>> f33858p;

    /* renamed from: q */
    private final String f33859q;

    /* renamed from: r */
    private final String f33860r;

    /* renamed from: s */
    private final boolean f33861s;

    /* renamed from: t */
    private final boolean f33862t;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007¨\u0006\t"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettings$Companion;", "", "()V", "getDialogFeatureConfig", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "applicationId", "", "actionName", "featureName", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.p$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/p$a.class */
    public static final class C10303a {
        private C10303a() {
        }

        public /* synthetic */ C10303a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n\u0002\b\n\u0018�� \u00112\u00020\u0001:\u0001\u0011B+\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "", "dialogName", "", "featureName", "fallbackUrl", "Landroid/net/Uri;", "versionSpec", "", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V", "getDialogName", "()Ljava/lang/String;", "getFallbackUrl", "()Landroid/net/Uri;", "getFeatureName", "getVersionSpec", "()[I", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.p$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/p$b.class */
    public static final class C10304b {

        /* renamed from: c */
        public static final C10305a f33863c = new C10305a(null);

        /* renamed from: a */
        final String f33864a;

        /* renamed from: b */
        final String f33865b;

        /* renamed from: d */
        private final Uri f33866d;

        /* renamed from: e */
        private final int[] f33867e;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig$Companion;", "", "()V", "DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR", "", "DIALOG_CONFIG_NAME_KEY", "DIALOG_CONFIG_URL_KEY", "DIALOG_CONFIG_VERSIONS_KEY", "parseDialogConfig", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "dialogConfigJSON", "Lorg/json/JSONObject;", "parseVersionSpec", "", "versionsJSON", "Lorg/json/JSONArray;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
        /* renamed from: com.facebook.internal.p$b$a */
        /* loaded from: classes3-dex2jar.jar:com/facebook/internal/p$b$a.class */
        public static final class C10305a {
            private C10305a() {
            }

            public /* synthetic */ C10305a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: a */
            public static int[] m23032a(JSONArray jSONArray) {
                int[] iArr;
                if (jSONArray != null) {
                    int length = jSONArray.length();
                    int[] iArr2 = new int[length];
                    int i = 0;
                    while (true) {
                        iArr = iArr2;
                        if (i >= length) {
                            break;
                        }
                        int i2 = -1;
                        int optInt = jSONArray.optInt(i, -1);
                        if (optInt == -1) {
                            String versionString = jSONArray.optString(i);
                            if (!C10213ae.m23230a(versionString)) {
                                try {
                                    C18524p.m3843b(versionString, "versionString");
                                    i2 = Integer.parseInt(versionString);
                                } catch (NumberFormatException e) {
                                    C10213ae.m23228a("FacebookSDK", (Exception) e);
                                }
                                iArr2[i] = i2;
                                i++;
                            }
                        }
                        i2 = optInt;
                        iArr2[i] = i2;
                        i++;
                    }
                } else {
                    iArr = null;
                }
                return iArr;
            }
        }

        private C10304b(String str, String str2, Uri uri, int[] iArr) {
            this.f33864a = str;
            this.f33865b = str2;
            this.f33866d = uri;
            this.f33867e = iArr;
        }

        public /* synthetic */ C10304b(String str, String str2, Uri uri, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, uri, iArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C10302p(boolean z, String nuxContent, boolean z2, int i, EnumSet<EnumC10211ad> smartLoginOptions, Map<String, ? extends Map<String, C10304b>> dialogConfigurations, boolean z3, C10285h errorClassification, String smartLoginBookmarkIconURL, String smartLoginMenuIconURL, boolean z4, boolean z5, JSONArray jSONArray, String sdkUpdateMessage, boolean z6, boolean z7, String str, String str2, String str3) {
        C18524p.m3840d(nuxContent, "nuxContent");
        C18524p.m3840d(smartLoginOptions, "smartLoginOptions");
        C18524p.m3840d(dialogConfigurations, "dialogConfigurations");
        C18524p.m3840d(errorClassification, "errorClassification");
        C18524p.m3840d(smartLoginBookmarkIconURL, "smartLoginBookmarkIconURL");
        C18524p.m3840d(smartLoginMenuIconURL, "smartLoginMenuIconURL");
        C18524p.m3840d(sdkUpdateMessage, "sdkUpdateMessage");
        this.f33844a = z;
        this.f33856n = nuxContent;
        this.f33857o = z2;
        this.f33845b = i;
        this.f33846c = smartLoginOptions;
        this.f33858p = dialogConfigurations;
        this.f33847d = z3;
        this.f33848e = errorClassification;
        this.f33859q = smartLoginBookmarkIconURL;
        this.f33860r = smartLoginMenuIconURL;
        this.f33849f = z4;
        this.f33850g = z5;
        this.f33851h = jSONArray;
        this.f33852i = sdkUpdateMessage;
        this.f33861s = z6;
        this.f33862t = z7;
        this.f33853j = str;
        this.f33854k = str2;
        this.f33855l = str3;
    }
}
