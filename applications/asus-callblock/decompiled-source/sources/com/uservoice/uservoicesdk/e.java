package com.uservoice.uservoicesdk;

import a.a.c;
import android.content.Context;
import android.content.SharedPreferences;
import com.uservoice.uservoicesdk.k.b;
import com.uservoice.uservoicesdk.model.Topic;
import com.uservoice.uservoicesdk.model.a;
import com.uservoice.uservoicesdk.model.h;
import com.uservoice.uservoicesdk.model.i;
import com.uservoice.uservoicesdk.model.k;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e.class */
public class e {
    private static final String l = e.class.getSimpleName();
    private static e m = new e();

    /* renamed from: a  reason: collision with root package name */
    public Context f4630a;

    /* renamed from: b  reason: collision with root package name */
    public a f4631b;
    public c c;
    public i d;
    public a e;
    public k f;
    public com.uservoice.uservoicesdk.model.e g;
    public h h;
    public List<Topic> i;
    public Map<String, String> j = new HashMap();
    public Runnable k;

    private e() {
    }

    public static e a() {
        return m;
    }

    public static void b() {
        m = new e();
        g.c = true;
        b.a(l, "Session reset, session is " + m);
    }

    public final void a(a aVar) {
        this.e = aVar;
        aVar.a(e(), "access_token", "access_token");
        if (this.k != null) {
            this.k.run();
        }
    }

    public final void a(k kVar) {
        this.f = kVar;
        a(kVar.f4765a, kVar.f4766b);
    }

    public final void a(String str, String str2) {
        SharedPreferences.Editor edit = e().edit();
        edit.putString("user_name", str);
        edit.putString("user_email", str2);
        edit.commit();
    }

    public final String c() {
        return this.f != null ? this.f.f4765a : e().getString("user_name", null);
    }

    public final String d() {
        return this.f != null ? this.f.f4766b : e().getString("user_email", null);
    }

    public final SharedPreferences e() {
        return this.f4630a.getSharedPreferences("uv_" + this.f4631b.f4563a.replaceAll("\\W", "_"), 0);
    }
}
