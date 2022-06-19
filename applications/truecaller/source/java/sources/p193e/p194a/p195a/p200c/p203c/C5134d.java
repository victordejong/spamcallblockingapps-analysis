package p193e.p194a.p195a.p200c.p203c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.conversation.draft.SharedTextDraftsArguments;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Provider;
import o3.a;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p280s0.AbstractC7249d;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import q3.a.g0;
import q3.a.g1;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/d.class */
public final class C5134d {

    /* renamed from: a */
    public final C5164v f17548a;

    /* renamed from: b */
    public final AbstractC15539j2 f17549b;

    /* renamed from: c */
    public final C5134d f17550c = this;

    /* renamed from: d */
    public Provider<g0> f17551d = new C5136b(this, 1);

    /* renamed from: e */
    public Provider<C5168z> f17552e;

    /* renamed from: f */
    public Provider<AbstractC5165w> f17553f;

    /* renamed from: e.a.a.c.c.d$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/c/d$b.class */
    public static final class C5136b<T> implements Provider<T> {

        /* renamed from: a */
        public final C5134d f17554a;

        /* renamed from: b */
        public final int f17555b;

        public C5136b(C5134d c5134d, int i) {
            this.f17554a = c5134d;
            this.f17555b = i;
        }

        public T get() {
            int i = this.f17555b;
            if (i != 0) {
                if (i != 1) {
                    throw new AssertionError(this.f17555b);
                }
                Objects.requireNonNull(this.f17554a.f17548a);
                ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
                l.d(newSingleThreadExecutor, "Executors.newSingleThreadExecutor()");
                return (T) new g1(newSingleThreadExecutor);
            }
            C5134d c5134d = this.f17554a;
            SharedTextDraftsArguments sharedTextDraftsArguments = c5134d.f17548a.f17655a;
            Objects.requireNonNull(sharedTextDraftsArguments, "Cannot return null from a non-@Nullable @Provides method");
            AbstractC5854d mo12115z5 = c5134d.f17549b.mo12115z5();
            Objects.requireNonNull(mo12115z5, "Cannot return null from a non-@Nullable component method");
            AbstractC6392i0 mo12565S = c5134d.f17549b.mo12565S();
            Objects.requireNonNull(mo12565S, "Cannot return null from a non-@Nullable component method");
            f mo12378g = c5134d.f17549b.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = c5134d.f17549b.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC7249d mo12167v7 = c5134d.f17549b.mo12167v7();
            Objects.requireNonNull(mo12167v7, "Cannot return null from a non-@Nullable component method");
            C5164v c5164v = c5134d.f17548a;
            AbstractC7283a mo12133y0 = c5134d.f17549b.mo12133y0();
            Objects.requireNonNull(mo12133y0, "Cannot return null from a non-@Nullable component method");
            C20592g mo11648b = c5134d.f17549b.mo11648b();
            Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
            f mo12378g2 = c5134d.f17549b.mo12378g();
            Objects.requireNonNull(mo12378g2, "Cannot return null from a non-@Nullable component method");
            a a = b.a(c5134d.f17551d);
            AbstractC19462a mo12776C4 = c5134d.f17549b.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c5164v);
            l.e(mo12133y0, "linkMetaDataExtractor");
            l.e(mo11648b, "featuresRegistry");
            l.e(mo12378g2, "uiContext");
            l.e(a, "linkPreviewContext");
            l.e(mo12776C4, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            return (T) new C5168z(sharedTextDraftsArguments, mo12115z5, mo12565S, mo12378g, mo12349i, mo12167v7, new C5163u(mo12133y0, mo11648b, mo12378g2, a, mo12776C4));
        }
    }

    public C5134d(C5164v c5164v, AbstractC15539j2 abstractC15539j2, C5135a c5135a) {
        this.f17548a = c5164v;
        this.f17549b = abstractC15539j2;
        C5136b c5136b = new C5136b(this, 0);
        this.f17552e = c5136b;
        this.f17553f = b.b(c5136b);
    }
}
