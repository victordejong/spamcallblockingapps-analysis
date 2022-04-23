package com.facebook.share.p046d;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.AbstractServiceConnectionC2385b0;
@Deprecated
/* renamed from: com.facebook.share.d.j */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/j.class */
public final class C2618j extends AbstractServiceConnectionC2385b0 {

    /* renamed from: j */
    public String f3534j;

    public C2618j(Context context, String str, String str2) {
        super(context, 65542, 65543, 20141001, str);
        this.f3534j = str2;
    }

    @Override // com.facebook.internal.AbstractServiceConnectionC2385b0
    /* renamed from: b */
    public void mo34167b(Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.OBJECT_ID", this.f3534j);
    }
}
