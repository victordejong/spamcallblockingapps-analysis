package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.measurement.di */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/di.class */
public final class C13442di extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ C13443dj f50639a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13442di(C13443dj c13443dj, Handler handler) {
        super(null);
        this.f50639a = c13443dj;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        C13443dj c13443dj = this.f50639a;
        synchronized (c13443dj.f50642a) {
            c13443dj.f50643b = null;
            AbstractC13463ec.m12904a();
        }
        synchronized (c13443dj) {
            Iterator<Object> it2 = c13443dj.f50644c.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }
}
