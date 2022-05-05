package p081h.p203i.p204a.p224e.p235d.p236k;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import java.util.ArrayList;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6864e2;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.d.k.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/c.class */
public class C6820c extends Exception {

    /* renamed from: a */
    public final ArrayMap<C6864e2<?>, ConnectionResult> f16705a;

    public C6820c(ArrayMap<C6864e2<?>, ConnectionResult> arrayMap) {
        this.f16705a = arrayMap;
    }

    /* renamed from: a */
    public final ArrayMap<C6864e2<?>, ConnectionResult> m21845a() {
        return this.f16705a;
    }

    /* renamed from: a */
    public ConnectionResult m21844a(C6822e<? extends C6805a.AbstractC6809d> eVar) {
        C6864e2<? extends C6805a.AbstractC6809d> g = eVar.m21830g();
        C7021t.m21285a(this.f16705a.get(g) != null, "The given API was not part of the availability request.");
        return this.f16705a.get(g);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (C6864e2<?> e2Var : this.f16705a.keySet()) {
            ConnectionResult connectionResult = this.f16705a.get(e2Var);
            if (connectionResult.m32001K()) {
                z = false;
            }
            String a = e2Var.m21693a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 2 + String.valueOf(valueOf).length());
            sb.append(a);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }
}
