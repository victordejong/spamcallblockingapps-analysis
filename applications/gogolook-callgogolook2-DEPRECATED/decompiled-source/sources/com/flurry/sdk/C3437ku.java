package com.flurry.sdk;

import android.location.Location;
/* renamed from: com.flurry.sdk.ku */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ku.class */
public final class C3437ku extends C3438kv {

    /* renamed from: a */
    public static final Integer f5892a = 256;

    /* renamed from: b */
    public static final Integer f5893b = 8;

    /* renamed from: c */
    public static final Integer f5894c = 1;

    /* renamed from: d */
    public static final Integer f5895d = 0;

    /* renamed from: e */
    public static final String f5896e = null;

    /* renamed from: f */
    public static final Boolean f5897f = true;

    /* renamed from: g */
    public static final Boolean f5898g = true;

    /* renamed from: h */
    public static final String f5899h = null;

    /* renamed from: i */
    public static final Boolean f5900i = true;

    /* renamed from: k */
    public static final Location f5901k = null;

    /* renamed from: l */
    public static final Long f5902l = 10000L;

    /* renamed from: m */
    public static final Boolean f5903m = true;

    /* renamed from: n */
    public static final Long f5904n = null;

    /* renamed from: o */
    public static final Byte f5905o = (byte) -1;

    /* renamed from: p */
    public static final Boolean f5906p = false;

    /* renamed from: q */
    public static final String f5907q = null;

    /* renamed from: r */
    public static final Boolean f5908r = true;

    /* renamed from: s */
    public static final Boolean f5909s = true;

    /* renamed from: t */
    public static C3437ku f5910t;

    public C3437ku() {
        m32491a("AgentVersion", f5892a);
        m32491a("ReleaseMajorVersion", f5893b);
        m32491a("ReleaseMinorVersion", f5894c);
        m32491a("ReleasePatchVersion", f5895d);
        m32491a("ReleaseBetaVersion", "");
        m32491a("VersionName", f5896e);
        m32491a("CaptureUncaughtExceptions", f5897f);
        m32491a("UseHttps", f5898g);
        m32491a("ReportUrl", f5899h);
        m32491a("ReportLocation", f5900i);
        m32491a("ExplicitLocation", f5901k);
        m32491a("ContinueSessionMillis", f5902l);
        m32491a("LogEvents", f5903m);
        m32491a("Age", f5904n);
        m32491a("Gender", f5905o);
        m32491a("UserId", "");
        m32491a("ProtonEnabled", f5906p);
        m32491a("ProtonConfigUrl", f5907q);
        m32491a("analyticsEnabled", f5908r);
        m32491a("IncludeBackgroundSessionsInMetrics", f5909s);
        m32491a("notificationsEnabled", (Object) false);
    }

    /* renamed from: a */
    public static C3437ku m32494a() {
        C3437ku kuVar;
        synchronized (C3437ku.class) {
            try {
                if (f5910t == null) {
                    f5910t = new C3437ku();
                }
                kuVar = f5910t;
            } catch (Throwable th) {
                throw th;
            }
        }
        return kuVar;
    }
}
