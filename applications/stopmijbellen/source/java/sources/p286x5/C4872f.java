package p286x5;

import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import com.google.firebase.remoteconfig.RemoteConfigRegistrar;
import p211q6.C4164g;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
/* renamed from: x5.f */
/* loaded from: classes2-dex2jar.jar:x5/f.class */
public final /* synthetic */ class C4872f implements AbstractC5082f {

    /* renamed from: b */
    public static final /* synthetic */ C4872f f14931b = new C4872f(0);

    /* renamed from: c */
    public static final /* synthetic */ C4872f f14932c = new C4872f(1);

    /* renamed from: a */
    public final /* synthetic */ int f14933a;

    public /* synthetic */ C4872f(int i) {
        this.f14933a = i;
    }

    @Override // p305z4.AbstractC5082f
    /* renamed from: b */
    public final Object mo49b(AbstractC5080d abstractC5080d) {
        C4164g lambda$getComponents$0;
        AbstractC4871e lambda$getComponents$02;
        switch (this.f14933a) {
            case 0:
                lambda$getComponents$02 = FirebaseInstallationsRegistrar.lambda$getComponents$0(abstractC5080d);
                return lambda$getComponents$02;
            default:
                lambda$getComponents$0 = RemoteConfigRegistrar.lambda$getComponents$0(abstractC5080d);
                return lambda$getComponents$0;
        }
    }
}
