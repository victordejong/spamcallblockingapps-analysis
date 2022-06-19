package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.BackupSettingItem;
import e.m.e.e0.a0.e;
import e.m.e.e0.a0.m;
import e.m.e.e0.s;
import e.m.e.k;
import e.m.e.o;
import e.m.e.p;
import e.m.e.q;
import e.m.e.t;
import e.m.e.w;
import java.lang.reflect.Type;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.n.w */
/* loaded from: classes5-dex2jar.jar:e/a/n/w.class */
public final class C18441w implements p<BackupSettingItem<? extends Object>> {
    /* renamed from: a */
    public Object m14982a(q qVar, Type type, o oVar) {
        BackupSettingItem backupSettingItem;
        l.e(qVar, "jsonElement");
        l.e(type, "type");
        l.e(oVar, "deserializationContext");
        t d = qVar.d();
        s.e g = d.a.g(AnalyticsConstants.KEY);
        w wVar = (w) (g != null ? g.g : null);
        l.d(wVar, "jsonObject.getAsJsonPrimitive(\"key\")");
        String g2 = wVar.g();
        q l = d.l("value");
        if (l != null && (l instanceof w)) {
            w e = l.e();
            l.d(e, "primitiveValueJsonObject");
            if (e.a instanceof Number) {
                if (g2 != null && g2.hashCode() == 272484303 && g2.equals("key_backup_frequency_hours")) {
                    backupSettingItem = new BackupSettingItem(g2, Long.valueOf(e.f()));
                } else {
                    l.d(g2, AnalyticsConstants.KEY);
                    backupSettingItem = new BackupSettingItem(g2, Integer.valueOf(e.b()));
                }
                return backupSettingItem;
            }
        }
        l.d(g2, AnalyticsConstants.KEY);
        k kVar = ((m.b) oVar).a.c;
        Objects.requireNonNull(kVar);
        backupSettingItem = new BackupSettingItem(g2, l == null ? null : kVar.c(new e(l), Object.class));
        return backupSettingItem;
    }
}
