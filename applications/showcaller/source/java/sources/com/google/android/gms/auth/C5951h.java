package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.internal.auth.AbstractBinderC7268m;
/* renamed from: com.google.android.gms.auth.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/h.class */
public final class C5951h implements AbstractC5952i<Void> {

    /* renamed from: a */
    private final /* synthetic */ String f19087a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f19088b;

    public C5951h(String str, Bundle bundle) {
        this.f19087a = str;
        this.f19088b = bundle;
    }

    @Override // com.google.android.gms.auth.AbstractC5952i
    /* renamed from: a */
    public final /* synthetic */ Void mo17550a(IBinder iBinder) {
        Object m17554h;
        m17554h = C5949f.m17554h(AbstractBinderC7268m.m7825c0(iBinder).mo7823i0(this.f19087a, this.f19088b));
        Bundle bundle = (Bundle) m17554h;
        String string = bundle.getString("Error");
        if (bundle.getBoolean("booleanResult")) {
            return null;
        }
        throw new GoogleAuthException(string);
    }
}
