package p193e.p194a.p1053m0.p1057c1;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
/* renamed from: e.a.m0.c1.d0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/d0.class */
public final class C18055d0 {

    /* renamed from: a */
    public static final String f50977a;

    static {
        StringBuilder m8728C = C22128a.m8728C("CREATE VIEW wvm_incoming_with_raw_contact_data AS SELECT _id AS _id,raw_contact_data.tc_id AS tc_id,");
        String[] strArr = C17891a1.AbstractC17895d.f50890b;
        m8728C.append(C8472b.m28499e("raw_contact_data", null, (String[]) Arrays.copyOf(strArr, strArr.length)));
        m8728C.append(",");
        String[] strArr2 = C17891a1.AbstractC17898g.f50894d;
        m8728C.append(C8472b.m28499e("raw_contact_data", null, (String[]) Arrays.copyOf(strArr2, strArr2.length)));
        m8728C.append(",");
        C22128a.m8666T0(m8728C, C8472b.m28499e("profile_view_events", null, "rowid", "type", "timestamp", "source"), " FROM profile_view_events LEFT JOIN raw_contact_data ON ", " profile_view_events.tc_id = raw_contact_data.tc_id", " WHERE raw_contact_data.data_type=1");
        m8728C.append(" AND profile_view_events.type=\"INCOMING\"");
        f50977a = m8728C.toString();
    }
}
