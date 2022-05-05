package p081h.p415j.p416a.p417a.p418a.p426j;

import androidx.annotation.VisibleForTesting;
import java.util.HashSet;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AsyncTaskC10664d;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AsyncTaskC10665e;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.AsyncTaskC10666f;
import p081h.p415j.p416a.p417a.p418a.p426j.p427b.C10663c;
/* renamed from: h.j.a.a.a.j.d */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/d.class */
public class C10668d implements AbstractAsyncTaskC10660b.AbstractC10662b {

    /* renamed from: a */
    public JSONObject f24270a;

    /* renamed from: b */
    public final C10663c f24271b;

    public C10668d(C10663c cVar) {
        this.f24271b = cVar;
    }

    /* renamed from: a */
    public void m11011a() {
        this.f24271b.m11029b(new AsyncTaskC10664d(this));
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b.AbstractC10662b
    @VisibleForTesting
    /* renamed from: a */
    public void mo11010a(JSONObject jSONObject) {
        this.f24270a = jSONObject;
    }

    /* renamed from: a */
    public void m11009a(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f24271b.m11029b(new AsyncTaskC10666f(this, hashSet, jSONObject, d));
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p426j.p427b.AbstractAsyncTaskC10660b.AbstractC10662b
    @VisibleForTesting
    /* renamed from: b */
    public JSONObject mo11008b() {
        return this.f24270a;
    }

    /* renamed from: b */
    public void m11007b(JSONObject jSONObject, HashSet<String> hashSet, double d) {
        this.f24271b.m11029b(new AsyncTaskC10665e(this, hashSet, jSONObject, d));
    }
}
