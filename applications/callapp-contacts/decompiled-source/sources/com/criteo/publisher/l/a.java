package com.criteo.publisher.l;

import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.b;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.o;
import java.lang.ref.Reference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/a.class */
public final class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final g f17415a = h.a(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final CriteoBannerAdListener f17416b;

    /* renamed from: c  reason: collision with root package name */
    private final Reference<CriteoBannerView> f17417c;

    /* renamed from: d  reason: collision with root package name */
    private final o f17418d;

    /* renamed from: com.criteo.publisher.l.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/a$a.class */
    static final /* synthetic */ class C0346a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17419a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[o.values().length];
            f17419a = iArr;
            try {
                iArr[o.INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17419a[o.VALID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17419a[o.CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public a(CriteoBannerAdListener criteoBannerAdListener, Reference<CriteoBannerView> reference, o oVar) {
        this.f17416b = criteoBannerAdListener;
        this.f17417c = reference;
        this.f17418d = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CriteoBannerView criteoBannerView = this.f17417c.get();
        o oVar = this.f17418d;
        if (oVar == o.INVALID) {
            this.f17415a.a(b.c(criteoBannerView));
        } else if (oVar == o.VALID) {
            this.f17415a.a(b.b(criteoBannerView));
        }
        if (this.f17416b != null && criteoBannerView != null) {
            int i = C0346a.f17419a[this.f17418d.ordinal()];
            if (i == 1) {
                this.f17416b.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
            } else if (i == 2) {
                this.f17416b.onAdReceived(criteoBannerView);
            } else if (i == 3) {
                this.f17416b.onAdClicked();
                this.f17416b.onAdLeftApplication();
            }
        }
    }
}
