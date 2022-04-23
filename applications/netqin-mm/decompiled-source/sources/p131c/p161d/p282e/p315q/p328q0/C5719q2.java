package p131c.p161d.p282e.p315q.p328q0;

import android.os.Bundle;
import com.google.firebase.inappmessaging.CampaignAnalytics;
import com.google.firebase.inappmessaging.DismissType;
import com.google.firebase.inappmessaging.EventType;
import com.google.firebase.inappmessaging.FirebaseInAppMessagingDisplayCallbacks;
import com.google.firebase.inappmessaging.RenderErrorReason;
import com.google.firebase.inappmessaging.model.MessageType;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p315q.C5480b;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
import p131c.p161d.p282e.p315q.p333r0.C5848c;
import p131c.p161d.p282e.p315q.p333r0.C5855f;
import p131c.p161d.p282e.p315q.p333r0.C5860h;
import p131c.p161d.p282e.p315q.p333r0.C5864j;
import p131c.p161d.p282e.p335s.AbstractC5898g;
/* renamed from: c.d.e.q.q0.q2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/q2.class */
public class C5719q2 {

    /* renamed from: g */
    public static final Map<FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason, RenderErrorReason> f18880g = new HashMap();

    /* renamed from: h */
    public static final Map<FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType, DismissType> f18881h = new HashMap();

    /* renamed from: a */
    public final AbstractC5721b f18882a;

    /* renamed from: b */
    public final C5128c f18883b;

    /* renamed from: c */
    public final AbstractC5898g f18884c;

    /* renamed from: d */
    public final AbstractC5814a f18885d;

    /* renamed from: e */
    public final AbstractC5143a f18886e;

    /* renamed from: f */
    public final C5730s f18887f;

