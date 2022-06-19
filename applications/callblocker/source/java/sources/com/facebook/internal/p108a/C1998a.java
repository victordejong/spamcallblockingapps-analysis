package com.facebook.internal.p108a;

import android.os.Build;
import com.facebook.internal.C2079x;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/a/a.class */
public final class C1998a {

    /* renamed from: a */
    private String f5951a;

    /* renamed from: b */
    private String f5952b;

    /* renamed from: c */
    private String f5953c;

    /* renamed from: d */
    private String f5954d;

    /* renamed from: e */
    private Long f5955e;

    /* renamed from: f */
    private String f5956f;

    /* renamed from: com.facebook.internal.a.a$1 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a/a$1.class */
    public static /* synthetic */ class C19991 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5957a = new int[EnumC2000a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:14:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0033 -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f5957a[EnumC2000a.CrashReport.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5957a[EnumC2000a.CrashShield.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5957a[EnumC2000a.ThreadCheck.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.facebook.internal.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/a/a$a.class */
    public enum EnumC2000a {
        CrashReport,
        CrashShield,
        ThreadCheck;

        @Override // java.lang.Enum
        public String toString() {
            String str = "Unknown";
            switch (C19991.f5957a[ordinal()]) {
                case 1:
                    str = "CrashReport";
                    break;
                case 2:
                    str = "CrashShield";
                    break;
                case 3:
                    str = "ThreadCheck";
                    break;
            }
            return str;
        }
    }

    public C1998a(File file) {
        this.f5951a = file.getName();
        JSONObject m15659a = C2012c.m15659a(this.f5951a, true);
        if (m15659a != null) {
            this.f5952b = m15659a.optString("app_version", null);
            this.f5953c = m15659a.optString("reason", null);
            this.f5954d = m15659a.optString("callstack", null);
            this.f5955e = Long.valueOf(m15659a.optLong("timestamp", 0L));
            this.f5956f = m15659a.optString("type", null);
        }
    }

    public C1998a(Throwable th, EnumC2000a enumC2000a) {
        this.f5952b = C2079x.m15492a();
        this.f5953c = C2012c.m15658a(th);
        this.f5954d = C2012c.m15656b(th);
        this.f5955e = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f5956f = enumC2000a.toString();
        this.f5951a = new StringBuffer().append("crash_log_").append(this.f5955e.toString()).append(".json").toString();
    }

    /* renamed from: a */
    public int m15684a(C1998a c1998a) {
        return this.f5955e == null ? -1 : c1998a.f5955e == null ? 1 : c1998a.f5955e.compareTo(this.f5955e);
    }

    /* renamed from: a */
    public boolean m15685a() {
        return (this.f5954d == null || this.f5955e == null) ? false : true;
    }

    /* renamed from: b */
    public void m15683b() {
        if (!m15685a()) {
            return;
        }
        C2012c.m15661a(this.f5951a, toString());
    }

    /* renamed from: c */
    public void m15681c() {
        C2012c.m15662a(this.f5951a);
    }

    /* renamed from: d */
    public JSONObject m15680d() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject2.put("device_model", Build.MODEL);
            if (this.f5952b != null) {
                jSONObject2.put("app_version", this.f5952b);
            }
            if (this.f5955e != null) {
                jSONObject2.put("timestamp", this.f5955e);
            }
            if (this.f5953c != null) {
                jSONObject2.put("reason", this.f5953c);
            }
            if (this.f5954d != null) {
                jSONObject2.put("callstack", this.f5954d);
            }
            jSONObject = jSONObject2;
            if (this.f5956f != null) {
                jSONObject2.put("type", this.f5956f);
                jSONObject = jSONObject2;
            }
        } catch (JSONException e) {
            jSONObject = null;
        }
        return jSONObject;
    }

    public String toString() {
        JSONObject m15680d = m15680d();
        return m15680d == null ? null : m15680d.toString();
    }
}
