package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.Purchase;
/* renamed from: com.android.billingclient.api.c */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c.class */
public abstract class AbstractC3895c {

    /* renamed from: com.android.billingclient.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$a.class */
    public static final class C3896a {

        /* renamed from: a */
        private boolean f12277a;

        /* renamed from: b */
        private final Context f12278b;

        /* renamed from: c */
        private AbstractC3915k f12279c;

        /* synthetic */ C3896a(Context context, C3914j0 c3914j0) {
            this.f12278b = context;
        }

        /* renamed from: a */
        public AbstractC3895c m23842a() {
            Context context = this.f12278b;
            if (context != null) {
                AbstractC3915k abstractC3915k = this.f12279c;
                if (abstractC3915k == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                if (!this.f12277a) {
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                return new C3898d(null, true, context, abstractC3915k);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        /* renamed from: b */
        public C3896a m23841b() {
            this.f12277a = true;
            return this;
        }

        /* renamed from: c */
        public C3896a m23840c(AbstractC3915k abstractC3915k) {
            this.f12279c = abstractC3915k;
            return this;
        }
    }

    /* renamed from: e */
    public static C3896a m23843e(Context context) {
        return new C3896a(context, null);
    }

    /* renamed from: a */
    public abstract void mo23829a(C3890a c3890a, AbstractC3893b abstractC3893b);

    /* renamed from: b */
    public abstract void mo23828b(C3908h c3908h, AbstractC3911i abstractC3911i);

    /* renamed from: c */
    public abstract boolean mo23827c();

    /* renamed from: d */
    public abstract C3905g mo23826d(Activity activity, C3902f c3902f);

    /* renamed from: f */
    public abstract Purchase.C3889a mo23825f(String str);

    /* renamed from: g */
    public abstract void mo23824g(C3917l c3917l, AbstractC3920m abstractC3920m);

    /* renamed from: h */
    public abstract void mo23823h(AbstractC3900e abstractC3900e);
}
