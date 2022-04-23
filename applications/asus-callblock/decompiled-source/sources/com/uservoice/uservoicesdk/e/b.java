package com.uservoice.uservoicesdk.e;

import android.os.Bundle;
import android.support.v4.app.h;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/e/b.class */
public abstract class b extends h {
    @Override // android.support.v4.app.h, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        setRetainInstance(true);
    }

    @Override // android.support.v4.app.h, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (this.f != null && getRetainInstance()) {
            this.f.setOnDismissListener(null);
        }
        super.onDestroyView();
    }
}
