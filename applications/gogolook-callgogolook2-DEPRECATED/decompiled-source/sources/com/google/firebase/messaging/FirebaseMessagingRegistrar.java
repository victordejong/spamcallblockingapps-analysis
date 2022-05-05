package com.google.firebase.messaging;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.iid.FirebaseInstanceId;
import com.mopub.common.AdType;
import java.util.Arrays;
import java.util.List;
import p081h.p203i.p204a.p206b.AbstractC6494c;
import p081h.p203i.p204a.p206b.AbstractC6496e;
import p081h.p203i.p204a.p206b.AbstractC6497f;
import p081h.p203i.p204a.p206b.AbstractC6498g;
import p081h.p203i.p204a.p206b.AbstractC6499h;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p207i.C6500a;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p326a0.AbstractC9393i;
import p081h.p203i.p325c.p326a0.C9391h;
import p081h.p203i.p325c.p336m.AbstractC9483e;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p363s.AbstractC9861d;
import p081h.p203i.p325c.p367v.AbstractC9941h;
import p081h.p203i.p325c.p372x.C9989k;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar.class */
public class FirebaseMessagingRegistrar implements AbstractC9489h {

    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$b.class */
    public static class C3676b<T> implements AbstractC6497f<T> {
        public C3676b() {
        }

        @Override // p081h.p203i.p204a.p206b.AbstractC6497f
        /* renamed from: a */
        public void mo22285a(AbstractC6494c<T> cVar) {
        }

        @Override // p081h.p203i.p204a.p206b.AbstractC6497f
        /* renamed from: a */
        public void mo22284a(AbstractC6494c<T> cVar, AbstractC6499h hVar) {
            hVar.mo14179a(null);
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$c.class */
    public static class C3677c implements AbstractC6498g {
        @Override // p081h.p203i.p204a.p206b.AbstractC6498g
        /* renamed from: a */
        public <T> AbstractC6497f<T> mo22287a(String str, Class<T> cls, C6493b bVar, AbstractC6496e<T, byte[]> eVar) {
            return new C3676b();
        }
    }

    @VisibleForTesting
    public static AbstractC6498g determineFactory(AbstractC6498g gVar) {
        return (gVar == null || !C6500a.f16183g.mo22339a().contains(C6493b.m22467a(AdType.STATIC_NATIVE))) ? new C3677c() : gVar;
    }

    public static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(AbstractC9483e eVar) {
        return new FirebaseMessaging((C9435c) eVar.mo15033a(C9435c.class), (FirebaseInstanceId) eVar.mo15033a(FirebaseInstanceId.class), (AbstractC9393i) eVar.mo15033a(AbstractC9393i.class), (AbstractC9861d) eVar.mo15033a(AbstractC9861d.class), (AbstractC9941h) eVar.mo15033a(AbstractC9941h.class), determineFactory((AbstractC6498g) eVar.mo15033a(AbstractC6498g.class)));
    }

    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    @Keep
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(FirebaseMessaging.class);
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15046c(FirebaseInstanceId.class));
        a.m15082a(C9498n.m15046c(AbstractC9393i.class));
        a.m15082a(C9498n.m15046c(AbstractC9861d.class));
        a.m15082a(C9498n.m15050a(AbstractC6498g.class));
        a.m15082a(C9498n.m15046c(AbstractC9941h.class));
        a.m15083a(C9989k.f22592a);
        a.m15086a();
        return Arrays.asList(a.m15080b(), C9391h.m15323a("fire-fcm", "20.2.3"));
    }
}
