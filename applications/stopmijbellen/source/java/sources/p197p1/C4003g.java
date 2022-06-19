package p197p1;

import android.content.Context;
import android.text.TextUtils;
import p099g1.AbstractC2796b;
import p110h1.C2996c;
/* renamed from: p1.g */
/* loaded from: classes-dex2jar.jar:p1/g.class */
public class C4003g implements AbstractC2796b.AbstractC2799c {

    /* renamed from: a */
    public final /* synthetic */ Context f12576a;

    public C4003g(Context context) {
        this.f12576a = context;
    }

    @Override // p099g1.AbstractC2796b.AbstractC2799c
    /* renamed from: a */
    public AbstractC2796b mo1539a(AbstractC2796b.C2798b c2798b) {
        Context context = this.f12576a;
        String str = c2798b.f9524b;
        AbstractC2796b.AbstractC2797a abstractC2797a = c2798b.f9525c;
        if (abstractC2797a != null) {
            if (context == null) {
                throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
            }
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
            }
            return new C2996c(context, str, abstractC2797a, true);
        }
        throw new IllegalArgumentException("Must set a callback to create the configuration.");
    }
}
