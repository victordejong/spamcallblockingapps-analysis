package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.common.internal.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/v.class */
public abstract class AbstractC1594v<TListener> {

    /* renamed from: a */
    private TListener f5873a;

    /* renamed from: b */
    private boolean f5874b = false;

    /* renamed from: c */
    final /* synthetic */ AbstractC1566b f5875c;

    public AbstractC1594v(AbstractC1566b bVar, TListener tlistener) {
        this.f5875c = bVar;
        this.f5873a = tlistener;
    }

    /* renamed from: a */
    protected abstract void m8278a();

    /* renamed from: b */
    protected abstract void m8277b(TListener tlistener);

    /* renamed from: c */
    public final void m8276c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f5873a;
            if (this.f5874b) {
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
                m8277b(tlistener);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f5874b = true;
        }
        m8275d();
    }

    /* renamed from: d */
    public final void m8275d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        m8274e();
        arrayList = this.f5875c.f5837k;
        synchronized (arrayList) {
            arrayList2 = this.f5875c.f5837k;
            arrayList2.remove(this);
        }
    }

    /* renamed from: e */
    public final void m8274e() {
        synchronized (this) {
            this.f5873a = null;
        }
    }
}
