package org.xutils.common;

import java.lang.reflect.Type;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback.class */
public interface Callback {

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$CacheCallback.class */
    public interface CacheCallback<ResultType> extends CommonCallback<ResultType> {
        boolean onCache(ResultType resulttype);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$Callable.class */
    public interface Callable<ResultType> {
        void call(ResultType resulttype);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$Cancelable.class */
    public interface Cancelable {
        void cancel();

        boolean isCancelled();
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$CancelledException.class */
    public static class CancelledException extends RuntimeException {
        public CancelledException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$CommonCallback.class */
    public interface CommonCallback<ResultType> extends Callback {
        void onCancelled(CancelledException cancelledException);

        void onError(Throwable th, boolean z);

        void onFinished();

        void onSuccess(ResultType resulttype);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$GroupCallback.class */
    public interface GroupCallback<ItemType> extends Callback {
        void onAllFinished();

        void onCancelled(ItemType itemtype, CancelledException cancelledException);

        void onError(ItemType itemtype, Throwable th, boolean z);

        void onFinished(ItemType itemtype);

        void onSuccess(ItemType itemtype);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$PrepareCallback.class */
    public interface PrepareCallback<PrepareType, ResultType> extends CommonCallback<ResultType> {
        ResultType prepare(PrepareType preparetype);
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$ProgressCallback.class */
    public interface ProgressCallback<ResultType> extends CommonCallback<ResultType> {
        void onLoading(long j, long j2, boolean z);

        void onStarted();

        void onWaiting();
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$ProxyCacheCallback.class */
    public interface ProxyCacheCallback<ResultType> extends CacheCallback<ResultType> {
        boolean onlyCache();
    }

    /* loaded from: classes2-dex2jar.jar:org/xutils/common/Callback$TypedCallback.class */
    public interface TypedCallback<ResultType> extends CommonCallback<ResultType> {
        Type getLoadType();
    }
}
