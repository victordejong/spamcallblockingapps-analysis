package com.flurry.sdk;

import java.util.Locale;
/* renamed from: com.flurry.sdk.kh */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kh.class */
public class C0463kh {

    /* renamed from: a */
    private static final String f3466a = "kh";

    /* renamed from: a */
    public static String m4646a() {
        return String.format(Locale.getDefault(), "Flurry_Android_%d_%d.%d.%d%s%s", Integer.valueOf(m4645b()), Integer.valueOf(((Integer) lx.a().m4515a("ReleaseMajorVersion")).intValue()), Integer.valueOf(((Integer) lx.a().m4515a("ReleaseMinorVersion")).intValue()), Integer.valueOf(((Integer) lx.a().m4515a("ReleasePatchVersion")).intValue()), m4644c().length() > 0 ? "." : "", m4644c());
    }

    /* renamed from: b */
    public static int m4645b() {
        int intValue = ((Integer) lx.a().m4515a("AgentVersion")).intValue();
        String str = f3466a;
        C0478ku.m4596a(4, str, "getAgentVersion() = " + intValue);
        return intValue;
    }

    /* renamed from: c */
    private static String m4644c() {
        return (String) lx.a().m4515a("ReleaseBetaVersion");
    }
}
