package com.facebook.share.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.AbstractServiceConnectionC10206aa;
@Deprecated
/* renamed from: com.facebook.share.internal.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/c.class */
public final class C10478c extends AbstractServiceConnectionC10206aa {

    /* renamed from: e */
    private String f34242e;

    public C10478c(Context context, String str, String str2) {
        super(context, 65542, 65543, 20141001, str);
        this.f34242e = str2;
    }

    @Override // com.facebook.internal.AbstractServiceConnectionC10206aa
    /* renamed from: a */
    public final void mo22715a(Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.OBJECT_ID", this.f34242e);
    }
}
