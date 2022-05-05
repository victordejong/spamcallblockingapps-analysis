package p081h.p093b.p094a.p095a;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import p081h.p093b.p094a.p095a.C5547g;
/* renamed from: h.b.a.a.a */
/* loaded from: classes-dex2jar.jar:h/b/a/a/a.class */
public abstract class AbstractC5531a {

    /* renamed from: h.b.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/a$a.class */
    public static final class C5532a {

        /* renamed from: a */
        public boolean f13800a;

        /* renamed from: b */
        public final Context f13801b;

        /* renamed from: c */
        public AbstractC5550h f13802c;

        public C5532a(Context context) {
            this.f13801b = context;
        }

        @NonNull
        @UiThread
        /* renamed from: a */
        public final C5532a m25244a(@NonNull AbstractC5550h hVar) {
            this.f13802c = hVar;
            return this;
        }

        @NonNull
        @UiThread
        /* renamed from: a */
        public final AbstractC5531a m25245a() {
            Context context = this.f13801b;
            if (context != null) {
                AbstractC5550h hVar = this.f13802c;
                if (hVar != null) {
                    boolean z = this.f13800a;
                    if (z) {
                        return new C5534b(null, z, context, hVar);
                    }
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
                throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }

        @NonNull
        @UiThread
        /* renamed from: b */
        public final C5532a m25243b() {
            this.f13800a = true;
            return this;
        }
    }

    @NonNull
    @UiThread
    /* renamed from: a */
    public static C5532a m25246a(@NonNull Context context) {
        return new C5532a(context);
    }

    @NonNull
    @UiThread
    /* renamed from: a */
    public abstract C5542e mo25237a(@NonNull Activity activity, @NonNull C5539d dVar);

    @NonNull
    @UiThread
    /* renamed from: a */
    public abstract C5542e mo25224a(@NonNull String str);

    @UiThread
    /* renamed from: a */
    public abstract void mo25238a();

    @UiThread
    /* renamed from: a */
    public abstract void mo25228a(@NonNull AbstractC5537c cVar);

    /* renamed from: a */
    public abstract void mo25226a(@NonNull C5555j jVar, @NonNull AbstractC5558k kVar);

    @NonNull
    /* renamed from: b */
    public abstract C5547g.C5548a mo25217b(@NonNull String str);

    @UiThread
    /* renamed from: b */
    public abstract boolean mo25221b();
}
