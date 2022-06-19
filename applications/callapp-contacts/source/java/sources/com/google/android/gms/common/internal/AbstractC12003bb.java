package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.internal.bb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bb.class */
public abstract class AbstractC12003bb<TListener> {

    /* renamed from: a */
    private TListener f39503a;

    /* renamed from: b */
    private boolean f39504b = false;

    /* renamed from: d */
    final /* synthetic */ AbstractC12025d f39505d;

    public AbstractC12003bb(AbstractC12025d abstractC12025d, TListener tlistener) {
        this.f39505d = abstractC12025d;
        this.f39503a = tlistener;
    }

    /* renamed from: b */
    protected abstract void mo19212b();

    /* renamed from: c */
    public final void m19211c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f39503a;
            if (this.f39504b) {
                String valueOf = String.valueOf(this);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                sb.append("Callback proxy ");
                sb.append(valueOf);
                sb.append(" being reused. This is not safe.");
                Log.w("GmsClient", sb.toString());
            }
        }
        if (tlistener != null) {
            try {
                mo19212b();
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f39504b = true;
        }
        m19210d();
    }

    /* renamed from: d */
    public final void m19210d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        m19209e();
        arrayList = this.f39505d.zzt;
        synchronized (arrayList) {
            arrayList2 = this.f39505d.zzt;
            arrayList2.remove(this);
        }
    }

    /* renamed from: e */
    public final void m19209e() {
        synchronized (this) {
            this.f39503a = null;
        }
    }
}
