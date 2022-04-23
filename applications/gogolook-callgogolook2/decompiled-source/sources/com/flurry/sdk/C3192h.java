package com.flurry.sdk;

import android.content.Context;
import java.util.Map;
/* renamed from: com.flurry.sdk.h */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/h.class */
public final class C3192h {

    /* renamed from: a */
    public final EnumC2874bi f5300a;

    /* renamed from: b */
    public final Map<String, String> f5301b;

    /* renamed from: c */
    public final Context f5302c;

    /* renamed from: d */
    public final AbstractC3518x f5303d;

    /* renamed from: e */
    public final C2853ay f5304e;

    public C3192h(EnumC2874bi biVar, Map<String, String> map, Context context, AbstractC3518x xVar, C2853ay ayVar) {
        this.f5300a = biVar;
        this.f5301b = map;
        this.f5302c = context;
        this.f5303d = xVar;
        this.f5304e = ayVar;
    }

    /* renamed from: a */
    public static EnumC2874bi m32913a(String str) {
        EnumC2874bi[] values;
        for (EnumC2874bi biVar : EnumC2874bi.values()) {
            if (biVar.f4289an.equals(str)) {
                return biVar;
            }
        }
        return EnumC2874bi.EV_UNKNOWN;
    }

    /* renamed from: a */
    public final C2909cf m32914a() {
        return this.f5304e.f4111b.f4147b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("event=");
        sb.append(this.f5300a.toString());
        sb.append(",params=");
        sb.append(this.f5301b);
        if (this.f5304e.m33522h() != null) {
            sb.append(",adspace=");
            sb.append(this.f5304e.f4111b.f4147b.f4436b);
        }
        return sb.toString();
    }
}
