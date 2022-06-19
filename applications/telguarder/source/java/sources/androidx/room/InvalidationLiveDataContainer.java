package androidx.room;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/room/InvalidationLiveDataContainer.class */
public class InvalidationLiveDataContainer {
    private final RoomDatabase mDatabase;
    final Set<LiveData> mLiveDataSet = Collections.newSetFromMap(new IdentityHashMap());

    public InvalidationLiveDataContainer(RoomDatabase roomDatabase) {
        this.mDatabase = roomDatabase;
    }

    public <T> LiveData<T> create(String[] strArr, boolean z, Callable<T> callable) {
        return new RoomTrackingLiveData(this.mDatabase, this, z, callable, strArr);
    }

    public void onActive(LiveData liveData) {
        this.mLiveDataSet.add(liveData);
    }

    public void onInactive(LiveData liveData) {
        this.mLiveDataSet.remove(liveData);
    }
}
