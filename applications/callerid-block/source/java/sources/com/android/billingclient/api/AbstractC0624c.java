package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.Purchase;
/* renamed from: com.android.billingclient.api.c */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c.class */
public abstract class AbstractC0624c {

    /* renamed from: com.android.billingclient.api.c$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/c$a.class */
    public static final class C0625a {

        /* renamed from: a */
        private boolean f3180a;

        /* renamed from: b */
        private final Context f3181b;

        /* renamed from: c */
        private AbstractC0643k f3182c;

        /* synthetic */ C0625a(Context context, C0642j0 c0642j0) {
            this.f3181b = context;
        }

        /* renamed from: a */
        public AbstractC0624c m11516a() {
            Context context = this.f3181b;
            if (context != null) {
                AbstractC0643k abstractC0643k = this.f3182c;
                if (abstractC0643k == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                if (!this.f3180a) {
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                return new d((String) null, true, context, abstractC0643k);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        /* renamed from: b */
        public C0625a m11515b() {
            this.f3180a = true;
            return this;
        }

        /* renamed from: c */
        public C0625a m11514c(AbstractC0643k abstractC0643k) {
            this.f3182c = abstractC0643k;
            return this;
        }
    }

    /* renamed from: e */
    public static C0625a m11520e(Context context) {
        return new C0625a(context, null);
    }

    /* renamed from: a */
    public abstract void m11524a(C0619a c0619a, AbstractC0622b abstractC0622b);

    /* renamed from: b */
    public abstract void m11523b(C0636h c0636h, AbstractC0639i abstractC0639i);

    /* renamed from: c */
    public abstract boolean m11522c();

    /* renamed from: d */
    public abstract C0633g m11521d(Activity activity, C0630f c0630f);

    /* renamed from: f */
    public abstract Purchase.C0618a m11519f(String str);

    /* renamed from: g */
    public abstract void m11518g(C0645l c0645l, AbstractC0648m abstractC0648m);

    /* renamed from: h */
    public abstract void m11517h(AbstractC0628e abstractC0628e);
}
