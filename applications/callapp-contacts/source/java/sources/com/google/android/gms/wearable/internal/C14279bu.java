package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.api.internal.C11902j;
import com.google.android.gms.common.internal.C12043n;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.wearable.AbstractC14355k;
import com.google.android.gms.wearable.AbstractC14358l;
/* renamed from: com.google.android.gms.wearable.internal.bu */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bu.class */
public final class C14279bu extends AbstractC14358l {

    /* renamed from: h */
    private final AbstractC14355k f52236h = new C14276br();

    public C14279bu(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, c11824a);
    }

    public C14279bu(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, c11824a);
    }

    @Override // com.google.android.gms.wearable.AbstractC14358l
    /* renamed from: a */
    public final AbstractC14185h<Void> mo11346a(AbstractC14358l.AbstractC14359a abstractC14359a) {
        IntentFilter m11399a = C14301cp.m11399a("com.google.android.gms.wearable.MESSAGE_RECEIVED");
        C11899i m19322a = C11902j.m19322a(abstractC14359a, this.f39182d, "MessageListener");
        return m19456a((C14279bu) new C14282bx(abstractC14359a, new IntentFilter[]{m11399a}, m19322a), (C14282bx) new C14283by(abstractC14359a, m19322a.f39366b));
    }

    @Override // com.google.android.gms.wearable.AbstractC14358l
    /* renamed from: a */
    public final AbstractC14185h<Integer> mo11345a(String str, String str2, byte[] bArr) {
        return C12043n.m19164a(this.f52236h.mo11349a(this.f39184f, str, str2, bArr), C14280bv.f52237a);
    }

    @Override // com.google.android.gms.wearable.AbstractC14358l
    /* renamed from: b */
    public final AbstractC14185h<Boolean> mo11344b(AbstractC14358l.AbstractC14359a abstractC14359a) {
        return m19457a((C11899i.C11900a<?>) C11902j.m19322a(abstractC14359a, this.f39182d, "MessageListener").f39366b);
    }
}
