package com.facebook.internal.p299b;

import android.os.Build;
import com.facebook.internal.C10213ae;
import com.mopub.network.ImpressionData;
import java.io.File;
import net.pubnative.lite.sdk.analytics.Reporting;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.b.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b.class */
public final class C10245b {

    /* renamed from: a */
    private String f33744a;

    /* renamed from: b */
    private EnumC10248b f33745b;

    /* renamed from: c */
    private JSONArray f33746c;

    /* renamed from: d */
    private String f33747d;

    /* renamed from: e */
    private String f33748e;

    /* renamed from: f */
    private String f33749f;

    /* renamed from: g */
    private Long f33750g;

    /* renamed from: com.facebook.internal.b.b$1 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$1.class */
    public static final /* synthetic */ class C102461 {

        /* renamed from: a */
        static final /* synthetic */ int[] f33751a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10248b.values().length];
            f33751a = iArr;
            try {
                iArr[EnumC10248b.Analysis.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33751a[EnumC10248b.CrashReport.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33751a[EnumC10248b.CrashShield.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33751a[EnumC10248b.ThreadCheck.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.facebook.internal.b.b$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$a.class */
    public static final class C10247a {
        /* renamed from: a */
        public static C10245b m23109a(File file) {
            return new C10245b(file, (C102461) null);
        }

        /* renamed from: a */
        public static C10245b m23107a(Throwable th, EnumC10248b enumC10248b) {
            return new C10245b(th, enumC10248b, null);
        }

        /* renamed from: a */
        public static C10245b m23105a(JSONArray jSONArray) {
            return new C10245b(jSONArray, (C102461) null);
        }
    }

    /* renamed from: com.facebook.internal.b.b$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/b/b$b.class */
    public enum EnumC10248b {
        Unknown,
        Analysis,
        CrashReport,
        CrashShield,
        ThreadCheck;

        public final String getLogPrefix() {
            int i = C102461.f33751a[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "thread_check_log_" : "shield_log_" : "crash_log_" : "analysis_log_";
        }

        @Override // java.lang.Enum
        public final String toString() {
            int i = C102461.f33751a[ordinal()];
            return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "Unknown" : "ThreadCheck" : "CrashShield" : "CrashReport" : "Analysis";
        }
    }

    private C10245b(File file) {
        String name = file.getName();
        this.f33744a = name;
        this.f33745b = name.startsWith("crash_log_") ? EnumC10248b.CrashReport : name.startsWith("shield_log_") ? EnumC10248b.CrashShield : name.startsWith("thread_check_log_") ? EnumC10248b.ThreadCheck : name.startsWith("analysis_log_") ? EnumC10248b.Analysis : EnumC10248b.Unknown;
        JSONObject m23098a = C10259d.m23098a(this.f33744a);
        if (m23098a != null) {
            this.f33750g = Long.valueOf(m23098a.optLong(Reporting.Key.TIMESTAMP, 0L));
            this.f33747d = m23098a.optString(ImpressionData.APP_VERSION, null);
            this.f33748e = m23098a.optString("reason", null);
            this.f33749f = m23098a.optString("callstack", null);
            this.f33746c = m23098a.optJSONArray("feature_names");
        }
    }

    /* synthetic */ C10245b(File file, C102461 c102461) {
        this(file);
    }

    private C10245b(Throwable th, EnumC10248b enumC10248b) {
        this.f33745b = enumC10248b;
        this.f33747d = C10213ae.m23212b();
        this.f33748e = C10259d.m23095a(th);
        this.f33749f = C10259d.m23092b(th);
        this.f33750g = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(enumC10248b.getLogPrefix());
        stringBuffer.append(this.f33750g.toString());
        stringBuffer.append(".json");
        this.f33744a = stringBuffer.toString();
    }

    /* synthetic */ C10245b(Throwable th, EnumC10248b enumC10248b, C102461 c102461) {
        this(th, enumC10248b);
    }

    private C10245b(JSONArray jSONArray) {
        this.f33745b = EnumC10248b.Analysis;
        this.f33750g = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f33746c = jSONArray;
        StringBuffer stringBuffer = new StringBuffer("analysis_log_");
        stringBuffer.append(this.f33750g.toString());
        stringBuffer.append(".json");
        this.f33744a = stringBuffer.toString();
    }

    /* synthetic */ C10245b(JSONArray jSONArray, C102461 c102461) {
        this(jSONArray);
    }

    /* renamed from: d */
    private JSONObject m23112d() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.f33746c;
            if (jSONArray != null) {
                jSONObject.put("feature_names", jSONArray);
            }
            Long l = this.f33750g;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: e */
    private JSONObject m23111e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            String str = this.f33747d;
            if (str != null) {
                jSONObject.put(ImpressionData.APP_VERSION, str);
            }
            Long l = this.f33750g;
            if (l != null) {
                jSONObject.put(Reporting.Key.TIMESTAMP, l);
            }
            String str2 = this.f33748e;
            if (str2 != null) {
                jSONObject.put("reason", str2);
            }
            String str3 = this.f33749f;
            if (str3 != null) {
                jSONObject.put("callstack", str3);
            }
            EnumC10248b enumC10248b = this.f33745b;
            if (enumC10248b != null) {
                jSONObject.put("type", enumC10248b);
            }
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final int m23116a(C10245b c10245b) {
        Long l = this.f33750g;
        if (l == null) {
            return -1;
        }
        Long l2 = c10245b.f33750g;
        if (l2 != null) {
            return l2.compareTo(l);
        }
        return 1;
    }

    /* renamed from: a */
    public final boolean m23117a() {
        int i = C102461.f33751a[this.f33745b.ordinal()];
        return i != 1 ? ((i != 2 && i != 3 && i != 4) || this.f33749f == null || this.f33750g == null) ? false : true : (this.f33746c == null || this.f33750g == null) ? false : true;
    }

    /* renamed from: b */
    public final void m23115b() {
        if (!m23117a()) {
            return;
        }
        C10259d.m23097a(this.f33744a, toString());
    }

    /* renamed from: c */
    public final void m23113c() {
        C10259d.m23093b(this.f33744a);
    }

    public final String toString() {
        int i = C102461.f33751a[this.f33745b.ordinal()];
        JSONObject m23111e = i != 1 ? (i == 2 || i == 3 || i == 4) ? m23111e() : null : m23112d();
        if (m23111e == null) {
            return null;
        }
        return m23111e.toString();
    }
}
