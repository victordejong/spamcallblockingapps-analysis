package com.j256.ormlite.android.apptools;

import android.content.AsyncTaskLoader;
import android.content.Context;
import com.j256.ormlite.dao.Dao;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/j256/ormlite/android/apptools/BaseOrmLiteLoader.class */
public abstract class BaseOrmLiteLoader<T, ID> extends AsyncTaskLoader<List<T>> implements Dao.DaoObserver {
    private List<T> cachedResults;
    protected Dao<T, ID> dao;

    public BaseOrmLiteLoader(Context context) {
        super(context);
    }

    public BaseOrmLiteLoader(Context context, Dao<T, ID> dao) {
        super(context);
        this.dao = dao;
    }

    @Override // android.content.Loader
    public /* bridge */ /* synthetic */ void deliverResult(Object obj) {
        deliverResult((List) ((List) obj));
    }

    public void deliverResult(List<T> list) {
        if (isReset() || !isStarted()) {
            return;
        }
        super.deliverResult((BaseOrmLiteLoader<T, ID>) list);
    }

    @Override // com.j256.ormlite.dao.Dao.DaoObserver
    public void onChange() {
        onContentChanged();
    }

    @Override // android.content.Loader
    protected void onReset() {
        super.onReset();
        onStopLoading();
        List<T> list = this.cachedResults;
        if (list != null) {
            list.clear();
            this.cachedResults = null;
        }
        this.dao.unregisterObserver(this);
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        List<T> list = this.cachedResults;
        if (list != null) {
            deliverResult((List) list);
        }
        if (takeContentChanged() || this.cachedResults == null) {
            forceLoad();
        }
        this.dao.registerObserver(this);
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        cancelLoad();
    }

    public void setDao(Dao<T, ID> dao) {
        this.dao = dao;
    }
}
