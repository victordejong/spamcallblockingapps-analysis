package com.criteo.publisher.p034z;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.CriteoBannerAdListener;
import com.criteo.publisher.CriteoBannerView;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.EnumC1972g;
import java.lang.ref.Reference;
/* renamed from: com.criteo.publisher.z.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/a.class */
public class RunnableC2177a implements Runnable {
    @Nullable

    /* renamed from: a */
    public final CriteoBannerAdListener f2507a;
    @NonNull

    /* renamed from: b */
    public final Reference<CriteoBannerView> f2508b;
    @NonNull

    /* renamed from: c */
    public final EnumC1972g f2509c;

    /* renamed from: com.criteo.publisher.z.a$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/a$a.class */
    public static /* synthetic */ class C2178a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2510a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC1972g.values().length];
            f2510a = iArr;
            try {
                iArr[EnumC1972g.INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2510a[EnumC1972g.VALID.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2510a[EnumC1972g.CLICK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2510a[EnumC1972g.CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public RunnableC2177a(@Nullable CriteoBannerAdListener criteoBannerAdListener, @NonNull Reference<CriteoBannerView> reference, @NonNull EnumC1972g gVar) {
        this.f2507a = criteoBannerAdListener;
        this.f2508b = reference;
        this.f2509c = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2507a != null) {
            int i = C2178a.f2510a[this.f2509c.ordinal()];
            if (i == 1) {
                this.f2507a.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
            } else if (i == 2) {
                this.f2507a.onAdReceived(this.f2508b.get());
            } else if (i == 3) {
                this.f2507a.onAdClicked();
                this.f2507a.onAdLeftApplication();
                this.f2507a.onAdOpened();
            } else if (i == 4) {
                this.f2507a.onAdClosed();
            }
        }
    }
}
