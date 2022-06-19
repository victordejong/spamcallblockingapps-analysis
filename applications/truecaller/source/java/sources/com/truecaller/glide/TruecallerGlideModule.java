package com.truecaller.glide;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import e.f.a.p.a;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.C22224d;
import p193e.p1451f.p1452a.C22228g;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1475q.C22581e;
import p193e.p194a.p1406z3.AbstractC21850b;
import p193e.p194a.p1406z3.p1407g.C21855a;
import p193e.p194a.p1406z3.p1407g.C21863d;
import p193e.p194a.p1406z3.p1407g.C21866g;
import p193e.p194a.p1406z3.p1409i.C21870b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/truecaller/glide/TruecallerGlideModule;", "Le/f/a/p/a;", "Landroid/content/Context;", "appContext", "Le/f/a/c;", "glide", "Le/f/a/g;", "registry", "Ls1/s;", C22021b.f61237c, "(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V", "", AbstractC2405c.f7629a, "()Z", AnalyticsConstants.CONTEXT, "Le/f/a/d;", "builder", "a", "(Landroid/content/Context;Le/f/a/d;)V", "<init>", "()V", "glide-support_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/glide/TruecallerGlideModule.class */
public final class TruecallerGlideModule extends a {
    /* renamed from: a */
    public void m35306a(Context context, C22224d c22224d) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(c22224d, "builder");
        c22224d.f61731k = 6;
    }

    /* renamed from: b */
    public void m35305b(Context context, ComponentCallbacks2C22222c componentCallbacks2C22222c, C22228g c22228g) {
        l.e(context, "appContext");
        l.e(componentCallbacks2C22222c, "glide");
        l.e(c22228g, "registry");
        c22228g.m8437g(Uri.class, InputStream.class, new C21863d(context));
        c22228g.m8437g(Uri.class, ByteBuffer.class, new C21855a.C21859b(context));
        C21870b c21870b = new C21870b();
        C22581e c22581e = c22228g.f61754c;
        synchronized (c22581e) {
            c22581e.m8117a("legacy_prepend_all").add(0, new C22581e.C22582a<>(InputStream.class, BitmapFactory.Options.class, c21870b));
        }
        if (context instanceof AbstractC21850b) {
            c22228g.m8437g(Uri.class, InputStream.class, new C21866g((AbstractC21850b) context));
        }
    }

    /* renamed from: c */
    public boolean m35304c() {
        return false;
    }
}
