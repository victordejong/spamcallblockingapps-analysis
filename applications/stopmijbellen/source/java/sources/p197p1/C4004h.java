package p197p1;

import androidx.work.impl.WorkDatabase;
import p067d1.AbstractC2151f;
import p099g1.AbstractC2795a;
import p110h1.C2993a;
/* renamed from: p1.h */
/* loaded from: classes-dex2jar.jar:p1/h.class */
public class C4004h extends AbstractC2151f.AbstractC2153b {
    @Override // p067d1.AbstractC2151f.AbstractC2153b
    /* renamed from: a */
    public void mo1538a(AbstractC2795a abstractC2795a) {
        ((C2993a) abstractC2795a).f10085a.beginTransaction();
        try {
            int i = WorkDatabase.f2643k;
            ((C2993a) abstractC2795a).f10085a.execSQL("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.f2642j) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            ((C2993a) abstractC2795a).f10085a.setTransactionSuccessful();
        } finally {
            ((C2993a) abstractC2795a).f10085a.endTransaction();
        }
    }
}
