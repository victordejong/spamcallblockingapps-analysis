package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/di.class */
public final class di extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ dj f28958a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public di(dj djVar, Handler handler) {
        super(null);
        this.f28958a = djVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        dj djVar = this.f28958a;
        synchronized (djVar.f28960a) {
            djVar.f28961b = null;
            ec.a();
        }
        synchronized (djVar) {
            Iterator<Object> it2 = djVar.f28962c.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
        }
    }
}
