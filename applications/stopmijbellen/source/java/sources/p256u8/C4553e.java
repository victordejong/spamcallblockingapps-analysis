package p256u8;

import com.raizlabs.android.dbflow.config.FlowManager;
import p024b9.AbstractC0744d;
import p024b9.C0740a;
/* renamed from: u8.e */
/* loaded from: classes2-dex2jar.jar:u8/e.class */
public class C4553e implements AbstractC4552d {

    /* renamed from: a */
    public static C4553e f13982a;

    /* renamed from: c */
    public static C4553e m844c() {
        if (f13982a == null) {
            f13982a = new C4553e();
        }
        return f13982a;
    }

    @Override // p256u8.AbstractC4552d
    /* renamed from: a */
    public <TModel> void mo846a(TModel tmodel, AbstractC0744d<TModel> abstractC0744d, C0740a.EnumC0741a enumC0741a) {
        FlowManager.m3905h(abstractC0744d.mo2690b()).mo846a(tmodel, abstractC0744d, enumC0741a);
    }

    @Override // p256u8.AbstractC4552d
    /* renamed from: b */
    public <TModel> void mo845b(Class<TModel> cls, C0740a.EnumC0741a enumC0741a) {
        FlowManager.m3905h(cls).mo845b(cls, enumC0741a);
    }
}
