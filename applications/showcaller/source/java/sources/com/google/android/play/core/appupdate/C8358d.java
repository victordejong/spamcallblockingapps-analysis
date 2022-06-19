package com.google.android.play.core.appupdate;

import android.content.Context;
import com.google.android.play.core.internal.AbstractC8515s0;
import com.google.android.play.core.internal.C8480d0;
import com.google.android.play.core.splitinstall.C8564k;
/* renamed from: com.google.android.play.core.appupdate.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/appupdate/d.class */
public final class C8358d implements AbstractC8515s0<?> {

    /* renamed from: a */
    private final AbstractC8515s0 f37646a;

    /* renamed from: b */
    private final /* synthetic */ int f37647b = 3;

    public C8358d(AbstractC8515s0<Context> abstractC8515s0, short[] sArr) {
        this.f37646a = abstractC8515s0;
    }

    /* renamed from: b */
    public static C8358d m3797b(AbstractC8515s0<Context> abstractC8515s0) {
        return new C8358d(abstractC8515s0, null);
    }

    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo3471a() {
        int i = this.f37647b;
        if (i != 0) {
            return i != 1 ? i != 2 ? new C8564k((Context) this.f37646a.mo3471a()) : new C8360f(((C8359e) this.f37646a).mo3471a()) : new C8355a(((C8359e) this.f37646a).mo3471a());
        }
        C8357c c8357c = (C8357c) this.f37646a.mo3471a();
        C8480d0.m3541k(c8357c);
        return c8357c;
    }
}
