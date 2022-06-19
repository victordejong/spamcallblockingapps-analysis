package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.wearable.AbstractC14226f;
/* renamed from: com.google.android.gms.wearable.internal.v */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/v.class */
final class C14349v implements AbstractC14242ak<AbstractC14226f.AbstractC14227a> {

    /* renamed from: a */
    private final /* synthetic */ String f52322a;

    /* renamed from: b */
    private final /* synthetic */ IntentFilter[] f52323b;

    public C14349v(String str, IntentFilter[] intentFilterArr) {
        this.f52322a = str;
        this.f52323b = intentFilterArr;
    }

    @Override // com.google.android.gms.wearable.internal.AbstractC14242ak
    /* renamed from: a */
    public final /* synthetic */ void mo11352a(C14314db c14314db, C11892d.AbstractC11894b abstractC11894b, AbstractC14226f.AbstractC14227a abstractC14227a, C11899i<AbstractC14226f.AbstractC14227a> c11899i) throws RemoteException {
        AbstractC14226f.AbstractC14227a abstractC14227a2 = abstractC14227a;
        String str = this.f52322a;
        IntentFilter[] intentFilterArr = this.f52323b;
        if (str == null) {
            c14314db.f52251b.m11404a(c14314db, abstractC11894b, abstractC14227a2, BinderC14317de.m11376b(c11899i, intentFilterArr));
            return;
        }
        c14314db.f52251b.m11404a(c14314db, abstractC11894b, new C14295cj(str, abstractC14227a2), BinderC14317de.m11386a(c11899i, str, intentFilterArr));
    }
}
