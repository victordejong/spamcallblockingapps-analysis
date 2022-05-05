package p081h.p160h.p161a;

import android.content.Context;
import androidx.annotation.MainThread;
import com.mopub.common.MoPub;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import kotlin.Metadata;
import p081h.p160h.p161a.C6187d;
import p081h.p160h.p161a.p164j.AbstractC6218c;
import p081h.p160h.p161a.p167m.AbstractC6259c;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u001c\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u000fH\u0007R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n��¨\u0006\u0016"}, m815d2 = {"Lcom/gogolook/adsdk/WCAdSdk;", "", "()V", "moPubAdUnitConfiguration", "Lcom/gogolook/adsdk/config/IMoPubAdUnitConfiguration;", "moPubAdUnitConfiguration$annotations", "getMoPubAdUnitConfiguration", "()Lcom/gogolook/adsdk/config/IMoPubAdUnitConfiguration;", "setMoPubAdUnitConfiguration", "(Lcom/gogolook/adsdk/config/IMoPubAdUnitConfiguration;)V", "version", "", "enableNativeBrowser", "", AdsSettingsKt.KEY_ENABLE, "", "initMoPubSdk", "context", "Landroid/content/Context;", "listener", "Lcom/gogolook/adsdk/listener/IMoPubSdkInitializeListener;", "isMoPubSdkInitialized", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.g */
/* loaded from: classes2-dex2jar.jar:h/h/a/g.class */
public final class C6199g {

    /* renamed from: a */
    public static AbstractC6218c f15394a;

    /* renamed from: h.h.a.g$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/g$a.class */
    public static final class C6200a implements C6187d.AbstractC6189b {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6259c f15395a;

        public C6200a(AbstractC6259c cVar) {
            this.f15395a = cVar;
        }

        @Override // p081h.p160h.p161a.C6187d.AbstractC6189b
        /* renamed from: a */
        public void mo23586a(C6262a.EnumC6266d dVar, long j) {
            C6187d.f15364g.m23622a().m23625b(this);
            AbstractC6259c cVar = this.f15395a;
            if (cVar != null) {
                cVar.mo6256a(dVar, j);
            }
        }
    }

    static {
        new C6199g();
    }

    /* renamed from: a */
    public static final AbstractC6218c m23591a() {
        return f15394a;
    }

    @MainThread
    /* renamed from: a */
    public static final void m23590a(Context context, AbstractC6259c cVar) {
        C15149k.m377b(context, "context");
        C6187d.f15364g.m23622a().m23630a(new C6200a(cVar));
        C6187d.f15364g.m23622a().m23631a(context);
    }

    /* renamed from: a */
    public static final void m23589a(AbstractC6218c cVar) {
        f15394a = cVar;
    }

    /* renamed from: a */
    public static final void m23588a(boolean z) {
        if (z) {
            MoPub.setBrowserAgent(MoPub.BrowserAgent.NATIVE);
        } else {
            MoPub.setBrowserAgent(MoPub.BrowserAgent.IN_APP);
        }
    }

    /* renamed from: b */
    public static final boolean m23587b() {
        return C6187d.f15364g.m23621b();
    }
}
