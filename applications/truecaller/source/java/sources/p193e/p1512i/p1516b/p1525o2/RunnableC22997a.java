package p193e.p1512i.p1516b.p1525o2;

import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.model.BannerAdUnit;
import java.lang.ref.Reference;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
/* renamed from: e.i.b.o2.a */
/* loaded from: classes-dex2jar.jar:e/i/b/o2/a.class */
public class RunnableC22997a implements Runnable {

    /* renamed from: a */
    public final C23021h f63734a = C23023i.m7583a(RunnableC22997a.class);

    /* renamed from: b */
    public final CriteoBannerAdListener f63735b;

    /* renamed from: c */
    public final Reference<CriteoBannerView> f63736c;

    /* renamed from: d */
    public final EnumC23143v2 f63737d;

    /* renamed from: e.i.b.o2.a$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/o2/a$a.class */
    public static /* synthetic */ class C22998a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f63738a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0017). Please submit an issue!!! */
        static {
            EnumC23143v2.values();
            int[] iArr = new int[6];
            f63738a = iArr;
            iArr[1] = 1;
            try {
                f63738a[0] = 2;
            } catch (NoSuchFieldError e) {
            }
            try {
                f63738a[3] = 3;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public RunnableC22997a(CriteoBannerAdListener criteoBannerAdListener, Reference<CriteoBannerView> reference, EnumC23143v2 enumC23143v2) {
        this.f63735b = criteoBannerAdListener;
        this.f63736c = reference;
        this.f63737d = enumC23143v2;
    }

    @Override // java.lang.Runnable
    public void run() {
        CriteoBannerView criteoBannerView = this.f63736c.get();
        EnumC23143v2 enumC23143v2 = this.f63737d;
        BannerAdUnit bannerAdUnit = null;
        if (enumC23143v2 == EnumC23143v2.INVALID) {
            C23021h c23021h = this.f63734a;
            StringBuilder m8728C = C22128a.m8728C("BannerView(");
            if (criteoBannerView != null) {
                bannerAdUnit = criteoBannerView.bannerAdUnit;
            }
            m8728C.append(bannerAdUnit);
            m8728C.append(") failed to load");
            c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        } else if (enumC23143v2 == EnumC23143v2.VALID) {
            C23021h c23021h2 = this.f63734a;
            StringBuilder m8728C2 = C22128a.m8728C("BannerView(");
            BannerAdUnit bannerAdUnit2 = null;
            if (criteoBannerView != null) {
                bannerAdUnit2 = criteoBannerView.bannerAdUnit;
            }
            m8728C2.append(bannerAdUnit2);
            m8728C2.append(") is loaded");
            c23021h2.m7586a(new C23019f(0, m8728C2.toString(), null, null, 13));
        }
        if (this.f63735b == null || criteoBannerView == null) {
            return;
        }
        int i = C22998a.f63738a[this.f63737d.ordinal()];
        if (i == 1) {
            this.f63735b.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
        } else if (i == 2) {
            this.f63735b.onAdReceived(criteoBannerView);
        } else if (i != 3) {
        } else {
            this.f63735b.onAdClicked();
            this.f63735b.onAdLeftApplication();
        }
    }
}
