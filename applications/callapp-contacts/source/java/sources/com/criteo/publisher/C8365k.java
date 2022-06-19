package com.criteo.publisher;

import android.webkit.WebViewClient;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p242b.AbstractC8257c;
import com.criteo.publisher.p242b.C8254a;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p254l.C8385b;
import com.criteo.publisher.p254l.RunnableC8383a;
import com.criteo.publisher.p255m.C8421b;
import java.lang.ref.WeakReference;
/* renamed from: com.criteo.publisher.k */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k.class */
public final class C8365k {

    /* renamed from: a */
    final Criteo f30048a;

    /* renamed from: b */
    private final WeakReference<CriteoBannerView> f30049b;

    /* renamed from: c */
    private final CriteoBannerAdListener f30050c;

    /* renamed from: d */
    private final C8421b f30051d;

    /* renamed from: e */
    private final ExecutorC8277c f30052e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.k$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k$a.class */
    public final class C8366a implements AbstractC8270d {
        public C8366a() {
            C8365k.this = r4;
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25712a() {
            C8365k.this.m25777a(EnumC8518o.INVALID);
        }

        @Override // com.criteo.publisher.AbstractC8270d
        /* renamed from: a */
        public final void mo25711a(C8503s c8503s) {
            C8365k.this.m25777a(EnumC8518o.VALID);
            C8365k.this.m25776a(c8503s.m25547d());
        }
    }

    /* renamed from: com.criteo.publisher.k$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k$b.class */
    public final class C8367b implements AbstractC8257c {
        C8367b() {
            C8365k.this = r4;
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: a */
        public final void mo25762a() {
            C8365k.this.m25777a(EnumC8518o.CLICK);
        }

        @Override // com.criteo.publisher.p242b.AbstractC8257c
        /* renamed from: b */
        public final void mo25759b() {
        }
    }

    public C8365k(CriteoBannerView criteoBannerView, Criteo criteo, C8421b c8421b, ExecutorC8277c executorC8277c) {
        this.f30049b = new WeakReference<>(criteoBannerView);
        this.f30050c = criteoBannerView.getCriteoBannerAdListener();
        this.f30048a = criteo;
        this.f30051d = c8421b;
        this.f30052e = executorC8277c;
    }

    /* renamed from: a */
    private WebViewClient m25778a() {
        return new C8254a(new C8367b(), this.f30051d.m25710a());
    }

    /* renamed from: a */
    public final void m25777a(EnumC8518o enumC8518o) {
        this.f30052e.m25926a(new RunnableC8383a(this.f30050c, this.f30049b, enumC8518o));
    }

    /* renamed from: a */
    public final void m25776a(String str) {
        this.f30052e.m25926a(new C8385b(this.f30049b, m25778a(), this.f30048a.getConfig(), str));
    }
}
