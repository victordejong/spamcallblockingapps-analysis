package com.criteo.publisher.p019a;

import android.content.Context;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import com.criteo.publisher.AbstractC1966c;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.p020a0.AbstractC1911d;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p031x.AsyncTaskC2160a;
import com.criteo.publisher.p031x.C2166d;
import com.criteo.publisher.p032y.C2167a;
/* renamed from: com.criteo.publisher.a.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a/a.class */
public class C1907a implements AbstractC1911d {

    /* renamed from: b */
    public final Context f2006b;

    /* renamed from: e */
    public final C1925m f2009e;

    /* renamed from: f */
    public final AbstractC1966c f2010f;

    /* renamed from: g */
    public final C2166d f2011g;

    /* renamed from: h */
    public final C2167a f2012h;
    @NonNull

    /* renamed from: i */
    public final C2043q f2013i;

    /* renamed from: c */
    public int f2007c = -1;

    /* renamed from: d */
    public long f2008d = 0;

    /* renamed from: a */
    public AsyncTaskC2160a f2005a = m36047e();

    public C1907a(@NonNull Context context, @NonNull C1925m mVar, @NonNull AbstractC1966c cVar, @NonNull C2166d dVar, @NonNull C2167a aVar, @NonNull C2043q qVar) {
        this.f2006b = context;
        this.f2009e = mVar;
        this.f2010f = cVar;
        this.f2011g = dVar;
        this.f2012h = aVar;
        this.f2013i = qVar;
    }

    /* renamed from: a */
    private void m36051a(String str) {
        if (!m36046f()) {
            return;
        }
        if (this.f2007c <= 0 || this.f2010f.mo35877a() - this.f2008d >= this.f2007c * 1000) {
            if (this.f2005a.getStatus() == AsyncTask.Status.FINISHED) {
                this.f2005a = m36047e();
            }
            if (this.f2005a.getStatus() != AsyncTask.Status.RUNNING) {
                this.f2005a.executeOnExecutor(C1974i.m35912U().m35919N(), str);
            }
        }
    }

    @NonNull
    /* renamed from: e */
    private AsyncTaskC2160a m36047e() {
        return new AsyncTaskC2160a(this.f2006b, this, this.f2009e, this.f2011g, this.f2013i, this.f2012h);
    }

    /* renamed from: f */
    private boolean m36046f() {
        return this.f2012h.m35541e() && this.f2012h.m35540f();
    }

    /* renamed from: a */
    public void m36052a() {
    }

    @Override // com.criteo.publisher.p020a0.AbstractC1911d
    /* renamed from: a */
    public void mo36041a(int i) {
        this.f2007c = i;
        this.f2008d = this.f2010f.mo35877a();
    }

    /* renamed from: b */
    public void m36050b() {
        m36051a("Active");
    }

    /* renamed from: c */
    public void m36049c() {
        m36051a("Inactive");
    }

    /* renamed from: d */
    public void m36048d() {
        m36051a("Launch");
    }
}
