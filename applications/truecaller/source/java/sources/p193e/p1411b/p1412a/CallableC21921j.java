package p193e.p1411b.p1412a;

import android.util.JsonReader;
import java.util.concurrent.Callable;
/* renamed from: e.b.a.j */
/* loaded from: classes-dex2jar.jar:e/b/a/j.class */
public final class CallableC21921j implements Callable<C21942p<C21913e>> {

    /* renamed from: a */
    public final /* synthetic */ JsonReader f60849a;

    /* renamed from: b */
    public final /* synthetic */ String f60850b;

    public CallableC21921j(JsonReader jsonReader, String str) {
        this.f60849a = jsonReader;
        this.f60850b = str;
    }

    @Override // java.util.concurrent.Callable
    public C21942p<C21913e> call() throws Exception {
        return C21914f.m8901c(this.f60849a, this.f60850b, true);
    }
}
