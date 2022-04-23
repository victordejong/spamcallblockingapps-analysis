package com.tmobile.services.nameid.utility;

import android.os.Process;
import com.tmobile.services.nameid.MainApplication;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.FieldAttribute;
import io.realm.RealmMigration;
import io.realm.RealmObjectSchema;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.RealmSchema;
import io.realm.Sort;
import java.util.Date;
import java.util.Iterator;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/CustomRealmMigration.class */
public class CustomRealmMigration implements RealmMigration {
    /* renamed from: b */
    private void m5812b(DynamicRealm dynamicRealm, RealmObjectSchema realmObjectSchema) {
        try {
            m5809e(dynamicRealm);
            m5797q(dynamicRealm);
            m5799o(dynamicRealm);
            m5798p(dynamicRealm);
            m5810d(dynamicRealm);
        } catch (Throwable th) {
            LogUtil.m5641f("CustomRealmMigration", "Error while cleaning up duplicate Callers.", th);
        }
    }

    /* renamed from: c */
    private void m5811c(RealmObjectSchema realmObjectSchema) {
        realmObjectSchema.mo2938a("flagForDeletion", Boolean.TYPE, new FieldAttribute[0]);
    }

    /* renamed from: d */
    private void m5810d(DynamicRealm dynamicRealm) {
        RealmQuery<DynamicRealmObject> v0 = dynamicRealm.m3125v0("Caller");
        v0.m2888n("flagForDeletion", Boolean.TRUE);
        v0.m2918E().m3099d();
    }

    /* renamed from: e */
    private void m5809e(DynamicRealm dynamicRealm) {
        Sort sort = Sort.DESCENDING;
        Iterator<DynamicRealmObject> it = dynamicRealm.m3125v0("Caller").m2918E().m3088t(new String[]{"e164Number", "date"}, new Sort[]{sort, sort}).iterator();
        String str = "INITIAL DUMMY VALUE";
        while (it.hasNext()) {
            DynamicRealmObject next = it.next();
            String string = next.getString("e164Number");
            if (string.equals(str)) {
                next.setBoolean("flagForDeletion", false);
                str = string;
            } else {
                next.setBoolean("flagForDeletion", true);
            }
        }
    }

    /* renamed from: f */
    private DynamicRealmObject m5808f(DynamicRealm dynamicRealm, String str) {
        RealmQuery<DynamicRealmObject> v0 = dynamicRealm.m3125v0("Caller");
        v0.m2882t(Name.MARK, str);
        return v0.m2916G();
    }

    /* renamed from: g */
    private DynamicRealmObject m5807g(DynamicRealm dynamicRealm, String str) {
        RealmQuery<DynamicRealmObject> v0 = dynamicRealm.m3125v0("Caller");
        v0.m2882t("e164Number", str);
        return v0.m2916G();
    }

    /* renamed from: h */
    private String m5806h(DynamicRealmObject dynamicRealmObject) {
        String string = dynamicRealmObject.getString("callerId");
        if (string == null) {
            string = "";
        }
        return string;
    }

    /* renamed from: i */
    private String m5805i(DynamicRealmObject dynamicRealmObject) {
        String string = dynamicRealmObject.getString("e164Number");
        if (string == null) {
            string = "";
        }
        return string;
    }

