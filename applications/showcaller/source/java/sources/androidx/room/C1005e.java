package androidx.room;

import androidx.lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.room.e */
/* loaded from: classes-dex2jar.jar:androidx/room/e.class */
public class C1005e {

    /* renamed from: a */
    final Set<LiveData> f4454a = Collections.newSetFromMap(new IdentityHashMap());

    /* renamed from: b */
    private final RoomDatabase f4455b;

    public C1005e(RoomDatabase roomDatabase) {
        this.f4455b = roomDatabase;
    }
}
