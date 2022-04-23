package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.criteo.publisher.model.l;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/y.class */
public abstract class y {
    public static y a() {
        return a(null, null, null, null, null, null, null, null, null, null);
    }

    public static y a(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        return new l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }

    public static j<y> a(f fVar) {
        return new l.a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "AndroidAdTagDataMacro")
    public abstract String b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "AndroidAdTagDataMode")
    public abstract String c();

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "AndroidAdTagUrlMode")
    public abstract String d();

    /* JADX INFO: Access modifiers changed from: package-private */
    @b(a = "AndroidDisplayUrlMacro")
    public abstract String e();

    public abstract Boolean f();

    public abstract Boolean g();

    public abstract Boolean h();

    public abstract Integer i();

    public abstract Boolean j();

    public abstract RemoteLogRecords.RemoteLogLevel k();
}
