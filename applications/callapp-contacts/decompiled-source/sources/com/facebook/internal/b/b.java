package com.facebook.internal.b;

import android.os.Build;
import com.facebook.internal.ae;
import com.mopub.network.ImpressionData;
import java.io.File;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private String f19873a;

    /* renamed from: b  reason: collision with root package name */
    private EnumC0398b f19874b;

    /* renamed from: c  reason: collision with root package name */
    private JSONArray f19875c;

    /* renamed from: d  reason: collision with root package name */
    private String f19876d;
    private String e;
    private String f;
    private Long g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.internal.b.b$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19877a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0398b.values().length];
            f19877a = iArr;
            try {
                iArr[EnumC0398b.Analysis.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19877a[EnumC0398b.CrashReport.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19877a[EnumC0398b.CrashShield.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f19877a[EnumC0398b.ThreadCheck.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$a.class */
    public static final class a {
        public static b a(File file) {
            return new b(file, (AnonymousClass1) null);
        }

        public static b a(Throwable th, EnumC0398b bVar) {
            return new b(th, bVar, null);
        }

        public static b a(JSONArray jSONArray) {
            return new b(jSONArray, (AnonymousClass1) null);
        }
    }

    /* renamed from: com.facebook.internal.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$b.class */
    public enum EnumC0398b {
        Unknown,
        Analysis,
        CrashReport,
        CrashShield,
        ThreadCheck;

        public final String getLogPrefix() {
            int i = AnonymousClass1.f19877a[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "thread_check_log_" : "shield_log_" : "crash_log_" : "analysis_log_";
        }

        @Override // java.lang.Enum
        public final String toString() {
            int i = AnonymousClass1.f19877a[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "Analysis";
        }
    }

    private b(File file) {
        String name = file.getName();
        this.f19873a = name;
        this.f19874b = name.startsWith("crash_log_") ? EnumC0398b.CrashReport : name.startsWith("shield_log_") ? EnumC0398b.CrashShield : name.startsWith("thread_check_log_") ? EnumC0398b.ThreadCheck : name.startsWith("analysis_log_") ? EnumC0398b.Analysis : EnumC0398b.Unknown;
        JSONObject a2 = d.a(this.f19873a);
        if (a2 != null) {
            this.g = Long.valueOf(a2.optLong(Reporting.Key.TIMESTAMP, 0L));
            this.f19876d = a2.optString(ImpressionData.APP_VERSION, null);
            this.e = a2.optString("reason", null);
            this.f = a2.optString("callstack", null);
            this.f19875c = a2.optJSONArray("feature_names");
        }
    }

    /* synthetic */ b(File file, AnonymousClass1 r5) {
        this(file);
    }

    private b(Throwable th, EnumC0398b bVar) {
        this.f19874b = bVar;
        this.f19876d = ae.b();
        this.e = d.a(th);
        this.f = d.b(th);
        this.g = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(bVar.getLogPrefix());
        stringBuffer.append(this.g.toString());
        stringBuffer.append(".json");
        this.f19873a = stringBuffer.toString();
    }

    /* synthetic */ b(Throwable th, EnumC0398b bVar, AnonymousClass1 r7) {
        this(th, bVar);
    }

    private b(JSONArray jSONArray) {
        this.f19874b = EnumC0398b.Analysis;
        this.g = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f19875c = jSONArray;
        StringBuffer stringBuffer = new StringBuffer("analysis_log_");
        stringBuffer.append(this.g.toString());
        stringBuffer.append(".json");
        this.f19873a = stringBuffer.toString();
    }

    /* synthetic */ b(JSONArray jSONArray, AnonymousClass1 r5) {
        this(jSONArray);
    }

    private JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.f19875c;
            if (jSONArray != null) {
                jSONObject.put("feature_names", jSONArray);
            }
            Long l = this.g;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            String str = this.f19876d;
            if (str != null) {
                jSONObject.put(ImpressionData.APP_VERSION, str);
            }
            Long l = this.g;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l);
            }
            String str2 = this.e;
            if (str2 != null) {
                jSONObject.put("reason", str2);
            }
            String str3 = this.f;
            if (str3 != null) {
                jSONObject.put("callstack", str3);
            }
            EnumC0398b bVar = this.f19874b;
            if (bVar != null) {
                jSONObject.put("type", bVar);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    public final int a(b bVar) {
        Long l = this.g;
        if (l == null) {
            return -1;
        }
        Long l2 = bVar.g;
        if (l2 == null) {
            return 1;
        }
        return l2.compareTo(l);
    }

    public final boolean a() {
        int i = AnonymousClass1.f19877a[this.f19874b.ordinal()];
        return i != 1 ? ((i != 2 && i != 3 && i != 4) || this.f == null || this.g == null) ? false : true : (this.f19875c == null || this.g == null) ? false : true;
    }

    public final void b() {
        if (a()) {
            d.a(this.f19873a, toString());
        }
    }

    public final void c() {
        d.b(this.f19873a);
    }

    public final String toString() {
        int i = AnonymousClass1.f19877a[this.f19874b.ordinal()];
        JSONObject e = i != 1 ? (i == 2 || i == 3 || i == 4) ? e() : null : d();
        if (e == null) {
            return null;
        }
        return e.toString();
    }
}