    /* renamed from: c.d.e.q.q0.q2$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/q2$a.class */
    public static /* synthetic */ class C5720a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18888a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessageType.values().length];
            f18888a = iArr;
            try {
                iArr[MessageType.CARD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18888a[MessageType.MODAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18888a[MessageType.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18888a[MessageType.IMAGE_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: c.d.e.q.q0.q2$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/q2$b.class */
    public interface AbstractC5721b {
        /* renamed from: a */
        void mo23004a(byte[] bArr);
    }

    static {
        f18880g.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.UNSPECIFIED_RENDER_ERROR, RenderErrorReason.UNSPECIFIED_RENDER_ERROR);
        f18880g.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.IMAGE_FETCH_ERROR, RenderErrorReason.IMAGE_FETCH_ERROR);
        f18880g.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.IMAGE_DISPLAY_ERROR, RenderErrorReason.IMAGE_DISPLAY_ERROR);
        f18880g.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason.IMAGE_UNSUPPORTED_FORMAT, RenderErrorReason.IMAGE_UNSUPPORTED_FORMAT);
        f18881h.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.AUTO, DismissType.AUTO);
        f18881h.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.CLICK, DismissType.CLICK);
        f18881h.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.SWIPE, DismissType.SWIPE);
        f18881h.put(FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType.UNKNOWN_DISMISS_TYPE, DismissType.UNKNOWN_DISMISS_TYPE);
    }

    public C5719q2(AbstractC5721b bVar, AbstractC5143a aVar, C5128c cVar, AbstractC5898g gVar, AbstractC5814a aVar2, C5730s sVar) {
        this.f18882a = bVar;
        this.f18886e = aVar;
        this.f18883b = cVar;
        this.f18884c = gVar;
        this.f18885d = aVar2;
        this.f18887f = sVar;
    }

    /* renamed from: a */
    public Bundle m23146a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("_nmid", str2);
        bundle.putString("_nmn", str);
        try {
            bundle.putInt("_ndt", (int) (this.f18885d.mo22976a() / 1000));
        } catch (NumberFormatException e) {
            C5694l2.m23213d("Error while parsing use_device_time in FIAM event: " + e.getMessage());
        }
        return bundle;
    }

    /* renamed from: a */
    public final CampaignAnalytics.C7822b m23151a(AbstractC5863i iVar, String str) {
        CampaignAnalytics.C7822b w = CampaignAnalytics.m7342w();
        w.m7335b("19.1.2");
        w.m7334c(this.f18883b.m24464d().m24444c());
        w.m7336a(iVar.m22863a().m22891a());
        C5480b.C5482b w2 = C5480b.m23702w();
        w2.m23700b(this.f18883b.m24464d().m24445b());
        w2.m23701a(str);
        w.m7340a(w2);
        w.m7341a(this.f18885d.mo22976a());
        return w;
    }

    /* renamed from: a */
    public final CampaignAnalytics m23150a(AbstractC5863i iVar, String str, DismissType dismissType) {
        CampaignAnalytics.C7822b a = m23151a(iVar, str);
        a.m7339a(dismissType);
        return a.mo6937a();
    }

    /* renamed from: a */
    public final CampaignAnalytics m23149a(AbstractC5863i iVar, String str, EventType eventType) {
        CampaignAnalytics.C7822b a = m23151a(iVar, str);
        a.m7338a(eventType);
        return a.mo6937a();
    }

    /* renamed from: a */
    public final CampaignAnalytics m23148a(AbstractC5863i iVar, String str, RenderErrorReason renderErrorReason) {
        CampaignAnalytics.C7822b a = m23151a(iVar, str);
        a.m7337a(renderErrorReason);
        return a.mo6937a();
    }

    /* renamed from: a */
    public void m23154a(AbstractC5863i iVar, C5842a aVar) {
        if (!m23144b(iVar)) {
            this.f18884c.getId().mo8613a(C5704n2.m23181a(this, iVar));
            m23147a(iVar, "fiam_action", true);
        }
        this.f18887f.m23116a(iVar, aVar);
    }

    /* renamed from: a */
    public void m23153a(AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingDismissType inAppMessagingDismissType) {
        if (!m23144b(iVar)) {
            this.f18884c.getId().mo8613a(C5714p2.m23169a(this, iVar, inAppMessagingDismissType));
            m23147a(iVar, "fiam_dismiss", false);
        }
        this.f18887f.m23114b(iVar);
    }

    /* renamed from: a */
    public void m23152a(AbstractC5863i iVar, FirebaseInAppMessagingDisplayCallbacks.InAppMessagingErrorReason inAppMessagingErrorReason) {
        if (!m23144b(iVar)) {
            this.f18884c.getId().mo8613a(C5709o2.m23175a(this, iVar, inAppMessagingErrorReason));
        }
        this.f18887f.m23115a(iVar, inAppMessagingErrorReason);
    }

    /* renamed from: a */
    public final void m23147a(AbstractC5863i iVar, String str, boolean z) {
        String a = iVar.m22863a().m22891a();
        Bundle a2 = m23146a(iVar.m22863a().m22890b(), a);
        C5694l2.m23216a("Sending event=" + str + " params=" + a2);
        AbstractC5143a aVar = this.f18886e;
        if (aVar != null) {
            aVar.mo23137b("fiam", str, a2);
            if (z) {
                AbstractC5143a aVar2 = this.f18886e;
                aVar2.mo23140a("fiam", "_ln", "fiam:" + a);
                return;
            }
            return;
        }
        C5694l2.m23213d("Unable to log event: analytics library is missing");
    }

    /* renamed from: a */
    public final boolean m23156a(C5842a aVar) {
        return (aVar == null || aVar.m22914a() == null || aVar.m22914a().isEmpty()) ? false : true;
    }

    /* renamed from: a */
    public final boolean m23155a(AbstractC5863i iVar) {
        int i = C5720a.f18888a[iVar.m22862c().ordinal()];
        if (i == 1) {
            C5855f fVar = (C5855f) iVar;
            boolean a = m23156a(fVar.m22884h());
            boolean a2 = m23156a(fVar.m22883i());
            boolean z = false;
            if (!a) {
                z = false;
                if (!a2) {
                    z = true;
                }
            }
            return z;
        } else if (i == 2) {
            return !m23156a(((C5864j) iVar).m22860d());
        } else {
            if (i == 3) {
                return !m23156a(((C5848c) iVar).m22908d());
            }
            if (i == 4) {
                return !m23156a(((C5860h) iVar).m22868d());
            }
            C5694l2.m23215b("Unable to determine if impression should be counted as conversion.");
            return false;
        }
    }

    /* renamed from: b */
    public final boolean m23144b(AbstractC5863i iVar) {
        return iVar.m22863a().m22889c();
    }

    /* renamed from: c */
    public void m23143c(AbstractC5863i iVar) {
        if (!m23144b(iVar)) {
            this.f18884c.getId().mo8613a(C5699m2.m23190a(this, iVar));
            m23147a(iVar, "fiam_impression", m23155a(iVar));
        }
        this.f18887f.m23117a(iVar);
    }
}
