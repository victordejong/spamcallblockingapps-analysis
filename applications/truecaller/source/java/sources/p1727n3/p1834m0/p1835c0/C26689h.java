package p1727n3.p1834m0.p1835c0;

import android.content.Context;
import android.text.TextUtils;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
import p1727n3.p1781e0.p1782a.p1783g.C26158b;
/* renamed from: n3.m0.c0.h */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/h.class */
public class C26689h implements AbstractC26148c.AbstractC26151c {

    /* renamed from: a */
    public final /* synthetic */ Context f74708a;

    public C26689h(Context context) {
        this.f74708a = context;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c.AbstractC26151c
    /* renamed from: a */
    public AbstractC26148c mo1435a(AbstractC26148c.C26150b c26150b) {
        Context context = this.f74708a;
        String str = c26150b.f72913b;
        AbstractC26148c.AbstractC26149a abstractC26149a = c26150b.f72914c;
        if (abstractC26149a != null) {
            if (context == null) {
                throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
            }
            AbstractC26148c.C26150b c26150b2 = new AbstractC26148c.C26150b(context, str, abstractC26149a, true);
            return new C26158b(c26150b2.f72912a, c26150b2.f72913b, c26150b2.f72914c, c26150b2.f72915d);
        }
        throw new IllegalArgumentException("Must set a callback to create the configuration.");
    }
}
