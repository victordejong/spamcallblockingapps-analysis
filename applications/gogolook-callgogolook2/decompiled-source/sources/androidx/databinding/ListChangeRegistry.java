package androidx.databinding;

import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import androidx.databinding.CallbackRegistry;
import androidx.databinding.ObservableList;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ListChangeRegistry.class */
public class ListChangeRegistry extends CallbackRegistry<ObservableList.OnListChangedCallback, ObservableList, ListChanges> {
    public static final int ALL = 0;
    public static final int CHANGED = 1;
    public static final int INSERTED = 2;
    public static final int MOVED = 3;
    public static final int REMOVED = 4;
    public static final Pools.SynchronizedPool<ListChanges> sListChanges = new Pools.SynchronizedPool<>(10);
    public static final CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges> NOTIFIER_CALLBACK = new CallbackRegistry.NotifierCallback<ObservableList.OnListChangedCallback, ObservableList, ListChanges>() { // from class: androidx.databinding.ListChangeRegistry.1
        public void onNotifyCallback(ObservableList.OnListChangedCallback onListChangedCallback, ObservableList observableList, int i, ListChanges listChanges) {
            if (i == 1) {
                onListChangedCallback.onItemRangeChanged(observableList, listChanges.start, listChanges.count);
            } else if (i == 2) {
                onListChangedCallback.onItemRangeInserted(observableList, listChanges.start, listChanges.count);
            } else if (i == 3) {
                onListChangedCallback.onItemRangeMoved(observableList, listChanges.start, listChanges.f62to, listChanges.count);
            } else if (i != 4) {
                onListChangedCallback.onChanged(observableList);
            } else {
                onListChangedCallback.onItemRangeRemoved(observableList, listChanges.start, listChanges.count);
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/databinding/ListChangeRegistry$ListChanges.class */
    public static class ListChanges {
        public int count;
        public int start;

        /* renamed from: to */
        public int f62to;
    }

    public ListChangeRegistry() {
        super(NOTIFIER_CALLBACK);
    }

    public static ListChanges acquire(int i, int i2, int i3) {
        ListChanges acquire = sListChanges.acquire();
        ListChanges listChanges = acquire;
        if (acquire == null) {
            listChanges = new ListChanges();
        }
        listChanges.start = i;
        listChanges.f62to = i2;
        listChanges.count = i3;
        return listChanges;
    }

    public void notifyCallbacks(@NonNull ObservableList observableList, int i, ListChanges listChanges) {
        synchronized (this) {
            super.notifyCallbacks((ListChangeRegistry) observableList, i, (int) listChanges);
            if (listChanges != null) {
                sListChanges.release(listChanges);
            }
        }
    }

    public void notifyChanged(@NonNull ObservableList observableList) {
        notifyCallbacks(observableList, 0, (ListChanges) null);
    }

    public void notifyChanged(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 1, acquire(i, 0, i2));
    }

    public void notifyInserted(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 2, acquire(i, 0, i2));
    }

    public void notifyMoved(@NonNull ObservableList observableList, int i, int i2, int i3) {
        notifyCallbacks(observableList, 3, acquire(i, i2, i3));
    }

    public void notifyRemoved(@NonNull ObservableList observableList, int i, int i2) {
        notifyCallbacks(observableList, 4, acquire(i, 0, i2));
    }
}
