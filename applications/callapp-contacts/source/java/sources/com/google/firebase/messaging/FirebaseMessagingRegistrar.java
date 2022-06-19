package com.google.firebase.messaging;

import com.google.android.datatransport.AbstractC10628c;
import com.google.android.datatransport.AbstractC10677e;
import com.google.android.datatransport.AbstractC10678f;
import com.google.android.datatransport.AbstractC10679g;
import com.google.android.datatransport.AbstractC10680h;
import com.google.android.datatransport.C10627b;
import com.google.firebase.C15601b;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.iid.p395a.AbstractC15760a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p394f.AbstractC15754i;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar.class */
public class FirebaseMessagingRegistrar implements AbstractC15634i {

    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$a.class */
    static final class C15834a<T> implements AbstractC10678f<T> {
        private C15834a() {
        }

        @Override // com.google.android.datatransport.AbstractC10678f
        /* renamed from: a */
        public final void mo8247a(AbstractC10628c<T> abstractC10628c) {
        }

        @Override // com.google.android.datatransport.AbstractC10678f
        /* renamed from: a */
        public final void mo8246a(AbstractC10628c<T> abstractC10628c, AbstractC10680h abstractC10680h) {
            abstractC10680h.onSchedule(null);
        }
    }

    /* renamed from: com.google.firebase.messaging.FirebaseMessagingRegistrar$b */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$b.class */
    public static final class C15835b implements AbstractC10679g {
        @Override // com.google.android.datatransport.AbstractC10679g
        /* renamed from: a */
        public final <T> AbstractC10678f<T> mo8245a(String str, C10627b c10627b, AbstractC10677e<T, byte[]> abstractC10677e) {
            return new C15834a();
        }
    }

    static AbstractC10679g determineFactory(AbstractC10679g abstractC10679g) {
        if (abstractC10679g == null) {
            return new C15835b();
        }
        try {
            abstractC10679g.mo8245a("test", C10627b.m22610a("json"), C15896x.f56444a);
            return abstractC10679g;
        } catch (IllegalArgumentException e) {
            return new C15835b();
        }
    }

    public static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(AbstractC15627e abstractC15627e) {
        return new FirebaseMessaging((C15601b) abstractC15627e.mo8532a(C15601b.class), (AbstractC15760a) abstractC15627e.mo8532a(AbstractC15760a.class), abstractC15627e.mo8522c(AbstractC15754i.class), abstractC15627e.mo8522c(AbstractC15616f.class), (AbstractC15822h) abstractC15627e.mo8532a(AbstractC15822h.class), determineFactory((AbstractC10679g) abstractC15627e.mo8532a(AbstractC10679g.class)), (AbstractC15609d) abstractC15627e.mo8532a(AbstractC15609d.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(FirebaseMessaging.class).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8512a(AbstractC15760a.class)).m8544a(C15648r.m8508d(AbstractC15754i.class)).m8544a(C15648r.m8508d(AbstractC15616f.class)).m8544a(C15648r.m8512a(AbstractC10679g.class)).m8544a(C15648r.m8510b(AbstractC15822h.class)).m8544a(C15648r.m8510b(AbstractC15609d.class)).m8545a(C15895w.f56443a).m8546a(1).m8547a(), C15751g.m8457a("fire-fcm", "20.1.7_1p"));
    }
}
