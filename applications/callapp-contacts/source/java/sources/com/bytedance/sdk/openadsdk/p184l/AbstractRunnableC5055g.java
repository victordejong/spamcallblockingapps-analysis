package com.bytedance.sdk.openadsdk.p184l;

import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.UUID;
/* renamed from: com.bytedance.sdk.openadsdk.l.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/g.class */
public abstract class AbstractRunnableC5055g implements Comparable<AbstractRunnableC5055g>, Runnable {

    /* renamed from: a */
    private int f18297a;

    /* renamed from: b */
    private String f18298b = UUID.randomUUID().toString() + VerificationLanguage.REGION_PREFIX + String.valueOf(System.nanoTime());

    /* renamed from: c */
    private String f18299c;

    public AbstractRunnableC5055g(String str) {
        this.f18297a = 0;
        this.f18297a = 5;
        this.f18299c = str;
    }

    /* renamed from: a */
    public int m33149a() {
        return this.f18297a;
    }

    /* renamed from: a */
    public int compareTo(AbstractRunnableC5055g abstractRunnableC5055g) {
        if (m33149a() < abstractRunnableC5055g.m33149a()) {
            return 1;
        }
        return m33149a() > abstractRunnableC5055g.m33149a() ? -1 : 0;
    }

    /* renamed from: b */
    public String m33147b() {
        return this.f18299c;
    }
}
