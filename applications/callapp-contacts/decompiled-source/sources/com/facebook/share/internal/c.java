package com.facebook.share.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.aa;
/* JADX INFO: Access modifiers changed from: package-private */
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/c.class */
public final class c extends aa {
    private String e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, String str, String str2) {
        super(context, 65542, 65543, 20141001, str);
        this.e = str2;
    }

    @Override // com.facebook.internal.aa
    public final void a(Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.OBJECT_ID", this.e);
    }
}
