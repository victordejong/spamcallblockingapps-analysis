package io.fabric.sdk.android;

import io.fabric.sdk.android.services.concurrency.AbstractC1537f;
import io.fabric.sdk.android.services.concurrency.EnumC1536e;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.p068b.C1505u;
/* renamed from: io.fabric.sdk.android.g */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/g.class */
public class C1458g<Result> extends AbstractC1537f<Void, Void, Result> {

    /* renamed from: a */
    final AbstractC1459h<Result> f4031a;

    public C1458g(AbstractC1459h<Result> abstractC1459h) {
        this.f4031a = abstractC1459h;
    }

    /* renamed from: a */
    private C1505u m3560a(String str) {
        C1505u c1505u = new C1505u(this.f4031a.getIdentifier() + "." + str, "KitInitialization");
        c1505u.m3398a();
        return c1505u;
    }

    /* renamed from: a */
    public Result mo3376a(Void... voidArr) {
        C1505u m3560a = m3560a("doInBackground");
        Result doInBackground = !m3368d() ? this.f4031a.doInBackground() : null;
        m3560a.m3397b();
        return doInBackground;
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1517a
    /* renamed from: a */
    public void mo3382a() {
        super.mo3382a();
        C1505u m3560a = m3560a("onPreExecute");
        try {
            try {
                boolean onPreExecute = this.f4031a.onPreExecute();
                m3560a.m3397b();
                if (onPreExecute) {
                    return;
                }
            } catch (UnmetDependencyException e) {
                throw e;
            } catch (Exception e2) {
                C1449c.m3572g().mo3545e("Fabric", "Failure onPreExecute()", e2);
                m3560a.m3397b();
            }
            m3377a(true);
        } catch (Throwable th) {
            m3560a.m3397b();
            m3377a(true);
            throw th;
        }
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1517a
    /* renamed from: a */
    protected void mo3379a(Result result) {
        this.f4031a.onPostExecute(result);
        this.f4031a.initializationCallback.mo3561a((AbstractC1455f<Result>) result);
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1517a
    /* renamed from: b */
    protected void mo3373b(Result result) {
        this.f4031a.onCancelled(result);
        this.f4031a.initializationCallback.mo3562a(new InitializationException(this.f4031a.getIdentifier() + " Initialization was cancelled"));
    }

    @Override // io.fabric.sdk.android.services.concurrency.AbstractC1537f, io.fabric.sdk.android.services.concurrency.AbstractC1542i
    public EnumC1536e getPriority() {
        return EnumC1536e.HIGH;
    }
}
