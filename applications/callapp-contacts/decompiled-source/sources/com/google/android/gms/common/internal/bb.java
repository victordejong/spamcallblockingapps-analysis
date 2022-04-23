package com.google.android.gms.common.internal;

import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bb.class */
public abstract class bb<TListener> {

    /* renamed from: a  reason: collision with root package name */
    private TListener f22854a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f22855b = false;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d f22856d;

    public bb(d dVar, TListener tlistener) {
        this.f22856d = dVar;
        this.f22854a = tlistener;
    }

    protected abstract void b();

    public final void c() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f22854a;
            if (this.f22855b) {
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
                b();
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f22855b = true;
        }
        d();
    }

    public final void d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        e();
        arrayList = this.f22856d.zzt;
        synchronized (arrayList) {
            arrayList2 = this.f22856d.zzt;
            arrayList2.remove(this);
        }
    }

    public final void e() {
        synchronized (this) {
            this.f22854a = null;
        }
    }
}
