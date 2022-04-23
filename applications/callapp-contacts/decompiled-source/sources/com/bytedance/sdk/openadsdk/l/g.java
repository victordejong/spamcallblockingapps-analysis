package com.bytedance.sdk.openadsdk.l;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/g.class */
public abstract class g implements Comparable<g>, Runnable {

    /* renamed from: a  reason: collision with root package name */
    private int f9830a;

    /* renamed from: b  reason: collision with root package name */
    private String f9831b = UUID.randomUUID().toString() + VerificationLanguage.REGION_PREFIX + String.valueOf(System.nanoTime());

    /* renamed from: c  reason: collision with root package name */
    private String f9832c;

    public g(String str) {
        this.f9830a = 0;
        this.f9830a = 5;
        this.f9832c = str;
    }

    public int a() {
        return this.f9830a;
    }

    /* renamed from: a */
    public int compareTo(g gVar) {
        if (a() < gVar.a()) {
            return 1;
        }
        return a() > gVar.a() ? -1 : 0;
    }

    public String b() {
        return this.f9832c;
    }
}