    /* renamed from: j */
    private boolean m5804j(DynamicRealm dynamicRealm) {
        boolean z = true;
        try {
            Iterator<DynamicRealmObject> it = dynamicRealm.m3125v0("ActivityItem").m2918E().iterator();
            while (it.hasNext()) {
                DynamicRealmObject next = it.next();
                String string = next.getString("callerId");
                RealmQuery<DynamicRealmObject> v0 = dynamicRealm.m3125v0("Caller");
                v0.m2882t(Name.MARK, string);
                DynamicRealmObject G = v0.m2916G();
                String str = "Not found";
                int i = -1;
                if (G != null) {
                    str = G.getString("name");
                    i = G.getInt("bucketId");
                    G.setBoolean("flagForDeletion", true);
                }
                next.setString("callerName", str);
                next.setInt("bucketId", i);
            }
        } catch (Throwable th) {
            LogUtil.m5641f("CustomRealmMigration", "Error while migrating Caller info.", th);
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    private void m5803k(DynamicRealm dynamicRealm, RealmSchema realmSchema) {
        RealmObjectSchema e = realmSchema.mo2856e("ActivityItem");
        RealmObjectSchema e2 = realmSchema.mo2856e("Caller");
        if (e != null && e2 != null) {
            m5811c(e2);
            e.mo2938a("callerName", String.class, new FieldAttribute[0]);
            e.mo2938a("bucketId", Integer.TYPE, new FieldAttribute[0]);
            if (!m5804j(dynamicRealm)) {
                MainApplication.m7531i();
                Process.killProcess(Process.myPid());
            }
            e.mo2924o("callerId");
            e.mo2924o("detailsOnly");
            e2.mo2924o("fromSearch");
            e2.mo2924o("fromLookup");
            m5812b(dynamicRealm, e2);
            m5801m(e2);
        }
    }

    /* renamed from: l */
    private void m5802l(DynamicRealm dynamicRealm, RealmSchema realmSchema) {
        RealmObjectSchema e;
        if (realmSchema.m2858c("TmoUserStatus")) {
            RealmObjectSchema e2 = realmSchema.mo2856e("TmoUserStatus");
            if (e2 != null) {
                if (!e2.m2927l("novm")) {
                    e2.mo2938a("novm", Boolean.TYPE, new FieldAttribute[0]);
                }
                if (!e2.m2927l("CNAMON")) {
                    e2.mo2938a("CNAMON", Boolean.TYPE, new FieldAttribute[0]);
                }
                if (!e2.m2927l("CNAMEligible")) {
                    e2.mo2938a("CNAMEligible", Boolean.TYPE, new FieldAttribute[0]);
                }
                if (!e2.m2927l("VMTTOFF")) {
                    e2.mo2938a("VMTTOFF", Boolean.TYPE, new FieldAttribute[0]);
                }
                if (!e2.m2927l("customerType")) {
                    e2.mo2938a("customerType", String.class, new FieldAttribute[0]);
                }
                if (!e2.m2927l("pnb")) {
                    e2.mo2938a("pnb", String.class, new FieldAttribute[0]);
                }
                if (!e2.m2927l("vmtt")) {
                    e2.mo2938a("vmtt", String.class, new FieldAttribute[0]);
                }
            } else {
                return;
            }
        }
        realmSchema.mo2857d("CheckName").mo2938a("name", String.class, new FieldAttribute[0]).mo2923p("name", true).mo2938a("updated", Date.class, new FieldAttribute[0]).mo2923p("updated", true);
        if (realmSchema.m2858c("ActivityItem") && (e = realmSchema.mo2856e("ActivityItem")) != null && !e.m2927l("callerType")) {
            e.mo2938a("callerType", String.class, new FieldAttribute[0]);
        }
    }

    /* renamed from: m */
    private void m5801m(RealmObjectSchema realmObjectSchema) {
        realmObjectSchema.mo2924o("flagForDeletion");
    }

    /* renamed from: n */
    private void m5800n(DynamicRealmObject dynamicRealmObject) {
        dynamicRealmObject.setBoolean("flagForDeletion", false);
    }

    /* renamed from: o */
    private void m5799o(DynamicRealm dynamicRealm) {
        RealmQuery<DynamicRealmObject> v0 = dynamicRealm.m3125v0("Caller");
        v0.m2888n("fromLookup", Boolean.TRUE);
        RealmResults<DynamicRealmObject> E = v0.m2918E();
        LogUtil.m5643d("CustomRealmMigration", "Unflagging lookup Callers: " + E.size());
        Iterator<DynamicRealmObject> it = E.iterator();
        while (it.hasNext()) {
            DynamicRealmObject next = it.next();
            LogUtil.m5643d("CustomRealmMigration", "Unflagging a lookup Caller: " + next);
            if (next != null) {
                m5800n(next);
            }
        }
    }

    /* renamed from: p */
    private void m5798p(DynamicRealm dynamicRealm) {
        RealmResults<DynamicRealmObject> E = dynamicRealm.m3125v0("SearchedNumber").m2918E();
        LogUtil.m5643d("CustomRealmMigration", "Unflagging searched Callers: " + E.size());
        Iterator<DynamicRealmObject> it = E.iterator();
        while (it.hasNext()) {
            String i = m5805i(it.next());
            DynamicRealmObject g = m5807g(dynamicRealm, i);
            LogUtil.m5643d("CustomRealmMigration", "Unflagging a searched Caller: " + i + " " + g);
            if (g != null) {
                m5800n(g);
            }
        }
    }

    /* renamed from: q */
    private void m5797q(DynamicRealm dynamicRealm) {
        Iterator<DynamicRealmObject> it = dynamicRealm.m3125v0("CallerSetting").m2918E().iterator();
        while (it.hasNext()) {
            DynamicRealmObject f = m5808f(dynamicRealm, m5806h(it.next()));
            if (f != null) {
                m5800n(f);
            }
        }
        Iterator<DynamicRealmObject> it2 = dynamicRealm.m3125v0("MessageUserPreference").m2918E().iterator();
        while (it2.hasNext()) {
            DynamicRealmObject f2 = m5808f(dynamicRealm, m5806h(it2.next()));
            if (f2 != null) {
                m5800n(f2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4, types: [long] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // io.realm.RealmMigration
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo2943a(io.realm.DynamicRealm r9, long r10, long r12) {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.CustomRealmMigration.mo2943a(io.realm.DynamicRealm, long, long):void");
    }
}
