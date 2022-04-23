package p131c.p161d.p282e.p340u.p344g;

import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6008e;
/* renamed from: c.d.e.u.g.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/c.class */
public class C5958c extends AbstractC5965j {

    /* renamed from: b */
    public static final C5969a f19359b = C5969a.m22496a();

    /* renamed from: a */
    public final C6008e f19360a;

    public C5958c(C6008e eVar) {
        this.f19360a = eVar;
    }

    @Override // p131c.p161d.p282e.p340u.p344g.AbstractC5965j
    /* renamed from: a */
    public boolean mo22504a() {
        if (m22534b()) {
            return true;
        }
        f19359b.m22491d("ApplicationInfo is invalid", new Object[0]);
        return false;
    }

    /* renamed from: b */
    public final boolean m22534b() {
        C6008e eVar = this.f19360a;
        if (eVar == null) {
            f19359b.m22491d("ApplicationInfo is null", new Object[0]);
            return false;
        } else if (!eVar.m22332C()) {
            f19359b.m22491d("GoogleAppId is null", new Object[0]);
            return false;
        } else if (!this.f19360a.m22314z()) {
            f19359b.m22491d("AppInstanceId is null", new Object[0]);
            return false;
        } else if (!this.f19360a.m22333A()) {
            f19359b.m22491d("ApplicationProcessState is null", new Object[0]);
            return false;
        } else if (!this.f19360a.m22315y()) {
            return true;
        } else {
            if (!this.f19360a.m22318v().m22349v()) {
                f19359b.m22491d("AndroidAppInfo.packageName is null", new Object[0]);
                return false;
            } else if (this.f19360a.m22318v().m22348w()) {
                return true;
            } else {
                f19359b.m22491d("AndroidAppInfo.sdkVersion is null", new Object[0]);
                return false;
            }
        }
    }
}
