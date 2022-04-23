package com.callerid.block.util.p058v0;

import android.app.Activity;
import com.callerid.block.p040h.p041a.p042b.C0962a;
import com.callerid.block.util.C1227w;
import com.google.android.gms.ads.p074w.AbstractC1510a;
/* renamed from: com.callerid.block.util.v0.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/v0/b.class */
public class C1223b {

    /* renamed from: b */
    private static C1223b f5081b = new C1223b();

    /* renamed from: a */
    private AbstractC1510a f5082a;

    private C1223b() {
    }

    /* renamed from: c */
    public static C1223b m9536c() {
        return f5081b;
    }

    /* renamed from: d */
    public void m9535d() {
        C0962a.m10447a(new a(this));
    }

    /* renamed from: e */
    public boolean m9534e() {
        return this.f5082a != null;
    }

    /* renamed from: f */
    public void m9533f(Activity activity) {
        if (C1227w.f5084a) {
            C1227w.m9527a("wbb", "展示插屏广告>还要看后面判断");
        }
        C0962a.m10447a(new b(this, activity));
    }
}
