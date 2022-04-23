package p131c.p372f.p373a.p374a.p375a.p381m;

import android.app.Activity;
import android.view.View;
import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import java.util.UUID;
import p131c.p372f.p373a.p374a.p375a.C6406d;
import p131c.p372f.p373a.p374a.p375a.p378j.AbstractC6418a;
/* renamed from: c.f.a.a.a.m.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/a.class */
public abstract class AbstractC6427a<T extends View> {

    /* renamed from: a */
    public String f20110a = UUID.randomUUID().toString();

    /* renamed from: a */
    public void m20897a() {
        InternalAvidAdSession a = C6406d.m20955e().m20959a(m20894b());
        if (a != null) {
            a.mo5439m();
        }
    }

    /* renamed from: a */
    public void m20896a(View view) {
        InternalAvidAdSession a = C6406d.m20955e().m20959a(m20894b());
        if (a != null) {
            a.m5446f().m20875a(view);
        }
    }

    /* renamed from: a */
    public void m20895a(T t, Activity activity) {
        InternalAvidAdSession a = C6406d.m20955e().m20959a(this.f20110a);
        if (a != null) {
            a.m5453b((InternalAvidAdSession) t);
        }
        C6406d.m20955e().m20962a(activity);
    }

    /* renamed from: b */
    public String m20894b() {
        return this.f20110a;
    }

    /* renamed from: b */
    public void m20893b(T t) {
        InternalAvidAdSession a = C6406d.m20955e().m20959a(this.f20110a);
        if (a != null) {
            a.m5449c(t);
        }
    }

    /* renamed from: c */
    public AbstractC6418a m20892c() {
        InternalAvidAdSession a = C6406d.m20955e().m20959a(m20894b());
        AbstractC6418a d = a != null ? a.m5448d() : null;
        if (d != null) {
            return d;
        }
        throw new IllegalStateException("The AVID ad session is not deferred. Please ensure you are only using AvidDeferredAdSessionListener for deferred AVID ad session.");
    }
}
