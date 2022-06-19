package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.AbstractC7958c;
import com.google.android.gms.tasks.AbstractC7966g;
import com.google.android.gms.tasks.C7968h;
import java.util.Map;
/* renamed from: com.google.android.gms.common.api.internal.k1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/k1.class */
public final class C6042k1 implements AbstractC7958c {

    /* renamed from: a */
    final /* synthetic */ C7968h f19320a;

    /* renamed from: b */
    final /* synthetic */ C6061s f19321b;

    public C6042k1(C6061s c6061s, C7968h c7968h) {
        this.f19321b = c6061s;
        this.f19320a = c7968h;
    }

    @Override // com.google.android.gms.tasks.AbstractC7958c
    /* renamed from: a */
    public final void mo1124a(AbstractC7966g abstractC7966g) {
        Map map;
        map = this.f19321b.f19349b;
        map.remove(this.f19320a);
    }
}
