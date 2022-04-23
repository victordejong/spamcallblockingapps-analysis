package androidx.work.impl.model;

import android.database.Cursor;
import androidx.b.a;
import androidx.lifecycle.LiveData;
import androidx.room.b.b;
import androidx.room.b.c;
import androidx.room.b.e;
import androidx.room.h;
import androidx.room.k;
import androidx.work.d;
import androidx.work.impl.model.WorkSpec;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao_Impl.class */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    private final h __db;

    public RawWorkInfoDao_Impl(h hVar) {
        this.__db = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkProgressAsandroidxWorkData(a<String, ArrayList<d>> aVar) {
        ArrayList<d> arrayList;
        int i;
        while (true) {
            Set<String> keySet = aVar.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (aVar.size() > 999) {
                aVar = new a<>(999);
                int size = aVar.size();
                int i2 = 0;
                while (true) {
                    i = 0;
                    while (i2 < size) {
                        aVar.put(aVar.b(i2), aVar.c(i2));
                        i2++;
                        int i3 = i + 1;
                        i2 = i2;
                        i = i3;
                        if (i3 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkProgressAsandroidxWorkData(aVar);
                    aVar = new a<>(999);
                }
                if (i <= 0) {
                    return;
                }
            } else {
                StringBuilder a2 = e.a();
                a2.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
                int size2 = keySet.size();
                e.a(a2, size2);
                a2.append(")");
                k a3 = k.a(a2.toString(), size2 + 0);
                int i4 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        a3.e[i4] = 1;
                    } else {
                        a3.a(i4, str);
                    }
                    i4++;
                }
                Cursor a4 = c.a(this.__db, a3, false);
                try {
                    int a5 = b.a(a4, "work_spec_id");
                    if (a5 != -1) {
                        while (a4.moveToNext()) {
                            if (!a4.isNull(a5) && (arrayList = aVar.get(a4.getString(a5))) != null) {
                                arrayList.add(d.a(a4.getBlob(0)));
                            }
                        }
                        return;
                    }
                    return;
                } finally {
                    a4.close();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipWorkTagAsjavaLangString(a<String, ArrayList<String>> aVar) {
        ArrayList<String> arrayList;
        int i;
        while (true) {
            Set<String> keySet = aVar.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (aVar.size() > 999) {
                aVar = new a<>(999);
                int size = aVar.size();
                int i2 = 0;
                while (true) {
                    i = 0;
                    while (i2 < size) {
                        aVar.put(aVar.b(i2), aVar.c(i2));
                        i2++;
                        int i3 = i + 1;
                        i2 = i2;
                        i = i3;
                        if (i3 == 999) {
                            break;
                        }
                    }
                    __fetchRelationshipWorkTagAsjavaLangString(aVar);
                    aVar = new a<>(999);
                }
                if (i <= 0) {
                    return;
                }
            } else {
                StringBuilder a2 = e.a();
                a2.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
                int size2 = keySet.size();
                e.a(a2, size2);
                a2.append(")");
                k a3 = k.a(a2.toString(), size2 + 0);
                int i4 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        a3.e[i4] = 1;
                    } else {
                        a3.a(i4, str);
                    }
                    i4++;
                }
                Cursor a4 = c.a(this.__db, a3, false);
                try {
                    int a5 = b.a(a4, "work_spec_id");
                    if (a5 != -1) {
                        while (a4.moveToNext()) {
                            if (!a4.isNull(a5) && (arrayList = aVar.get(a4.getString(a5))) != null) {
                                arrayList.add(a4.getString(0));
                            }
                        }
                        return;
                    }
                    return;
                } finally {
                    a4.close();
                }
            }
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public final List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(androidx.sqlite.db.d dVar) {
        this.__db.d();
        Cursor a2 = c.a(this.__db, dVar, true);
        try {
            int a3 = b.a(a2, "id");
            int a4 = b.a(a2, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int a5 = b.a(a2, "output");
            int a6 = b.a(a2, "run_attempt_count");
            a<String, ArrayList<String>> aVar = new a<>();
            a<String, ArrayList<d>> aVar2 = new a<>();
            while (a2.moveToNext()) {
                if (!a2.isNull(a3)) {
                    String string = a2.getString(a3);
                    if (aVar.get(string) == null) {
                        aVar.put(string, new ArrayList<>());
                    }
                }
                if (!a2.isNull(a3)) {
                    String string2 = a2.getString(a3);
                    if (aVar2.get(string2) == null) {
                        aVar2.put(string2, new ArrayList<>());
                    }
                }
            }
            a2.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(aVar);
            __fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                ArrayList<d> arrayList2 = null;
                ArrayList<String> arrayList3 = !a2.isNull(a3) ? aVar.get(a2.getString(a3)) : null;
                ArrayList<String> arrayList4 = arrayList3;
                if (arrayList3 == null) {
                    arrayList4 = new ArrayList<>();
                }
                if (!a2.isNull(a3)) {
                    arrayList2 = aVar2.get(a2.getString(a3));
                }
                ArrayList<d> arrayList5 = arrayList2;
                if (arrayList2 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                if (a3 != -1) {
                    workInfoPojo.id = a2.getString(a3);
                }
                if (a4 != -1) {
                    workInfoPojo.state = WorkTypeConverters.intToState(a2.getInt(a4));
                }
                if (a5 != -1) {
                    workInfoPojo.output = d.a(a2.getBlob(a5));
                }
                if (a6 != -1) {
                    workInfoPojo.runAttemptCount = a2.getInt(a6);
                }
                workInfoPojo.tags = arrayList4;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            return arrayList;
        } finally {
            a2.close();
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(final androidx.sqlite.db.d dVar) {
        return this.__db.e.a(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.1
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                Cursor a2 = c.a(RawWorkInfoDao_Impl.this.__db, dVar, true);
                try {
                    int a3 = b.a(a2, "id");
                    int a4 = b.a(a2, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int a5 = b.a(a2, "output");
                    int a6 = b.a(a2, "run_attempt_count");
                    a aVar = new a();
                    a aVar2 = new a();
                    while (a2.moveToNext()) {
                        if (!a2.isNull(a3)) {
                            String string = a2.getString(a3);
                            if (((ArrayList) aVar.get(string)) == null) {
                                aVar.put(string, new ArrayList());
                            }
                        }
                        if (!a2.isNull(a3)) {
                            String string2 = a2.getString(a3);
                            if (((ArrayList) aVar2.get(string2)) == null) {
                                aVar2.put(string2, new ArrayList());
                            }
                        }
                    }
                    a2.moveToPosition(-1);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(aVar);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(aVar2);
                    ArrayList arrayList = new ArrayList(a2.getCount());
                    while (a2.moveToNext()) {
                        ArrayList arrayList2 = null;
                        ArrayList arrayList3 = !a2.isNull(a3) ? (ArrayList) aVar.get(a2.getString(a3)) : null;
                        ArrayList arrayList4 = arrayList3;
                        if (arrayList3 == null) {
                            arrayList4 = new ArrayList();
                        }
                        if (!a2.isNull(a3)) {
                            arrayList2 = (ArrayList) aVar2.get(a2.getString(a3));
                        }
                        ArrayList arrayList5 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        if (a3 != -1) {
                            workInfoPojo.id = a2.getString(a3);
                        }
                        if (a4 != -1) {
                            workInfoPojo.state = WorkTypeConverters.intToState(a2.getInt(a4));
                        }
                        if (a5 != -1) {
                            workInfoPojo.output = d.a(a2.getBlob(a5));
                        }
                        if (a6 != -1) {
                            workInfoPojo.runAttemptCount = a2.getInt(a6);
                        }
                        workInfoPojo.tags = arrayList4;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    return arrayList;
                } finally {
                    a2.close();
                }
            }
        });
    }
}
