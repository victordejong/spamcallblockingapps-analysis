package com.iab.omid.library.pubmatic.p012b;

import android.content.Context;
import com.iab.omid.library.pubmatic.adsession.C1753a;
/* renamed from: com.iab.omid.library.pubmatic.b.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/b.class */
public class C1756b {

    /* renamed from: a */
    private static C1756b f233a = new C1756b();

    /* renamed from: b */
    private Context f234b;

    /* renamed from: c */
    private boolean f235c;

    /* renamed from: d */
    private boolean f236d;

    /* renamed from: e */
    private AbstractC1757a f237e;

    /* renamed from: com.iab.omid.library.pubmatic.b.b$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/b/b$a.class */
    public interface AbstractC1757a {
    }

    private C1756b() {
    }

    /* renamed from: a */
    public static C1756b m1299a() {
        return f233a;
    }

    /* renamed from: e */
    private void m1293e() {
        boolean z = this.f236d;
        for (C1753a c1753a : C1755a.m1306a().m1304b()) {
            c1753a.getAdSessionStatePublisher().m1196a(!z);
        }
    }

    /* renamed from: a */
    public void m1298a(Context context) {
        this.f234b = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m1297a(AbstractC1757a abstractC1757a) {
        this.f237e = abstractC1757a;
    }

    /* renamed from: b */
    public void m1296b() {
        this.f235c = true;
        m1293e();
    }

    /* renamed from: c */
    public void m1295c() {
        this.f235c = false;
        this.f236d = false;
        this.f237e = null;
    }

    /* renamed from: d */
    public boolean m1294d() {
        return !this.f236d;
    }
}
