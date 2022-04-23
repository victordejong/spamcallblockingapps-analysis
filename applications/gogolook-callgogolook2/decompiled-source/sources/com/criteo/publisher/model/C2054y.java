package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.CriteoInterstitialAdDisplayListener;
import com.criteo.publisher.p020a0.EnumC1934v;
import com.criteo.publisher.p034z.AsyncTaskC2182d;
/* renamed from: com.criteo.publisher.model.y */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/y.class */
public class C2054y {
    @NonNull

    /* renamed from: a */
    public String f2280a = "";
    @NonNull

    /* renamed from: b */
    public EnumC1934v f2281b = EnumC1934v.NONE;
    @NonNull

    /* renamed from: c */
    public final C2042p f2282c;

    public C2054y(@NonNull C2042p pVar) {
        this.f2282c = pVar;
    }

    /* renamed from: a */
    public void m35778a() {
        this.f2281b = EnumC1934v.FAILED;
    }

    /* renamed from: a */
    public void m35777a(@NonNull String str) {
        this.f2280a = this.f2282c.m35838b().replace(this.f2282c.m35842a(), str);
    }

    /* renamed from: a */
    public void m35776a(@NonNull String str, @NonNull C2043q qVar, @Nullable CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener) {
        new AsyncTaskC2182d(this, qVar, criteoInterstitialAdDisplayListener).executeOnExecutor(C1974i.m35912U().m35919N(), str);
    }

    /* renamed from: b */
    public void m35775b() {
        this.f2281b = EnumC1934v.LOADING;
    }

    /* renamed from: c */
    public void m35774c() {
        this.f2281b = EnumC1934v.LOADED;
    }

    @NonNull
    /* renamed from: d */
    public String m35773d() {
        return this.f2280a;
    }

    /* renamed from: e */
    public boolean m35772e() {
        return this.f2281b == EnumC1934v.LOADED;
    }

    /* renamed from: f */
    public boolean m35771f() {
        return this.f2281b == EnumC1934v.LOADING;
    }

    /* renamed from: g */
    public void m35770g() {
        this.f2281b = EnumC1934v.NONE;
        this.f2280a = "";
    }
}
