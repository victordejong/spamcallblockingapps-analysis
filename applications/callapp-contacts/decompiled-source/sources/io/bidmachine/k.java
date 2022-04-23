package io.bidmachine;

import android.app.Activity;
import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/k.class */
public final class k implements ContextProvider {
    private Context context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context) {
        this.context = context;
    }

    @Override // io.bidmachine.ContextProvider
    public final Activity getActivity() {
        Context context = getContext();
        return context instanceof Activity ? (Activity) context : d.get().getTopActivity();
    }

    @Override // io.bidmachine.ContextProvider
    public final Context getContext() {
        return this.context;
    }
}
