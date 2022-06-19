package com.criteo.publisher.p254l;

import com.criteo.publisher.C8253b;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.EnumC8518o;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import java.lang.ref.Reference;
/* renamed from: com.criteo.publisher.l.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/a.class */
public final class RunnableC8383a implements Runnable {

    /* renamed from: a */
    private final C8402g f30085a = C8404h.m25741a(getClass());

    /* renamed from: b */
    private final CriteoBannerAdListener f30086b;

    /* renamed from: c */
    private final Reference<CriteoBannerView> f30087c;

    /* renamed from: d */
    private final EnumC8518o f30088d;

    /* renamed from: com.criteo.publisher.l.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/a$a.class */
    static final /* synthetic */ class C8384a {

        /* renamed from: a */
        static final /* synthetic */ int[] f30089a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8518o.values().length];
            f30089a = iArr;
            try {
                iArr[EnumC8518o.INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30089a[EnumC8518o.VALID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30089a[EnumC8518o.CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public RunnableC8383a(CriteoBannerAdListener criteoBannerAdListener, Reference<CriteoBannerView> reference, EnumC8518o enumC8518o) {
        this.f30086b = criteoBannerAdListener;
        this.f30087c = reference;
        this.f30088d = enumC8518o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CriteoBannerView criteoBannerView = this.f30087c.get();
        EnumC8518o enumC8518o = this.f30088d;
        if (enumC8518o == EnumC8518o.INVALID) {
            this.f30085a.m25744a(C8253b.m25961c(criteoBannerView));
        } else if (enumC8518o == EnumC8518o.VALID) {
            this.f30085a.m25744a(C8253b.m25962b(criteoBannerView));
        }
        if (this.f30086b == null || criteoBannerView == null) {
            return;
        }
        int i = C8384a.f30089a[this.f30088d.ordinal()];
        if (i == 1) {
            this.f30086b.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
        } else if (i == 2) {
            this.f30086b.onAdReceived(criteoBannerView);
        } else if (i != 3) {
        } else {
            this.f30086b.onAdClicked();
            this.f30086b.onAdLeftApplication();
        }
    }
}
