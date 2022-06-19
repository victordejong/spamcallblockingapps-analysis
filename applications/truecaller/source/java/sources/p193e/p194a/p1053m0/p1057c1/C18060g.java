package p193e.p194a.p1053m0.p1057c1;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p372b0.p413i.p415f.C8472b;
import s1.z.c.f0;
/* renamed from: e.a.m0.c1.g */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/g.class */
public final class C18060g {

    /* renamed from: a */
    public static final String f50979a;

    /* renamed from: b */
    public static final String f50980b;

    static {
        String[] strArr = C17891a1.C17896e.f50892a;
        f50979a = C22128a.m8618h(C22128a.m8728C("\n    CREATE VIEW sorted_contacts_with_data AS\n        SELECT aggregated_contact_data.*,\n                "), C8472b.m28499e("contact_sorting_index", null, (String[]) Arrays.copyOf(strArr, strArr.length)), ",\n                contact_settings.hidden_from_identified\n        FROM aggregated_contact_data\n        LEFT JOIN contact_sorting_index\n            ON aggregated_contact_data._id =\n                                                                contact_sorting_index.aggregated_contact_id\n        LEFT JOIN contact_settings\n            ON aggregated_contact_data.tc_id = contact_settings.tc_id\n        WHERE contact_name IS NOT NULL\n            AND contact_name NOT IN ('', 'Truecaller Verification')\n            AND contact_default_number NOT NULL\n            OR contact_phonebook_id IS NOT NULL\n    ");
        StringBuilder m8728C = C22128a.m8728C("\n    CREATE VIEW sorted_contacts_shallow AS\n        SELECT\n            ");
        f0 f0Var = new f0(3);
        f0Var.a.add("_id");
        f0Var.a.add("tc_id");
        f0Var.a(C17891a1.AbstractC17895d.f50891c);
        m8728C.append(C8472b.m28499e("aggregated_contact", null, (String[]) f0Var.a.toArray(new String[f0Var.b()])));
        m8728C.append(",\n            ");
        f50980b = C22128a.m8618h(m8728C, C8472b.m28499e("contact_sorting_index", null, (String[]) Arrays.copyOf(strArr, strArr.length)), ",\n            contact_settings.hidden_from_identified\n        FROM aggregated_contact\n        LEFT JOIN contact_sorting_index\n            ON aggregated_contact._id = contact_sorting_index.aggregated_contact_id\n        LEFT JOIN contact_settings\n            ON aggregated_contact.tc_id = contact_settings.tc_id\n        WHERE contact_name IS NOT NULL\n            AND contact_name NOT IN ('', 'Truecaller Verification')\n            AND contact_default_number NOT NULL\n            OR contact_phonebook_id IS NOT NULL\n    ");
    }
}
