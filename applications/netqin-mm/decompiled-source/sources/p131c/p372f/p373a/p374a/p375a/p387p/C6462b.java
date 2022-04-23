package p131c.p372f.p373a.p374a.p375a.p387p;

import java.util.HashSet;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p380l.C6425a;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AsyncTaskC6468d;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AsyncTaskC6469e;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.AsyncTaskC6470f;
import p131c.p372f.p373a.p374a.p375a.p387p.p388c.C6467c;
/* renamed from: c.f.a.a.a.p.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/p/b.class */
public class C6462b implements AbstractAsyncTaskC6464b.AbstractC6466b {

    /* renamed from: a */
    public final C6425a f20152a;

    /* renamed from: b */
    public JSONObject f20153b;

    /* renamed from: c */
    public final C6467c f20154c;

    public C6462b(C6425a aVar, C6467c cVar) {
        this.f20152a = aVar;
        this.f20154c = cVar;
    }

    /* renamed from: a */
    public void m20786a() {
        this.f20154c.m20779b(new AsyncTaskC6468d(this));
    }

    /* renamed from: a */
    public void m20785a(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f20154c.m20779b(new AsyncTaskC6469e(this, this.f20152a, hashSet, jSONObject, d));
    }

    /* renamed from: b */
    public void m20784b(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f20154c.m20779b(new AsyncTaskC6470f(this, this.f20152a, hashSet, jSONObject, d));
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b.AbstractC6466b
    public JSONObject getPreviousState() {
        return this.f20153b;
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p387p.p388c.AbstractAsyncTaskC6464b.AbstractC6466b
    public void setPreviousState(JSONObject jSONObject) {
        this.f20153b = jSONObject;
    }
}
