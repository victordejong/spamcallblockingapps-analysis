package p1727n3.p1834m0.p1835c0;

import androidx.work.impl.WorkDatabase;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
/* renamed from: n3.m0.c0.i */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/i.class */
public class C26690i extends AbstractC25677q.AbstractC25679b {
    @Override // p1727n3.p1751c0.AbstractC25677q.AbstractC25679b
    /* renamed from: c */
    public void mo1434c(AbstractC26147b abstractC26147b) {
        abstractC26147b.mo2657w();
        try {
            int i = WorkDatabase.f1570b;
            abstractC26147b.mo2668S0("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < " + (System.currentTimeMillis() - WorkDatabase.f1569a) + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
            abstractC26147b.mo2663b1();
        } finally {
            abstractC26147b.mo2659f1();
        }
    }
}
