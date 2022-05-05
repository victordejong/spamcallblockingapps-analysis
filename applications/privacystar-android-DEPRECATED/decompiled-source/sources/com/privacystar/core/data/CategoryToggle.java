package com.privacystar.core.data;

import io.reactivex.Observable;
import io.reactivex.Observer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\tH\u0014J\u0006\u0010\u0011\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u00020\u0002X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004R$\u0010\b\u001a\f\u0012\u0006\b��\u0012\u00020\u0002\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/data/CategoryToggle;", "Lio/reactivex/Observable;", "", "enabled", "(Z)V", "getEnabled", "()Z", "setEnabled", "observer", "Lio/reactivex/Observer;", "getObserver", "()Lio/reactivex/Observer;", "setObserver", "(Lio/reactivex/Observer;)V", "subscribeActual", "", "o", "toggle", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/CategoryToggle.class */
public final class CategoryToggle extends Observable<Boolean> {
    private boolean enabled;
    @Nullable
    private Observer<? super Boolean> observer;

    public CategoryToggle() {
        this(false, 1, null);
    }

    public CategoryToggle(boolean z) {
        this.enabled = z;
    }

    public /* synthetic */ CategoryToggle(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z);
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    @Nullable
    public final Observer<? super Boolean> getObserver() {
        return this.observer;
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final void setObserver(@Nullable Observer<? super Boolean> observer) {
        this.observer = observer;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(@NotNull Observer<? super Boolean> o) {
        Intrinsics.checkParameterIsNotNull(o, "o");
        this.observer = o;
    }

    public final void toggle() {
        this.enabled = !this.enabled;
        Observer<? super Boolean> observer = this.observer;
        if (observer != null) {
            observer.onNext(Boolean.valueOf(this.enabled));
        }
    }
}
