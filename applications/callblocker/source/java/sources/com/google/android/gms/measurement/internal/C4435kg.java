package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.AbstractC3900ed;
import com.google.android.gms.internal.measurement.C3776ao;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.kg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/kg.class */
public final class C4435kg {

    /* renamed from: a */
    private C3776ao.C3781c f19331a;

    /* renamed from: b */
    private Long f19332b;

    /* renamed from: c */
    private long f19333c;

    /* renamed from: d */
    private final /* synthetic */ C4434kf f19334d;

    private C4435kg(C4434kf c4434kf) {
        this.f19334d = c4434kf;
    }

    public /* synthetic */ C4435kg(C4434kf c4434kf, C4433ke c4433ke) {
        this(c4434kf);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0187 -> B:34:0x013a). Please submit an issue!!! */
    /* renamed from: a */
    public final C3776ao.C3781c m4064a(String str, C3776ao.C3781c c3781c) {
        ArrayList arrayList;
        String str2;
        C3776ao.C3781c c3781c2;
        C4211c c4211c;
        Pair<C3776ao.C3781c, Long> m4748a;
        boolean z = true;
        String m6318c = c3781c.m6318c();
        List<C3776ao.C3785e> m6336a = c3781c.m6336a();
        Long l = (Long) this.f19334d.mo4149v_().m4155b(c3781c, "_eid");
        boolean z2 = l != null;
        if (!z2 || !m6318c.equals("_ep")) {
            z = false;
        }
        if (z) {
            String str3 = (String) this.f19334d.mo4149v_().m4155b(c3781c, "_en");
            if (TextUtils.isEmpty(str3)) {
                this.f19334d.mo4030v().m4664c().m4653a("Extra parameter without an event name. eventId", l);
                c3781c2 = null;
            } else {
                if (this.f19331a == null || this.f19332b == null || l.longValue() != this.f19332b.longValue()) {
                    m4748a = this.f19334d.mo4150u_().m4748a(str, l);
                    if (m4748a == null || m4748a.first == null) {
                        this.f19334d.mo4030v().m4664c().m4652a("Extra parameter without existing main event. eventName, eventId", str3, l);
                        c3781c2 = null;
                    } else {
                        this.f19331a = (C3776ao.C3781c) m4748a.first;
                        this.f19333c = ((Long) m4748a.second).longValue();
                        this.f19332b = (Long) this.f19334d.mo4149v_().m4155b(this.f19331a, "_eid");
                    }
                }
                this.f19333c--;
                if (this.f19333c <= 0) {
                    c4211c = this.f19334d.mo4150u_();
                    c4211c.mo4037o();
                    c4211c.mo4030v().m4657j().m4653a("Clearing complex main event info. appId", str);
                    try {
                        c4211c.m4729e().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                        c4211c = c4211c;
                    } catch (SQLiteException e) {
                        c4211c.mo4030v().m4655x_().m4653a("Error clearing complex main event", e);
                        c4211c = c4211c;
                    }
                } else {
                    this.f19334d.mo4150u_().m4747a(str, l, this.f19333c, this.f19331a);
                    c4211c = m4748a;
                }
                ArrayList arrayList2 = new ArrayList();
                for (C3776ao.C3785e c3785e : this.f19331a.m6336a()) {
                    this.f19334d.mo4149v_();
                    if (C4420js.m4177a(c3781c, c3785e.m6271b()) == null) {
                        arrayList2.add(c3785e);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    arrayList2.addAll(m6336a);
                    str2 = str3;
                    arrayList = arrayList2;
                } else {
                    this.f19334d.mo4030v().m4664c().m4653a("No unique parameters in main event. eventName", str3);
                    arrayList = m6336a;
                    str2 = str3;
                }
            }
            return c3781c2;
        }
        if (z2) {
            this.f19332b = l;
            this.f19331a = c3781c;
            Long l2 = 0L;
            Object m4155b = this.f19334d.mo4149v_().m4155b(c3781c, "_epc");
            if (m4155b != null) {
                l2 = m4155b;
            }
            this.f19333c = ((Long) l2).longValue();
            if (this.f19333c <= 0) {
                this.f19334d.mo4030v().m4664c().m4653a("Complex event with zero extra param count. eventName", m6318c);
                arrayList = m6336a;
                str2 = m6318c;
            } else {
                this.f19334d.mo4150u_().m4747a(str, l, this.f19333c, c3781c);
            }
        }
        arrayList = m6336a;
        str2 = m6318c;
        c3781c2 = (C3776ao.C3781c) ((AbstractC3900ed) c3781c.m5642am().m6299a(str2).m6295c().m6300a(arrayList).mo5544u());
        return c3781c2;
    }
}
