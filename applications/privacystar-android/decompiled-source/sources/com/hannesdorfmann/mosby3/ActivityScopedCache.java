package com.hannesdorfmann.mosby3;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.util.ArrayMap;
import com.hannesdorfmann.mosby3.mvp.MvpPresenter;
import com.hannesdorfmann.mosby3.mvp.MvpView;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ActivityScopedCache.class */
public class ActivityScopedCache {
    private final Map<String, PresenterHolder> presenterMap = new ArrayMap();

    /* loaded from: classes-dex2jar.jar:com/hannesdorfmann/mosby3/ActivityScopedCache$PresenterHolder.class */
    static final class PresenterHolder {
        private MvpPresenter<?> presenter;
        private Object viewState;

        PresenterHolder() {
        }
    }

    public void clear() {
        this.presenterMap.clear();
    }

    @Nullable
    public <P> P getPresenter(@NonNull String str) {
        PresenterHolder presenterHolder = this.presenterMap.get(str);
        return presenterHolder == null ? null : (P) presenterHolder.presenter;
    }

    @Nullable
    public <VS> VS getViewState(@NonNull String str) {
        PresenterHolder presenterHolder = this.presenterMap.get(str);
        return presenterHolder == null ? null : (VS) presenterHolder.viewState;
    }

    public void putPresenter(@NonNull String str, @NonNull MvpPresenter<? extends MvpView> mvpPresenter) {
        if (str == null) {
            throw new NullPointerException("ViewId is null");
        } else if (mvpPresenter == null) {
            throw new NullPointerException("Presenter is null");
        } else {
            PresenterHolder presenterHolder = this.presenterMap.get(str);
            if (presenterHolder == null) {
                PresenterHolder presenterHolder2 = new PresenterHolder();
                presenterHolder2.presenter = mvpPresenter;
                this.presenterMap.put(str, presenterHolder2);
                return;
            }
            presenterHolder.presenter = mvpPresenter;
        }
    }

    public void putViewState(@NonNull String str, @NonNull Object obj) {
        if (str == null) {
            throw new NullPointerException("ViewId is null");
        } else if (obj == null) {
            throw new NullPointerException("ViewState is null");
        } else {
            PresenterHolder presenterHolder = this.presenterMap.get(str);
            if (presenterHolder == null) {
                PresenterHolder presenterHolder2 = new PresenterHolder();
                presenterHolder2.viewState = obj;
                this.presenterMap.put(str, presenterHolder2);
                return;
            }
            presenterHolder.viewState = obj;
        }
    }

    public void remove(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("View Id is null");
        }
        this.presenterMap.remove(str);
    }
}
