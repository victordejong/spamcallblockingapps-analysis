package p193e.p194a.p1053m0.p1057c1;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.truecaller.log.UnmutedException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.AbstractC8448a;
import p193e.p194a.p372b0.p413i.p414e.C8456a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.m0.c1.p */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/p.class */
public final class C18077p implements C8456a.AbstractC8463g {
    @Override // p193e.p194a.p372b0.p413i.p414e.C8456a.AbstractC8463g
    /* renamed from: c */
    public Cursor mo15459c(AbstractC8448a abstractC8448a, C8456a c8456a, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        String str3;
        Cursor cursor;
        String str4;
        l.e(abstractC8448a, "provider");
        l.e(c8456a, "helper");
        l.e(uri, "uri");
        String queryParameter = uri.getQueryParameter("sorting_mode");
        k kVar = (queryParameter != null && queryParameter.hashCode() == 2013122196 && queryParameter.equals("last_name")) ? new k("sorting_group_2", "sorting_key_2") : new k("sorting_group_1", "sorting_key_1");
        String str5 = (String) kVar.a;
        String str6 = (String) kVar.b;
        String queryParameter2 = uri.getQueryParameter("phonebook_filter");
        if (queryParameter2 == null) {
            str3 = "";
        } else {
            int hashCode = queryParameter2.hashCode();
            if (hashCode == -1028583081) {
                str3 = "";
                if (queryParameter2.equals("phonebook")) {
                    str3 = "WHERE contact_phonebook_id IS NOT NULL OR (contact_source & 32)=32";
                }
            } else if (hashCode != 915036773) {
                str3 = "";
            } else {
                str3 = "";
                if (queryParameter2.equals("non_phonebook")) {
                    StringBuilder m8728C = C22128a.m8728C("WHERE contact_phonebook_id IS NULL AND (contact_source & 32)!=32 ");
                    String queryParameter3 = uri.getQueryParameter("hidden_from_identified_filter");
                    String queryParameter4 = uri.getQueryParameter("identified_spam_score_filter");
                    if (queryParameter3 == null && queryParameter4 == null) {
                        str4 = "";
                    } else {
                        boolean z = queryParameter3 != null && Boolean.parseBoolean(queryParameter3);
                        boolean z2 = false;
                        if (queryParameter4 != null) {
                            z2 = false;
                            if (Boolean.parseBoolean(queryParameter4)) {
                                z2 = true;
                            }
                        }
                        if (z && z2) {
                            str4 = "AND (hidden_from_identified IS NULL OR hidden_from_identified==0) AND contact_spam_type IS NULL";
                        } else if (z) {
                            str4 = "AND (hidden_from_identified IS NULL OR hidden_from_identified==0)";
                        } else {
                            str4 = "";
                            if (z2) {
                                str4 = "AND contact_spam_type IS NULL";
                            }
                        }
                    }
                    m8728C.append(str4);
                    str3 = m8728C.toString();
                }
            }
        }
        StringBuilder m8688M = C22128a.m8688M("\n            SELECT ", str5, " AS group_label, COUNT(*) AS label_count FROM sorted_contacts_shallow\n            ", str3, "\n            GROUP BY ");
        C22128a.m8666T0(m8688M, str5, " ORDER BY ", str6, " IS NULL, ");
        try {
            cursor = abstractC8448a.m28528m().rawQuery(C22128a.m8618h(m8688M, str6, "\n            "), null, cancellationSignal);
        } catch (IllegalStateException e) {
            StringBuilder m8728C2 = C22128a.m8728C("Exception while fetching fast scroll indexes: ");
            m8728C2.append(e.getMessage());
            C10480a.m26061I1(new UnmutedException.C4147f(m8728C2.toString()));
            cursor = null;
        }
        return cursor;
    }
}
