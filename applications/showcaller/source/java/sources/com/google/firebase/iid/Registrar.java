package com.google.firebase.iid;

import androidx.annotation.Keep;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.C8849c;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.p309w.AbstractC9202a;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.p315m.AbstractC9258i;
import com.google.firebase.p315m.C9256h;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements AbstractC8868i {

    /* renamed from: com.google.firebase.iid.Registrar$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static class C9176a implements AbstractC9202a {

        /* renamed from: a */
        final FirebaseInstanceId f39519a;

        public C9176a(FirebaseInstanceId firebaseInstanceId) {
            this.f39519a = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.p309w.AbstractC9202a
        /* renamed from: a */
        public String mo1564a() {
            return this.f39519a.m1628m();
        }

        @Override // com.google.firebase.iid.p309w.AbstractC9202a
        /* renamed from: b */
        public AbstractC7966g<String> mo1563b() {
            String m1628m = this.f39519a.m1628m();
            return m1628m != null ? C7970j.m5798e(m1628m) : this.f39519a.m1632i().mo5819h(C9193q.f39555a);
        }

        @Override // com.google.firebase.iid.p309w.AbstractC9202a
        /* renamed from: c */
        public void mo1562c(AbstractC9202a.AbstractC9203a abstractC9203a) {
            this.f39519a.m1640a(abstractC9203a);
        }
    }

    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(AbstractC8861e abstractC8861e) {
        return new FirebaseInstanceId((C8849c) abstractC8861e.mo2417a(C8849c.class), abstractC8861e.mo2416b(AbstractC9258i.class), abstractC8861e.mo2416b(HeartBeatInfo.class), (AbstractC9214g) abstractC8861e.mo2417a(AbstractC9214g.class));
    }

    public static final /* synthetic */ AbstractC9202a lambda$getComponents$1$Registrar(AbstractC8861e abstractC8861e) {
        return new C9176a((FirebaseInstanceId) abstractC8861e.mo2417a(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.AbstractC8868i
    @Keep
    public List<C8858d<?>> getComponents() {
        return Arrays.asList(C8858d.m2510a(FirebaseInstanceId.class).m2495b(C8881q.m2438i(C8849c.class)).m2495b(C8881q.m2439h(AbstractC9258i.class)).m2495b(C8881q.m2439h(HeartBeatInfo.class)).m2495b(C8881q.m2438i(AbstractC9214g.class)).m2491f(C9191o.f39553a).m2494c().m2493d(), C8858d.m2510a(AbstractC9202a.class).m2495b(C8881q.m2438i(FirebaseInstanceId.class)).m2491f(C9192p.f39554a).m2493d(), C9256h.m1400a("fire-iid", "21.1.0"));
    }
}
