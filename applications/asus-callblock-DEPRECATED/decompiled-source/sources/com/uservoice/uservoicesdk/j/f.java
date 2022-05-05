package com.uservoice.uservoicesdk.j;

import a.a.c;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import com.b.a.n;
import com.b.a.s;
import com.b.a.u;
import com.b.a.v;
import com.b.a.w;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.g;
import com.uservoice.uservoicesdk.model.a;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/j/f.class */
public class f extends AsyncTask<String, String, e> {

    /* renamed from: a  reason: collision with root package name */
    private String f4706a;

    /* renamed from: b  reason: collision with root package name */
    private d f4707b;
    private Map<String, String> c;
    private g d;

    public f(d dVar, String str, Map<String, String> map, g gVar) {
        this.f4707b = dVar;
        this.f4706a = str;
        this.d = gVar;
        this.c = map;
    }

    private e a() {
        e eVar;
        u a2;
        try {
            u.a b2 = new u.a().b("Accept-Language").b("API-Client", String.format("uservoice-android-%s", g.b())).b("User-Agent", String.format("uservoice-android-%s", g.b()));
            String str = e.a().f4631b.f4563a;
            Uri.Builder builder = new Uri.Builder();
            builder.scheme(str.contains(".us.com") ? "http" : "https");
            builder.encodedAuthority(str);
            builder.path(this.f4706a);
            if (this.f4707b == d.GET || this.f4707b == d.DELETE) {
                b2.a(this.f4707b.toString(), (v) null);
                a(b2, builder);
            } else {
                b2.a(builder.build().toString());
                a(b2);
            }
            a2 = b2.a();
        } catch (Exception e) {
            eVar = new e(e);
        }
        if (isCancelled()) {
            throw new InterruptedException();
        }
        s sVar = new s();
        e a3 = e.a();
        if (a3.c == null) {
            if (a3.f4631b.f4564b != null) {
                a3.c = new b(a3.f4631b.f4564b, a3.f4631b.c);
            } else if (a3.g != null) {
                a3.c = new b(a3.g.h, a3.g.i);
            }
        }
        c cVar = a3.c;
        u uVar = a2;
        if (cVar != null) {
            a aVar = e.a().e;
            if (aVar != null) {
                cVar.a(aVar.f4736a, aVar.f4737b);
            }
            uVar = (u) cVar.b(a2).e();
        }
        Log.d("UV", this.f4706a);
        if (isCancelled()) {
            throw new InterruptedException();
        }
        w a4 = sVar.a(uVar).a();
        if (isCancelled()) {
            throw new InterruptedException();
        }
        int i = a4.c;
        String d = a4.g.d();
        if (isCancelled()) {
            throw new InterruptedException();
        }
        eVar = new e(i, new JSONObject(d));
        return eVar;
    }

    private void a(u.a aVar) {
        if (this.c != null) {
            n nVar = new n();
            for (Map.Entry<String, String> entry : this.c.entrySet()) {
                nVar.a(entry.getKey(), entry.getValue());
            }
            aVar.a(this.f4707b.toString(), nVar.a());
        }
    }

    private void a(u.a aVar, Uri.Builder builder) {
        if (this.c != null) {
            for (Map.Entry<String, String> entry : this.c.entrySet()) {
                builder.appendQueryParameter(entry.getKey(), entry.getValue());
            }
        }
        aVar.a(builder.build().toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(e eVar) {
        if (eVar.f4704a != null || eVar.c > 400) {
            this.d.a(eVar);
        } else {
            try {
                this.d.a(eVar.f4705b);
            } catch (JSONException e) {
                this.d.a(new e(e, eVar.c, eVar.f4705b));
            }
        }
        super.onPostExecute(eVar);
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ e doInBackground(String[] strArr) {
        return a();
    }
}
