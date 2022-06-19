package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.model.C8494l;
import com.google.gson.AbstractC16088j;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
/* renamed from: com.criteo.publisher.model.y */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/y.class */
public abstract class AbstractC8515y {
    /* renamed from: a */
    public static AbstractC8515y m25498a() {
        return m25496a(null, null, null, null, null, null, null, null, null, null);
    }

    /* renamed from: a */
    public static AbstractC8515y m25496a(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        return new C8494l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }

    /* renamed from: a */
    public static AbstractC16088j<AbstractC8515y> m25497a(C15965f c15965f) {
        return new C8494l.C8495a(c15965f);
    }

    @AbstractC15952b(m7988a = "AndroidAdTagDataMacro")
    /* renamed from: b */
    public abstract String mo25495b();

    @AbstractC15952b(m7988a = "AndroidAdTagDataMode")
    /* renamed from: c */
    public abstract String mo25494c();

    @AbstractC15952b(m7988a = "AndroidAdTagUrlMode")
    /* renamed from: d */
    public abstract String mo25493d();

    @AbstractC15952b(m7988a = "AndroidDisplayUrlMacro")
    /* renamed from: e */
    public abstract String mo25492e();

    /* renamed from: f */
    public abstract Boolean mo25491f();

    /* renamed from: g */
    public abstract Boolean mo25490g();

    /* renamed from: h */
    public abstract Boolean mo25489h();

    /* renamed from: i */
    public abstract Integer mo25488i();

    /* renamed from: j */
    public abstract Boolean mo25487j();

    /* renamed from: k */
    public abstract RemoteLogRecords.RemoteLogLevel mo25486k();
}
