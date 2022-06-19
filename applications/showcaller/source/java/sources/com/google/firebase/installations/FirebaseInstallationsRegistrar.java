package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.C8849c;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.p315m.AbstractC9258i;
import com.google.firebase.p315m.C9256h;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC8868i {
    public static /* synthetic */ AbstractC9214g lambda$getComponents$0(AbstractC8861e abstractC8861e) {
        return new C9211f((C8849c) abstractC8861e.mo2417a(C8849c.class), abstractC8861e.mo2416b(AbstractC9258i.class), abstractC8861e.mo2416b(HeartBeatInfo.class));
    }

    @Override // com.google.firebase.components.AbstractC8868i
    public List<C8858d<?>> getComponents() {
        return Arrays.asList(C8858d.m2510a(AbstractC9214g.class).m2495b(C8881q.m2438i(C8849c.class)).m2495b(C8881q.m2439h(HeartBeatInfo.class)).m2495b(C8881q.m2439h(AbstractC9258i.class)).m2491f(C9215h.m1530b()).m2493d(), C9256h.m1400a("fire-installations", "16.3.5"));
    }
}
