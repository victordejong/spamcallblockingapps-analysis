package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Collections;
import java.util.List;
import p218r2.AbstractC4189g;
import p229s2.C4279a;
import p250u2.C4474m;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/datatransport/TransportRegistrar.class */
public class TransportRegistrar implements AbstractC5083g {
    public static /* synthetic */ AbstractC4189g lambda$getComponents$0(AbstractC5080d abstractC5080d) {
        C4474m.m883b((Context) abstractC5080d.mo40a(Context.class));
        return C4474m.m884a().m882c(C4279a.f13422e);
    }

    @Override // p305z4.AbstractC5083g
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4189g.class);
        m56a.m53a(new C5093m(Context.class, 1, 0));
        m56a.m50d(C1676a.f6224a);
        return Collections.singletonList(m56a.m52b());
    }
}
