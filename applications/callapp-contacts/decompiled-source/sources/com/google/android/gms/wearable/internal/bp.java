package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import java.lang.ref.WeakReference;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bp.class */
public final class bp<T> extends cq<Status> {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Map<T, de<T>>> f30090a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<T> f30091b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(Map<T, de<T>> map, T t, d.b<Status> bVar) {
        super(bVar);
        this.f30090a = new WeakReference<>(map);
        this.f30091b = new WeakReference<>(t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.wearable.internal.a, com.google.android.gms.wearable.internal.bh
    public final void a(Status status) {
        Map<T, de<T>> map = this.f30090a.get();
        T t = this.f30091b.get();
        if (!(status.getStatus().isSuccess() || map == null || t == null)) {
            synchronized (map) {
                de<T> remove = map.remove(t);
                if (remove != null) {
                    remove.a();
                }
            }
        }
        a((bp<T>) status);
    }
}
