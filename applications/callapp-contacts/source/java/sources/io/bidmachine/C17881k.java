package io.bidmachine;

import android.app.Activity;
import android.content.Context;
/* renamed from: io.bidmachine.k */
/* loaded from: classes5-dex2jar.jar:io/bidmachine/k.class */
public final class C17881k implements ContextProvider {
    private Context context;

    public C17881k(Context context) {
        this.context = context;
    }

    @Override // io.bidmachine.ContextProvider
    public final Activity getActivity() {
        Context context = getContext();
        return context instanceof Activity ? (Activity) context : C17842d.get().getTopActivity();
    }

    @Override // io.bidmachine.ContextProvider
    public final Context getContext() {
        return this.context;
    }
}
