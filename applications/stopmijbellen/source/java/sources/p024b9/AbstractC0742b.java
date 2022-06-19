package p024b9;

import com.raizlabs.android.dbflow.config.AbstractC2116c;
import com.raizlabs.android.dbflow.config.C2118e;
import com.raizlabs.android.dbflow.config.FlowManager;
import p034c9.AbstractC0859f;
import p034c9.C0860g;
import p278w8.C4785l;
import p309z8.C5114a;
import p309z8.C5115b;
/* renamed from: b9.b */
/* loaded from: classes2-dex2jar.jar:b9/b.class */
public abstract class AbstractC0742b<TModel> {

    /* renamed from: a */
    public C5115b<Object> f2814a;

    /* renamed from: b */
    public C5114a<Object> f2815b;

    public AbstractC0742b(AbstractC2116c abstractC2116c) {
        C2118e m3911b = FlowManager.m3911b();
        if (m3911b.f7688b.get(abstractC2116c.mo3895f()) == null) {
            return;
        }
        mo2690b();
        throw null;
    }

    /* renamed from: a */
    public abstract boolean mo2691a(Object obj, AbstractC0859f abstractC0859f);

    /* renamed from: b */
    public abstract Class<Object> mo2690b();

    /* renamed from: c */
    public abstract C4785l mo2689c(Object obj);

    /* renamed from: d */
    public abstract void mo2688d(C0860g c0860g, Object obj);

    /* renamed from: e */
    public abstract TModel mo2687e();
}
