package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.internal.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b1.class */
public abstract class AbstractC6109b1<TListener> {

    /* renamed from: a */
    private TListener f19491a;

    /* renamed from: b */
    private boolean f19492b = false;

    /* renamed from: c */
    final /* synthetic */ AbstractC6113d f19493c;

    public AbstractC6109b1(AbstractC6113d abstractC6113d, TListener tlistener) {
        this.f19493c = abstractC6113d;
        this.f19491a = tlistener;
    }

    /* renamed from: a */
    public abstract void mo17000a();

    /* renamed from: b */
    protected abstract void mo16999b(TListener tlistener);

    /* renamed from: c */
    public final void m17142c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f19491a;
            if (this.f19492b) {
                String valueOf = String.valueOf(this);
                StringBuilder sb = new StringBuilder(valueOf.length() + 47);
                sb.append("Callback proxy ");
                sb.append(valueOf);
                sb.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb.toString());
            }
        }
        if (tlistener != null) {
            try {
                mo16999b(tlistener);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f19492b = true;
        }
        m17141d();
    }

    /* renamed from: d */
    public final void m17141d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        m17140e();
        arrayList = this.f19493c.f19520t;
        synchronized (arrayList) {
            arrayList2 = this.f19493c.f19520t;
            arrayList2.remove(this);
        }
    }

    /* renamed from: e */
    public final void m17140e() {
        synchronized (this) {
            this.f19491a = null;
        }
    }
}
