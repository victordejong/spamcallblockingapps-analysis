package com.android.billingclient.api;

import android.app.Activity;
import android.content.Context;
import com.android.billingclient.api.C1173f;
/* renamed from: com.android.billingclient.api.b */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/b.class */
public abstract class AbstractC1162b {

    /* renamed from: com.android.billingclient.api.b$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/b$a.class */
    public static final class C1164a {

        /* renamed from: a */
        private final Context f3711a;

        /* renamed from: b */
        private AbstractC1175g f3712b;

        private C1164a(Context context) {
            this.f3711a = context;
        }

        /* renamed from: a */
        public C1164a m3916a(AbstractC1175g abstractC1175g) {
            this.f3712b = abstractC1175g;
            return this;
        }

        /* renamed from: a */
        public AbstractC1162b m3917a() {
            Context context = this.f3711a;
            if (context != null) {
                AbstractC1175g abstractC1175g = this.f3712b;
                if (abstractC1175g == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                }
                return new C1165c(context, abstractC1175g);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    /* renamed from: a */
    public static C1164a m3918a(Context context) {
        return new C1164a(context);
    }

    /* renamed from: a */
    public abstract int mo3913a(Activity activity, C1170e c1170e);

    /* renamed from: a */
    public abstract C1173f.C1174a mo3903a(String str);

    /* renamed from: a */
    public abstract void mo3907a(AbstractC1169d abstractC1169d);

    /* renamed from: a */
    public abstract void mo3905a(C1178i c1178i, AbstractC1181j abstractC1181j);
}
