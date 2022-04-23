package io.reactivex.disposables;

import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/SubscriptionDisposable.class */
public final class SubscriptionDisposable extends ReferenceDisposable<AbstractC10434d> {
    public static final long serialVersionUID = -707001650852963139L;

    public SubscriptionDisposable(AbstractC10434d dVar) {
        super(dVar);
    }

    public void onDisposed(AbstractC10434d dVar) {
        dVar.cancel();
    }
}
