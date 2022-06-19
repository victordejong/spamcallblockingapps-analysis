package p254u6;

import android.support.p012v4.media.AbstractC0081a;
import android.support.p012v4.media.C0082b;
import p233s6.AbstractC4320o;
/* renamed from: u6.h */
/* loaded from: classes-dex2jar.jar:u6/h.class */
public final class C4531h implements AbstractC4320o {

    /* renamed from: a */
    public final /* synthetic */ Class f13932a;

    /* renamed from: b */
    public final /* synthetic */ Class f13933b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC0081a f13934c;

    public C4531h(Class cls, Class cls2, AbstractC0081a abstractC0081a) {
        this.f13932a = cls;
        this.f13933b = cls2;
        this.f13934c = abstractC0081a;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("Factory[type=");
        m8752j.append(this.f13933b.getName());
        m8752j.append("+");
        m8752j.append(this.f13932a.getName());
        m8752j.append(",adapter=");
        m8752j.append(this.f13934c);
        m8752j.append("]");
        return m8752j.toString();
    }
}
