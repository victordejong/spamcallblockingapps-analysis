package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.os.Bundle;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.r1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/r1.class */
public final class C9047r1 {

    /* renamed from: a */
    public final Context f20584a;

    /* renamed from: b */
    public String f20585b;

    /* renamed from: c */
    public String f20586c;

    /* renamed from: d */
    public String f20587d;

    /* renamed from: e */
    public boolean f20588e;

    /* renamed from: f */
    public Boolean f20589f;

    public C9047r1(Context context, C8997j jVar) {
        this.f20588e = true;
        C7021t.m21290a(context);
        Context applicationContext = context.getApplicationContext();
        C7021t.m21290a(applicationContext);
        this.f20584a = applicationContext;
        if (jVar != null) {
            this.f20585b = jVar.f20444f;
            this.f20586c = jVar.f20443e;
            this.f20587d = jVar.f20442d;
            this.f20588e = jVar.f20441c;
            Bundle bundle = jVar.f20445g;
            if (bundle != null) {
                this.f20589f = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
