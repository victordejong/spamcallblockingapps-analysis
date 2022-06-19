package com.flurry.sdk;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/jo$7.class */
public final class jo$7 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ String f3396a;

    /* renamed from: b */
    public final /* synthetic */ Map f3397b;

    /* renamed from: c */
    public final /* synthetic */ jo f3398c;

    public jo$7(jo joVar, String str, Map map) {
        this.f3398c = joVar;
        this.f3396a = str;
        this.f3397b = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        hx.a().a.a(this.f3396a, this.f3397b);
    }
}
