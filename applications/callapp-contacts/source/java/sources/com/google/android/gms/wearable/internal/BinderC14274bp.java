package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.google.android.gms.wearable.internal.bp */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bp.class */
public final class BinderC14274bp<T> extends BinderC14302cq<Status> {

    /* renamed from: a */
    private WeakReference<Map<T, BinderC14317de<T>>> f52227a;

    /* renamed from: b */
    private WeakReference<T> f52228b;

    public BinderC14274bp(Map<T, BinderC14317de<T>> map, T t, C11892d.AbstractC11894b<Status> abstractC11894b) {
        super(abstractC11894b);
        this.f52227a = new WeakReference<>(map);
        this.f52228b = new WeakReference<>(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.wearable.internal.BinderC14231a, com.google.android.gms.wearable.internal.AbstractC14266bh
    /* renamed from: a */
    public final void mo11392a(Status status) {
        Map<T, BinderC14317de<T>> map = this.f52227a.get();
        T t = this.f52228b.get();
        if (!status.getStatus().isSuccess() && map != null && t != null) {
            synchronized (map) {
                BinderC14317de<T> remove = map.remove(t);
                if (remove != null) {
                    remove.m11388a();
                }
            }
        }
        m11398a((BinderC14274bp<T>) status);
    }
}
