package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.google.android.gms.wearable.internal.bq */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bq.class */
public final class BinderC14275bq<T> extends BinderC14302cq<Status> {

    /* renamed from: a */
    private WeakReference<Map<T, BinderC14317de<T>>> f52229a;

    /* renamed from: b */
    private WeakReference<T> f52230b;

    public BinderC14275bq(Map<T, BinderC14317de<T>> map, T t, C11892d.AbstractC11894b<Status> abstractC11894b) {
        super(abstractC11894b);
        this.f52229a = new WeakReference<>(map);
        this.f52230b = new WeakReference<>(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.wearable.internal.BinderC14231a, com.google.android.gms.wearable.internal.AbstractC14266bh
    /* renamed from: a */
    public final void mo11392a(Status status) {
        Map<T, BinderC14317de<T>> map = this.f52229a.get();
        T t = this.f52230b.get();
        if (status.getStatus().getStatusCode() == 4002 && map != null && t != null) {
            synchronized (map) {
                BinderC14317de<T> remove = map.remove(t);
                if (remove != null) {
                    remove.m11388a();
                }
            }
        }
        m11398a((BinderC14275bq<T>) status);
    }
}
