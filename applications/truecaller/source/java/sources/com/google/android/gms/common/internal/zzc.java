package com.google.android.gms.common.internal;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zzc.class */
public abstract class zzc<TListener> {

    /* renamed from: a */
    public TListener f6045a;

    /* renamed from: b */
    public boolean f6046b = false;

    /* renamed from: c */
    public final /* synthetic */ BaseGmsClient f6047c;

    public zzc(BaseGmsClient baseGmsClient, TListener tlistener) {
        this.f6047c = baseGmsClient;
        this.f6045a = tlistener;
    }

    /* renamed from: a */
    public abstract void mo4254a(TListener tlistener);

    /* renamed from: b */
    public abstract void mo4253b();

    /* renamed from: c */
    public final void m38820c() {
        ArrayList arrayList;
        ArrayList arrayList2;
        synchronized (this) {
            this.f6045a = null;
        }
        arrayList = this.f6047c.zzt;
        synchronized (arrayList) {
            arrayList2 = this.f6047c.zzt;
            arrayList2.remove(this);
        }
    }
}
