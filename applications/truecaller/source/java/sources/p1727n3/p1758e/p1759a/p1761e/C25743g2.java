package p1727n3.p1758e.p1759a.p1761e;

import android.hardware.camera2.CameraCaptureSession;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2;
/* renamed from: n3.e.a.e.g2 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/g2.class */
public final class C25743g2 extends AbstractC25721b2.AbstractC25722a {

    /* renamed from: a */
    public final List<AbstractC25721b2.AbstractC25722a> f72115a;

    /* renamed from: n3.e.a.e.g2$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/g2$a.class */
    public static class C25744a extends AbstractC25721b2.AbstractC25722a {

        /* renamed from: a */
        public final CameraCaptureSession.StateCallback f72116a;

        public C25744a(List<CameraCaptureSession.StateCallback> list) {
            this.f72116a = list.isEmpty() ? new C25834l1() : list.size() == 1 ? list.get(0) : new C25763k1(list);
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: l */
        public void mo3007l(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onActive(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: m */
        public void mo3006m(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onCaptureQueueEmpty(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: n */
        public void mo3005n(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onClosed(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: o */
        public void mo2954o(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onConfigureFailed(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: p */
        public void mo2953p(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onConfigured(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: q */
        public void mo2952q(AbstractC25721b2 abstractC25721b2) {
            this.f72116a.onReady(abstractC25721b2.mo3019f().m2998a());
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: r */
        public void mo2951r(AbstractC25721b2 abstractC25721b2) {
        }

        @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
        /* renamed from: s */
        public void mo3004s(AbstractC25721b2 abstractC25721b2, Surface surface) {
            this.f72116a.onSurfacePrepared(abstractC25721b2.mo3019f().m2998a(), surface);
        }
    }

    public C25743g2(List<AbstractC25721b2.AbstractC25722a> list) {
        ArrayList arrayList = new ArrayList();
        this.f72115a = arrayList;
        arrayList.addAll(list);
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: l */
    public void mo3007l(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo3007l(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: m */
    public void mo3006m(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo3006m(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: n */
    public void mo3005n(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo3005n(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: o */
    public void mo2954o(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo2954o(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: p */
    public void mo2953p(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo2953p(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: q */
    public void mo2952q(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo2952q(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: r */
    public void mo2951r(AbstractC25721b2 abstractC25721b2) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo2951r(abstractC25721b2);
        }
    }

    @Override // p1727n3.p1758e.p1759a.p1761e.AbstractC25721b2.AbstractC25722a
    /* renamed from: s */
    public void mo3004s(AbstractC25721b2 abstractC25721b2, Surface surface) {
        for (AbstractC25721b2.AbstractC25722a abstractC25722a : this.f72115a) {
            abstractC25722a.mo3004s(abstractC25721b2, surface);
        }
    }
}
