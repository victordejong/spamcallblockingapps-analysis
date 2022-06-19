package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONArray;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b#\u0018�� 82\u00020\u0001:\u000289BÃ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u001e\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\r0\r\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u001eJ\u0006\u0010\u0002\u001a\u00020\u0003R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001f\u0010 R\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b!\u0010 R)\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\r0\r¢\u0006\b\n��\u001a\u0004\b\"\u0010#R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n��\u001a\u0004\b$\u0010%R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n��\u001a\u0004\b&\u0010'R\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b(\u0010 R\u0011\u0010\u001a\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b)\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b*\u0010+R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b,\u0010 R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b-\u0010+R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b.\u0010+R\u0011\u0010\u0018\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b/\u0010+R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n��\u001a\u0004\b0\u00101R\u0011\u0010\u0012\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b2\u0010+R\u0011\u0010\u0013\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b3\u0010+R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n��\u001a\u0004\b4\u00105R\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b6\u0010+R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0019\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b7\u0010 ¨\u0006:"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings;", "", "supportsImplicitLogging", "", "nuxContent", "", "nuxEnabled", "sessionTimeoutInSeconds", "", "smartLoginOptions", "Ljava/util/EnumSet;", "Lcom/facebook/internal/SmartLoginOption;", "dialogConfigurations", "", "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "automaticLoggingEnabled", "errorClassification", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "smartLoginBookmarkIconURL", "smartLoginMenuIconURL", "iAPAutomaticLoggingEnabled", "codelessEventsEnabled", "eventBindings", "Lorg/json/JSONArray;", "sdkUpdateMessage", "trackUninstallEnabled", "monitorViaDialogEnabled", "rawAamRules", "suggestedEventsSetting", "restrictiveDataSetting", "(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAutomaticLoggingEnabled", "()Z", "getCodelessEventsEnabled", "getDialogConfigurations", "()Ljava/util/Map;", "getErrorClassification", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "getEventBindings", "()Lorg/json/JSONArray;", "getIAPAutomaticLoggingEnabled", "getMonitorViaDialogEnabled", "getNuxContent", "()Ljava/lang/String;", "getNuxEnabled", "getRawAamRules", "getRestrictiveDataSetting", "getSdkUpdateMessage", "getSessionTimeoutInSeconds", "()I", "getSmartLoginBookmarkIconURL", "getSmartLoginMenuIconURL", "getSmartLoginOptions", "()Ljava/util/EnumSet;", "getSuggestedEventsSetting", "getTrackUninstallEnabled", "Companion", "DialogFeatureConfig", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.c0 */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/c0.class */
public final class C1124c0 {

    /* renamed from: a */
    public final boolean f3091a;

    /* renamed from: b */
    public final int f3092b;

    /* renamed from: c */
    public final EnumSet<EnumC1163p0> f3093c;

    /* renamed from: d */
    public final Map<String, Map<String, C1125a>> f3094d;

    /* renamed from: e */
    public final boolean f3095e;

    /* renamed from: f */
    public final C1231x f3096f;

    /* renamed from: g */
    public final boolean f3097g;

    /* renamed from: h */
    public final boolean f3098h;

    /* renamed from: i */
    public final JSONArray f3099i;

    /* renamed from: j */
    public final String f3100j;

    /* renamed from: k */
    public final String f3101k;

    /* renamed from: l */
    public final String f3102l;

    /* renamed from: m */
    public final String f3103m;

    @Metadata(d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n\u0002\b\n\u0018�� \u00112\u00020\u0001:\u0001\u0011B+\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;", "", "dialogName", "", "featureName", "fallbackUrl", "Landroid/net/Uri;", "versionSpec", "", "(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V", "getDialogName", "()Ljava/lang/String;", "getFallbackUrl", "()Landroid/net/Uri;", "getFeatureName", "getVersionSpec", "()[I", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.internal.c0$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/internal/c0$a.class */
    public static final class C1125a {

        /* renamed from: a */
        public final String f3104a;

        /* renamed from: b */
        public final String f3105b;

        public C1125a(String str, String str2, Uri uri, int[] iArr, f fVar) {
            this.f3104a = str;
            this.f3105b = str2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1124c0(boolean z, String str, boolean z2, int i, EnumSet<EnumC1163p0> enumSet, Map<String, ? extends Map<String, C1125a>> map, boolean z3, C1231x c1231x, String str2, String str3, boolean z4, boolean z5, JSONArray jSONArray, String str4, boolean z6, boolean z7, String str5, String str6, String str7) {
        l.e(str, "nuxContent");
        l.e(enumSet, "smartLoginOptions");
        l.e(map, "dialogConfigurations");
        l.e(c1231x, "errorClassification");
        l.e(str2, "smartLoginBookmarkIconURL");
        l.e(str3, "smartLoginMenuIconURL");
        l.e(str4, "sdkUpdateMessage");
        this.f3091a = z;
        this.f3092b = i;
        this.f3093c = enumSet;
        this.f3094d = map;
        this.f3095e = z3;
        this.f3096f = c1231x;
        this.f3097g = z4;
        this.f3098h = z5;
        this.f3099i = jSONArray;
        this.f3100j = str4;
        this.f3101k = str5;
        this.f3102l = str6;
        this.f3103m = str7;
    }
}
