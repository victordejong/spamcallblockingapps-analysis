package com.criteo.publisher.model;

import com.criteo.publisher.C8520q;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p254l.C8387d;
import com.criteo.publisher.p254l.C8389e;
import com.criteo.publisher.p256m0.EnumC8450u;
/* renamed from: com.criteo.publisher.model.a0 */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/a0.class */
public class C8452a0 {

    /* renamed from: a */
    private String f30219a = "";

    /* renamed from: b */
    private EnumC8450u f30220b = EnumC8450u.NONE;

    /* renamed from: c */
    private final C8507t f30221c;

    /* renamed from: d */
    private final C8364g f30222d;

    public C8452a0(C8507t c8507t, C8364g c8364g) {
        this.f30221c = c8507t;
        this.f30222d = c8364g;
    }

    /* renamed from: a */
    public void m25666a() {
        this.f30220b = EnumC8450u.FAILED;
    }

    /* renamed from: a */
    public void m25665a(String str) {
        this.f30219a = this.f30221c.m25530b().replace(this.f30221c.m25533a(), str);
    }

    /* renamed from: a */
    public void m25664a(String str, C8509u c8509u, C8387d c8387d) {
        C8520q.m25449a().m25401h().execute(new C8389e(str, this, c8509u, c8387d, this.f30222d));
    }

    /* renamed from: b */
    public void m25663b() {
        this.f30220b = EnumC8450u.LOADING;
    }

    /* renamed from: c */
    public void m25662c() {
        this.f30220b = EnumC8450u.LOADED;
    }

    /* renamed from: d */
    public String m25661d() {
        return this.f30219a;
    }

    /* renamed from: e */
    public boolean m25660e() {
        return this.f30220b == EnumC8450u.LOADED;
    }

    /* renamed from: f */
    public boolean m25659f() {
        return this.f30220b == EnumC8450u.LOADING;
    }

    /* renamed from: g */
    public void m25658g() {
        this.f30220b = EnumC8450u.NONE;
        this.f30219a = "";
    }
}
