package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.p023b.C0428a;
import androidx.room.AbstractC2748h;
import androidx.room.C2757k;
import androidx.room.p081b.C2720b;
import androidx.room.p081b.C2721c;
import androidx.room.p081b.C2723e;
import androidx.sqlite.p082db.AbstractC2794d;
import androidx.work.C2992d;
import androidx.work.impl.model.WorkSpec;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/model/RawWorkInfoDao_Impl.class */
public final class RawWorkInfoDao_Impl implements RawWorkInfoDao {
    private final AbstractC2748h __db;

    public RawWorkInfoDao_Impl(AbstractC2748h abstractC2748h) {
        this.__db = abstractC2748h;
    }

    public void __fetchRelationshipWorkProgressAsandroidxWorkData(C0428a<String, ArrayList<C2992d>> c0428a) {
        ArrayList<C2992d> arrayList;
        int i;
        while (true) {
            C0428a<String, ArrayList<C2992d>> c0428a2 = c0428a;
            Set<String> keySet = c0428a2.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (c0428a2.size() <= 999) {
                StringBuilder m39994a = C2723e.m39994a();
                m39994a.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
                int size = keySet.size();
                C2723e.m39993a(m39994a, size);
                m39994a.append(")");
                C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
                int i2 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        m39945a.f10456e[i2] = 1;
                    } else {
                        m39945a.mo39886a(i2, str);
                    }
                    i2++;
                }
                Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
                try {
                    int m39999a = C2720b.m39999a(m39997a, "work_spec_id");
                    if (m39999a == -1) {
                        return;
                    }
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39999a) && (arrayList = c0428a2.get(m39997a.getString(m39999a))) != null) {
                            arrayList.add(C2992d.m39509a(m39997a.getBlob(0)));
                        }
                    }
                    return;
                } finally {
                    m39997a.close();
                }
            }
            c0428a = new C0428a<>(999);
            int size2 = c0428a2.size();
            int i3 = 0;
            while (true) {
                i = 0;
                int i4 = i3;
                while (i4 < size2) {
                    c0428a.put(c0428a2.m45517b(i4), c0428a2.m45515c(i4));
                    i3 = i4 + 1;
                    int i5 = i + 1;
                    i4 = i3;
                    i = i5;
                    if (i5 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a);
                c0428a = new C0428a<>(999);
            }
            if (i <= 0) {
                return;
            }
        }
    }

    public void __fetchRelationshipWorkTagAsjavaLangString(C0428a<String, ArrayList<String>> c0428a) {
        ArrayList<String> arrayList;
        int i;
        while (true) {
            C0428a<String, ArrayList<String>> c0428a2 = c0428a;
            Set<String> keySet = c0428a2.keySet();
            if (keySet.isEmpty()) {
                return;
            }
            if (c0428a2.size() <= 999) {
                StringBuilder m39994a = C2723e.m39994a();
                m39994a.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
                int size = keySet.size();
                C2723e.m39993a(m39994a, size);
                m39994a.append(")");
                C2757k m39945a = C2757k.m39945a(m39994a.toString(), size + 0);
                int i2 = 1;
                for (String str : keySet) {
                    if (str == null) {
                        m39945a.f10456e[i2] = 1;
                    } else {
                        m39945a.mo39886a(i2, str);
                    }
                    i2++;
                }
                Cursor m39997a = C2721c.m39997a(this.__db, m39945a, false);
                try {
                    int m39999a = C2720b.m39999a(m39997a, "work_spec_id");
                    if (m39999a == -1) {
                        return;
                    }
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39999a) && (arrayList = c0428a2.get(m39997a.getString(m39999a))) != null) {
                            arrayList.add(m39997a.getString(0));
                        }
                    }
                    return;
                } finally {
                    m39997a.close();
                }
            }
            c0428a = new C0428a<>(999);
            int size2 = c0428a2.size();
            int i3 = 0;
            while (true) {
                i = 0;
                int i4 = i3;
                while (i4 < size2) {
                    c0428a.put(c0428a2.m45517b(i4), c0428a2.m45515c(i4));
                    i3 = i4 + 1;
                    int i5 = i + 1;
                    i4 = i3;
                    i = i5;
                    if (i5 == 999) {
                        break;
                    }
                }
                __fetchRelationshipWorkTagAsjavaLangString(c0428a);
                c0428a = new C0428a<>(999);
            }
            if (i <= 0) {
                return;
            }
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public final List<WorkSpec.WorkInfoPojo> getWorkInfoPojos(AbstractC2794d abstractC2794d) {
        this.__db.m39960d();
        Cursor m39997a = C2721c.m39997a(this.__db, abstractC2794d, true);
        try {
            int m39999a = C2720b.m39999a(m39997a, "id");
            int m39999a2 = C2720b.m39999a(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
            int m39999a3 = C2720b.m39999a(m39997a, "output");
            int m39999a4 = C2720b.m39999a(m39997a, "run_attempt_count");
            C0428a<String, ArrayList<String>> c0428a = new C0428a<>();
            C0428a<String, ArrayList<C2992d>> c0428a2 = new C0428a<>();
            while (m39997a.moveToNext()) {
                if (!m39997a.isNull(m39999a)) {
                    String string = m39997a.getString(m39999a);
                    if (c0428a.get(string) == null) {
                        c0428a.put(string, new ArrayList<>());
                    }
                }
                if (!m39997a.isNull(m39999a)) {
                    String string2 = m39997a.getString(m39999a);
                    if (c0428a2.get(string2) == null) {
                        c0428a2.put(string2, new ArrayList<>());
                    }
                }
            }
            m39997a.moveToPosition(-1);
            __fetchRelationshipWorkTagAsjavaLangString(c0428a);
            __fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
            ArrayList arrayList = new ArrayList(m39997a.getCount());
            while (m39997a.moveToNext()) {
                ArrayList<String> arrayList2 = !m39997a.isNull(m39999a) ? c0428a.get(m39997a.getString(m39999a)) : null;
                ArrayList<String> arrayList3 = arrayList2;
                if (arrayList2 == null) {
                    arrayList3 = new ArrayList<>();
                }
                ArrayList<C2992d> arrayList4 = null;
                if (!m39997a.isNull(m39999a)) {
                    arrayList4 = c0428a2.get(m39997a.getString(m39999a));
                }
                ArrayList<C2992d> arrayList5 = arrayList4;
                if (arrayList4 == null) {
                    arrayList5 = new ArrayList<>();
                }
                WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                if (m39999a != -1) {
                    workInfoPojo.f11399id = m39997a.getString(m39999a);
                }
                if (m39999a2 != -1) {
                    workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39999a2));
                }
                if (m39999a3 != -1) {
                    workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39999a3));
                }
                if (m39999a4 != -1) {
                    workInfoPojo.runAttemptCount = m39997a.getInt(m39999a4);
                }
                workInfoPojo.tags = arrayList3;
                workInfoPojo.progress = arrayList5;
                arrayList.add(workInfoPojo);
            }
            return arrayList;
        } finally {
            m39997a.close();
        }
    }

    @Override // androidx.work.impl.model.RawWorkInfoDao
    public final LiveData<List<WorkSpec.WorkInfoPojo>> getWorkInfoPojosLiveData(final AbstractC2794d abstractC2794d) {
        return this.__db.f10419e.m39975a(new String[]{"WorkTag", "WorkProgress", "WorkSpec"}, false, (Callable) new Callable<List<WorkSpec.WorkInfoPojo>>() { // from class: androidx.work.impl.model.RawWorkInfoDao_Impl.1
            @Override // java.util.concurrent.Callable
            public List<WorkSpec.WorkInfoPojo> call() throws Exception {
                Cursor m39997a = C2721c.m39997a(RawWorkInfoDao_Impl.this.__db, abstractC2794d, true);
                try {
                    int m39999a = C2720b.m39999a(m39997a, "id");
                    int m39999a2 = C2720b.m39999a(m39997a, VerizonSSPWaterfallProvider.USER_DATA_STATE_KEY);
                    int m39999a3 = C2720b.m39999a(m39997a, "output");
                    int m39999a4 = C2720b.m39999a(m39997a, "run_attempt_count");
                    C0428a c0428a = new C0428a();
                    C0428a c0428a2 = new C0428a();
                    while (m39997a.moveToNext()) {
                        if (!m39997a.isNull(m39999a)) {
                            String string = m39997a.getString(m39999a);
                            if (((ArrayList) c0428a.get(string)) == null) {
                                c0428a.put(string, new ArrayList());
                            }
                        }
                        if (!m39997a.isNull(m39999a)) {
                            String string2 = m39997a.getString(m39999a);
                            if (((ArrayList) c0428a2.get(string2)) == null) {
                                c0428a2.put(string2, new ArrayList());
                            }
                        }
                    }
                    m39997a.moveToPosition(-1);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkTagAsjavaLangString(c0428a);
                    RawWorkInfoDao_Impl.this.__fetchRelationshipWorkProgressAsandroidxWorkData(c0428a2);
                    ArrayList arrayList = new ArrayList(m39997a.getCount());
                    while (m39997a.moveToNext()) {
                        ArrayList arrayList2 = !m39997a.isNull(m39999a) ? (ArrayList) c0428a.get(m39997a.getString(m39999a)) : null;
                        ArrayList arrayList3 = arrayList2;
                        if (arrayList2 == null) {
                            arrayList3 = new ArrayList();
                        }
                        ArrayList arrayList4 = null;
                        if (!m39997a.isNull(m39999a)) {
                            arrayList4 = (ArrayList) c0428a2.get(m39997a.getString(m39999a));
                        }
                        ArrayList arrayList5 = arrayList4;
                        if (arrayList4 == null) {
                            arrayList5 = new ArrayList();
                        }
                        WorkSpec.WorkInfoPojo workInfoPojo = new WorkSpec.WorkInfoPojo();
                        if (m39999a != -1) {
                            workInfoPojo.f11399id = m39997a.getString(m39999a);
                        }
                        if (m39999a2 != -1) {
                            workInfoPojo.state = WorkTypeConverters.intToState(m39997a.getInt(m39999a2));
                        }
                        if (m39999a3 != -1) {
                            workInfoPojo.output = C2992d.m39509a(m39997a.getBlob(m39999a3));
                        }
                        if (m39999a4 != -1) {
                            workInfoPojo.runAttemptCount = m39997a.getInt(m39999a4);
                        }
                        workInfoPojo.tags = arrayList3;
                        workInfoPojo.progress = arrayList5;
                        arrayList.add(workInfoPojo);
                    }
                    return arrayList;
                } finally {
                    m39997a.close();
                }
            }
        });
    }
}
