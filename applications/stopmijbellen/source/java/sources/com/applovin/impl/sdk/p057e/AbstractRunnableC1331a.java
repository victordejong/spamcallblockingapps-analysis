package com.applovin.impl.sdk.p057e;

import android.content.Context;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
/* renamed from: com.applovin.impl.sdk.e.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/e/a.class */
public abstract class AbstractRunnableC1331a implements Runnable {

    /* renamed from: a */
    private final String f5112a;

    /* renamed from: b */
    public final C1408l f5113b;

    /* renamed from: c */
    private final C1479t f5114c;

    /* renamed from: d */
    private final Context f5115d;

    /* renamed from: e */
    private final boolean f5116e;

    public AbstractRunnableC1331a(String str, C1408l c1408l) {
        this(str, c1408l, false);
    }

    public AbstractRunnableC1331a(String str, C1408l c1408l, boolean z) {
        this.f5112a = str;
        this.f5113b = c1408l;
        this.f5114c = c1408l.m5542A();
        this.f5115d = c1408l.m5532K();
        this.f5116e = z;
    }

    /* renamed from: a */
    public void m5733a(String str) {
        this.f5114c.m5116b(this.f5112a, str);
    }

    /* renamed from: a */
    public void m5732a(String str, Throwable th) {
        this.f5114c.m5115b(this.f5112a, str, th);
    }

    /* renamed from: b */
    public void m5731b(String str) {
        this.f5114c.m5114c(this.f5112a, str);
    }

    /* renamed from: c */
    public void m5730c(String str) {
        this.f5114c.m5112d(this.f5112a, str);
    }

    /* renamed from: d */
    public C1408l m5729d() {
        return this.f5113b;
    }

    /* renamed from: d */
    public void m5728d(String str) {
        this.f5114c.m5111e(this.f5112a, str);
    }

    /* renamed from: e */
    public String m5727e() {
        return this.f5112a;
    }

    /* renamed from: f */
    public Context m5726f() {
        return this.f5115d;
    }

    /* renamed from: g */
    public boolean m5725g() {
        return this.f5116e;
    }
}
