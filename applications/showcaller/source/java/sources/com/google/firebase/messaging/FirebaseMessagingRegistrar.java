package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.AbstractC4646e;
import com.google.android.datatransport.AbstractC4647f;
import com.google.android.datatransport.AbstractC4648g;
import com.google.android.datatransport.C4602b;
import com.google.firebase.C8849c;
import com.google.firebase.components.AbstractC8861e;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.p309w.AbstractC9202a;
import com.google.firebase.installations.AbstractC9214g;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p315m.AbstractC9258i;
import com.google.firebase.p315m.C9256h;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar.class */
public class FirebaseMessagingRegistrar implements AbstractC8868i {

    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$b.class */
    private static class C9262b<T> implements AbstractC4646e<T> {
        private C9262b() {
        }

        @Override // com.google.android.datatransport.AbstractC4646e
        /* renamed from: a */
        public void mo1363a(AbstractC4603c<T> abstractC4603c) {
        }

        @Override // com.google.android.datatransport.AbstractC4646e
        /* renamed from: b */
        public void mo1362b(AbstractC4603c<T> abstractC4603c, AbstractC4648g abstractC4648g) {
            abstractC4648g.mo1989a(null);
        }
    }

    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$c.class */
    public static class C9263c implements AbstractC4647f {
        @Override // com.google.android.datatransport.AbstractC4647f
        /* renamed from: a */
        public <T> AbstractC4646e<T> mo1361a(String str, Class<T> cls, C4602b c4602b, AbstractC4645d<T, byte[]> abstractC4645d) {
            return new C9262b();
        }
    }

    static AbstractC4647f determineFactory(AbstractC4647f abstractC4647f) {
        if (abstractC4647f == null) {
            return new C9263c();
        }
        try {
            abstractC4647f.mo1361a("test", String.class, C4602b.m22183b("json"), C9318w.f39879a);
            return abstractC4647f;
        } catch (IllegalArgumentException e) {
            return new C9263c();
        }
    }

    public static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(AbstractC8861e abstractC8861e) {
        return new FirebaseMessaging((C8849c) abstractC8861e.mo2417a(C8849c.class), (AbstractC9202a) abstractC8861e.mo2417a(AbstractC9202a.class), abstractC8861e.mo2416b(AbstractC9258i.class), abstractC8861e.mo2416b(HeartBeatInfo.class), (AbstractC9214g) abstractC8861e.mo2417a(AbstractC9214g.class), determineFactory((AbstractC4647f) abstractC8861e.mo2417a(AbstractC4647f.class)), (AbstractC9245d) abstractC8861e.mo2417a(AbstractC9245d.class));
    }

    @Override // com.google.firebase.components.AbstractC8868i
    @Keep
    public List<C8858d<?>> getComponents() {
        return Arrays.asList(C8858d.m2510a(FirebaseMessaging.class).m2495b(C8881q.m2438i(C8849c.class)).m2495b(C8881q.m2440g(AbstractC9202a.class)).m2495b(C8881q.m2439h(AbstractC9258i.class)).m2495b(C8881q.m2439h(HeartBeatInfo.class)).m2495b(C8881q.m2440g(AbstractC4647f.class)).m2495b(C8881q.m2438i(AbstractC9214g.class)).m2495b(C8881q.m2438i(AbstractC9245d.class)).m2491f(C9316v.f39877a).m2494c().m2493d(), C9256h.m1400a("fire-fcm", "20.1.7_1p"));
    }
}
