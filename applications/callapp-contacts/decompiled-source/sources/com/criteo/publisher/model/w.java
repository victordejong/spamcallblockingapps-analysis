package com.criteo.publisher.model;

import com.criteo.publisher.model.k;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.j;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/w.class */
public abstract class w {
    public static w a(String str, String str2, String str3, int i, String str4) {
        return new k(str, str2, str3, i, str4, Constants.ANDROID_PLATFORM);
    }

    public static j<w> a(f fVar) {
        return new k.a(fVar);
    }

    public abstract String a();

    @b(a = "cpId")
    public abstract String b();

    public abstract String c();

    public abstract String d();

    @b(a = "rtbProfileId")
    public abstract int e();

    public abstract String f();
}
