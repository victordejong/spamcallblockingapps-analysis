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

        /* synthetic */ C0625a(Context context, C0642j0 j0Var) {
            this.f3181b = context;
        }

        /* renamed from: a */
        public AbstractC0624c m11516a() {
            Context context = this.f3181b;
            if (context != null) {
                AbstractC0643k kVar = this.f3182c;
                if (kVar == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                } else if (this.f3180a) {
                    return new d((String) null, true, context, kVar);
                } else {
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
            } else {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
        }

        /* renamed from: b */
        public C0625a m11515b() {
            this.f3180a = true;
            return this;
        }

        /* renamed from: c */
        public C0625a m11514c(AbstractC0643k kVar) {
            this.f3182c = kVar;
            return this;
        }
    }

    /* renamed from: e */
    public static C0625a m11520e(Context context) {
        return new C0625a(context, null);
    }

    /* renamed from: a */
    public abstract void m11524a(C0619a aVar, AbstractC0622b bVar);

    /* renamed from: b */
    public abstract void m11523b(C0636h hVar, AbstractC0639i iVar);

    /* renamed from: c */
    public abstract boolean m11522c();

    /* renamed from: d */
    public abstract C0633g m11521d(Activity activity, C0630f fVar);

    /* renamed from: f */
    public abstract Purchase.C0618a m11519f(String str);

    /* renamed from: g */
    public abstract void m11518g(C0645l lVar, AbstractC0648m mVar);

    /* renamed from: h */
    public abstract void m11517h(AbstractC0628e eVar);
}
