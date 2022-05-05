package p081h.p160h.p161a;

import android.content.Context;
import androidx.annotation.MainThread;
import com.mopub.common.MoPub;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.p164j.AbstractC6218c;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14989s;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15029u;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b��\u0018�� #2\u00020\u0001:\u0002#$B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u0015\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0001¢\u0006\u0002\b\u0019J\u0012\u0010\u001a\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0015\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0005H��¢\u0006\u0002\b\u001fJ\b\u0010 \u001a\u00020\u0015H\u0002J\u0015\u0010!\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0005H��¢\u0006\u0002\b\"R!\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R$\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��¨\u0006%"}, m815d2 = {"Lcom/gogolook/adsdk/MoPubSdkManager;", "", "()V", "internalSdkInitializationListeners", "", "Lcom/gogolook/adsdk/MoPubSdkManager$IInternalMoPubSdkInitializeListener;", "getInternalSdkInitializationListeners", "()Ljava/util/List;", "internalSdkInitializationListeners$delegate", "Lkotlin/Lazy;", "<set-?>", "", "moPubSdkInitDuration", "getMoPubSdkInitDuration", "()J", "setMoPubSdkInitDuration", "(J)V", "moPubSdkInitStartTime", "moPubSdkInitializationListener", "Lcom/mopub/common/SdkInitializationListener;", "computeSdkInitializationTime", "", "initMoPubSdk", "context", "Landroid/content/Context;", "initMoPubSdk$adsdk_whoscallRelease", "notifyInitializationFinished", "errorStatusMessage", "Lcom/gogolook/adsdk/status/AdStatusCode$ClientErrorStatusMessage;", "register", "internalSdkInitializationListener", "register$adsdk_whoscallRelease", "resetSdkInitializationTimeTracker", "unregister", "unregister$adsdk_whoscallRelease", "Companion", "IInternalMoPubSdkInitializeListener", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.d */
/* loaded from: classes2-dex2jar.jar:h/h/a/d.class */
public final class C6187d {

    /* renamed from: e */
    public static final /* synthetic */ AbstractC14906i[] f15362e;

    /* renamed from: f */
    public static volatile C6187d f15363f;

    /* renamed from: g */
    public static final C6188a f15364g = new C6188a(null);

    /* renamed from: a */
    public long f15365a;

    /* renamed from: b */
    public long f15366b;

    /* renamed from: c */
    public final AbstractC14974f f15367c;

    /* renamed from: d */
    public final SdkInitializationListener f15368d;

    /* renamed from: h.h.a.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/d$a.class */
    public static final class C6188a {
        public C6188a() {
        }

        public /* synthetic */ C6188a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C6187d m23622a() {
            C6187d dVar = C6187d.f15363f;
            if (dVar == null) {
                synchronized (this) {
                    dVar = C6187d.f15363f;
                    if (dVar == null) {
                        dVar = new C6187d(null);
                        C6187d.f15363f = dVar;
                    }
                }
            }
            return dVar;
        }

        /* renamed from: b */
        public final boolean m23621b() {
            return MoPub.getPersonalInformationManager() != null && MoPub.isSdkInitialized();
        }
    }

    /* renamed from: h.h.a.d$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/d$b.class */
    public interface AbstractC6189b {
        /* renamed from: a */
        void mo23586a(C6262a.EnumC6266d dVar, long j);
    }

    /* renamed from: h.h.a.d$c */
    /* loaded from: classes2-dex2jar.jar:h/h/a/d$c.class */
    public static final class C6190c extends AbstractC15150l implements AbstractC15107a<List<AbstractC6189b>> {

        /* renamed from: a */
        public static final C6190c f15369a = new C6190c();

        public C6190c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final List<AbstractC6189b> invoke() {
            return new ArrayList();
        }
    }

    /* renamed from: h.h.a.d$d */
    /* loaded from: classes2-dex2jar.jar:h/h/a/d$d.class */
    public static final class C6191d implements SdkInitializationListener {
        public C6191d() {
        }

        @Override // com.mopub.common.SdkInitializationListener
        public final void onInitializationFinished() {
            C6187d.this.m23627a(C6187d.f15364g.m23621b() ? null : C6262a.EnumC6266d.ERROR_MOPUB_SDK_NOT_INITIALIZE);
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6187d.class), "internalSdkInitializationListeners", "getInternalSdkInitializationListeners()Ljava/util/List;");
        C15131a0.m412a(sVar);
        f15362e = new AbstractC14906i[]{sVar};
    }

    public C6187d() {
        this.f15365a = -1L;
        this.f15366b = -1L;
        this.f15367c = C14975g.m662a(C6190c.f15369a);
        this.f15368d = new C6191d();
    }

    public /* synthetic */ C6187d(C15145g gVar) {
        this();
    }

    /* renamed from: a */
    public final void m23632a() {
        long j = -1;
        if (this.f15365a != -1) {
            j = System.currentTimeMillis() - this.f15365a;
        }
        this.f15366b = j;
    }

    @MainThread
    /* renamed from: a */
    public final void m23631a(Context context) {
        C15149k.m377b(context, "context");
        AbstractC6218c a = C6199g.m23591a();
        if (a != null) {
            String a2 = a.mo23555a();
            if (!(a2.length() > 0)) {
                a2 = null;
            }
            if (a2 != null) {
                if (this.f15365a == -1 || !f15364g.m23621b()) {
                    this.f15365a = System.currentTimeMillis();
                }
                MoPub.initializeSdk(context, new SdkConfiguration.Builder(a2).build(), this.f15368d);
            } else {
                m23627a(C6262a.EnumC6266d.ERROR_MOPUB_SDK_INIT_AD_UNIT_ID_INVALID);
            }
            if (a != null) {
                return;
            }
        }
        m23627a(C6262a.EnumC6266d.ERROR_MOPUB_AD_CONFIGURATION_IS_NULL);
        C14989s sVar = C14989s.f33022a;
    }

    /* renamed from: a */
    public final void m23630a(AbstractC6189b bVar) {
        C15149k.m377b(bVar, "internalSdkInitializationListener");
        if (!m23626b().contains(bVar)) {
            m23626b().add(bVar);
        }
    }

    /* renamed from: a */
    public final void m23627a(C6262a.EnumC6266d dVar) {
        m23632a();
        for (AbstractC6189b bVar : C15029u.m515k(m23626b())) {
            bVar.mo23586a(dVar, this.f15366b);
        }
        m23624c();
    }

    /* renamed from: b */
    public final List<AbstractC6189b> m23626b() {
        AbstractC14974f fVar = this.f15367c;
        AbstractC14906i iVar = f15362e[0];
        return (List) fVar.getValue();
    }

    /* renamed from: b */
    public final void m23625b(AbstractC6189b bVar) {
        C15149k.m377b(bVar, "internalSdkInitializationListener");
        if (m23626b().contains(bVar)) {
            m23626b().remove(bVar);
        }
    }

    /* renamed from: c */
    public final void m23624c() {
        this.f15365a = -1L;
    }
}
