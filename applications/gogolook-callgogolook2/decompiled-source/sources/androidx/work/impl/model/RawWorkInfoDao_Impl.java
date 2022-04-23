package androidx.work.impl.model;

import android.database.Cursor;
import androidx.collection.ArrayMap;
import androidx.lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.p008db.SupportSQLiteQuery;
import androidx.work.Data;
import androidx.work.impl.model.WorkSpec;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao_Impl.class */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    public final RoomDatabase __db;

    public RawWorkInfoDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(ArrayMap<String, ArrayList<Data>> arrayMap) {
        ArrayList<Data> arrayList;
        int i;
        int i2;
        Set<String> keySet = arrayMap.keySet();
        if (!keySet.isEmpty()) {
            if (arrayMap.size() > 999) {
                ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>((int) RoomDatabase.MAX_BIND_PARAMETER_CNT);
                int size = arrayMap.size();
                int i3 = 0;
                loop0: while (true) {
                    i = 0;
                    while (i3 < size) {
                        arrayMap2.put(arrayMap.keyAt(i3), arrayMap.valueAt(i3));
                        i2 = i3 + 1;
                        int i4 = i + 1;
                        i3 = i2;
                        i = i4;
                        if (i4 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    arrayMap2 = new ArrayMap<>((int) RoomDatabase.MAX_BIND_PARAMETER_CNT);
                    i3 = i2;
                }
                if (i > 0) {
                    __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    return;
                }
                return;
            }
            StringBuilder newStringBuilder = StringUtil.newStringBuilder();
            newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
            int size2 = keySet.size();
            StringUtil.appendPlaceholders(newStringBuilder, size2);
            newStringBuilder.append(")");
            RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2 + 0);
            int i5 = 1;
            for (String str : keySet) {
                if (str == null) {
                    acquire.bindNull(i5);
                } else {
                    acquire.bindString(i5, str);
                }
                i5++;
            }
            Cursor query = DBUtil.query(this.__db, acquire, false, null);
            try {
                int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
                if (columnIndex != -1) {
                    while (query.moveToNext()) {
                        if (!query.isNull(columnIndex) && (arrayList = arrayMap.get(query.getString(columnIndex))) != null) {
                            arrayList.add(Data.fromByteArray(query.getBlob(0)));
                        }
                    }
                }
            } finally {
                query.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(ArrayMap<String, ArrayList<String>> arrayMap) {
        ArrayList<String> arrayList;
        int i;
        Set<String> keySet = arrayMap.keySet();
        if (!keySet.isEmpty()) {
            if (arrayMap.size() > 999) {
                ArrayMap<String, ArrayList<String>> arrayMap2 = new ArrayMap<>((int) RoomDatabase.MAX_BIND_PARAMETER_CNT);
                int size = arrayMap.size();
                int i2 = 0;
                loop0: while (true) {
                    i = 0;
                    while (i2 < size) {
                        arrayMap2.put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
                        i2++;
                        int i3 = i + 1;
                        i2 = i2;
                        i = i3;
                        if (i3 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                    arrayMap2 = new ArrayMap<>((int) RoomDatabase.MAX_BIND_PARAMETER_CNT);
                }
                if (i > 0) {
                    __fetchRelationshipWorkTagAsjavaLangString(arrayMap2);
                    return;
                }
                return;
            }
            StringBuilder newStringBuilder = StringUtil.newStringBuilder();
            newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
            int size2 = keySet.size();
            StringUtil.appendPlaceholders(newStringBuilder, size2);
            newStringBuilder.append(")");
            RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2 + 0);
            int i4 = 1;
            for (String str : keySet) {
                if (str == null) {
                    acquire.bindNull(i4);
                } else {
                    acquire.bindString(i4, str);
                }
                i4++;
            }
            Cursor query = DBUtil.query(this.__db, acquire, false, null);
            try {
                int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
                if (columnIndex != -1) {
                    while (query.moveToNext()) {
                        if (!query.isNull(columnIndex) && (arrayList = arrayMap.get(query.getString(columnIndex))) != null) {
                            arrayList.add(query.getString(0));
                        }
                    }
                }
            } finally {
                query.close();
            }
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(SupportSQLiteQuery supportSQLiteQuery) {
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, supportSQLiteQuery, true, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "id");
            int columnIndex2 = CursorUtil.getColumnIndex(query, IapProductRealmObject.STATE);
            int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
            int columnIndex4 = CursorUtil.getColumnIndex(query, "run_attempt_count");
            ArrayMap<String, ArrayList<String>> arrayMap = new ArrayMap<>();
            ArrayMap<String, ArrayList<Data>> arrayMap2 = new ArrayMap<>();
            while (query.moveToNext()) {
                if (!query.isNull(columnIndex)) {
                    String string = query.getString(columnIndex);
                    if (arrayMap.get(string) == null) {
                        arrayMap.put(string, new ArrayList<>());
                    }
                }
                if (!query.isNull(columnIndex)) {
                    String string2 = query.getString(columnIndex);
                    if (arrayMap2.get(string2) == null) {
                        arrayMap2.put(string2, new ArrayList<>());
                    }
                }
            }
            query.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(arrayMap);
            __fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                ArrayList<String> arrayList2 = !query.isNull(columnIndex) ? arrayMap.get(query.getString(columnIndex)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<Data> arrayList4 = !query.isNull(columnIndex) ? arrayMap2.get(query.getString(columnIndex)) : null;
                ArrayList<Data> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                if (columnIndex != -1) {
                    workInfoPojo.f132id = query.getString(columnIndex);
                }
                if (columnIndex2 != -1) {
                    workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndex2));
                }
                if (columnIndex3 != -1) {
                    workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndex3));
                }
                if (columnIndex4 != -1) {
                    workInfoPojo.runAttemptCount = query.getInt(columnIndex4);
                }
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            return arrayList;
        } finally {
            query.close();
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.__db.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress"}, false, new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.1
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                Cursor query = DBUtil.query(RawWorkInfoDao_Impl.this.__db, supportSQLiteQuery, true, null);
                try {
                    int columnIndex = CursorUtil.getColumnIndex(query, "id");
                    int columnIndex2 = CursorUtil.getColumnIndex(query, IapProductRealmObject.STATE);
                    int columnIndex3 = CursorUtil.getColumnIndex(query, "output");
                    int columnIndex4 = CursorUtil.getColumnIndex(query, "run_attempt_count");
                    ArrayMap arrayMap = new ArrayMap();
                    ArrayMap arrayMap2 = new ArrayMap();
                    while (query.moveToNext()) {
                        if (!query.isNull(columnIndex)) {
                            String string = query.getString(columnIndex);
                            if (((ArrayList) arrayMap.get(string)) == null) {
                                arrayMap.put(string, new ArrayList());
                            }
                        }
                        if (!query.isNull(columnIndex)) {
                            String string2 = query.getString(columnIndex);
                            if (((ArrayList) arrayMap2.get(string2)) == null) {
                                arrayMap2.put(string2, new ArrayList());
                            }
                        }
                    }
                    query.moveToPosition(-1);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(arrayMap);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(arrayMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        ArrayList arrayList2 = !query.isNull(columnIndex) ? (ArrayList) arrayMap.get(query.getString(columnIndex)) : null;
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        ArrayList arrayList4 = !query.isNull(columnIndex) ? (ArrayList) arrayMap2.get(query.getString(columnIndex)) : null;
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        if (columnIndex != -1) {
                            workInfoPojo.f132id = query.getString(columnIndex);
                        }
                        if (columnIndex2 != -1) {
                            workInfoPojo.state = WorkTypeConverters.intToState(query.getInt(columnIndex2));
                        }
                        if (columnIndex3 != -1) {
                            workInfoPojo.output = Data.fromByteArray(query.getBlob(columnIndex3));
                        }
                        if (columnIndex4 != -1) {
                            workInfoPojo.runAttemptCount = query.getInt(columnIndex4);
                        }
                        workInfoPojo.tags = arrayList3;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    return arrayList;
                } finally {
                    query.close();
                }
            }
        });
    }
}
