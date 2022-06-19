package p193e.p194a.p1041l0;

import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p430q.C8574c0;
import s1.i;
import s1.z.b.a;
/* renamed from: e.a.l0.j */
/* loaded from: classes6-dex2jar.jar:e/a/l0/j.class */
public final class C17355j {

    /* renamed from: a */
    public static final String[] f48609a = {"_id", "tc_id", "normalized_number", "raw_number", "country_code", "number_type", "type", "action", "timestamp", "subscription_id", "subscription_component_name", "feature", "filter_source", "history_aggregated_contact_id", "history_aggregated_contact_tc_id", "call_log_id", "tc_flag", "contact_name", "contact_image_url", "contact_phonebook_id", "contact_source", "contact_spam_score", "contact_spam_type", "spam_categories", "contact_badges", "contact_premium_level", "contact_premium_scope"};

    /* renamed from: a */
    public static final String m16197a(String str, String str2, a aVar) {
        boolean booleanValue = ((Boolean) aVar.invoke()).booleanValue();
        if (booleanValue) {
            str = C22128a.m8725C2(str, " AND ", str2);
        } else if (booleanValue) {
            throw new i();
        }
        return str;
    }

    /* renamed from: b */
    public static final String m16196b(String str) {
        if (C8574c0.m28353f(str) || str == null) {
            str = "";
        }
        return str;
    }
}
