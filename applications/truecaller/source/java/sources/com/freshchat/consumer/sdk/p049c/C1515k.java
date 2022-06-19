package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.p049c.p050a.C1501m;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.k */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/k.class */
public class C1515k extends AbstractC1504b {

    /* renamed from: cR */
    private static final String[] f4124cR = new C1501m().m40807cR();
    private final Context context;

    public C1515k(Context context) {
        super(context);
        this.context = context;
    }

    /* renamed from: b */
    private ContentValues m40670b(String str, String str2, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("meta_key", str);
        contentValues.put("meta_value", str2);
        contentValues.put("is_uploaded", (Integer) 0);
        contentValues.put("meta_type", Integer.valueOf(z ? 2 : 1));
        return contentValues;
    }

    /* renamed from: b */
    private void m40671b(String str, String str2) {
        if (C1626as.m40233a(str2)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_uploaded", (Integer) 1);
            m40789cs().update("user_meta", contentValues, "meta_key = ?", new String[]{str});
        }
    }

    /* renamed from: bu */
    private void m40668bu(String str) {
        try {
            m40789cs().delete("user_meta", "meta_key = ? ", new String[]{str});
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(11:6|(1:8)(2:12|(1:14))|9|16|125|17|18|19|(13:21|22|23|24|25|26|27|(12:28|29|30|31|32|33|34|35|(2:37|38)(5:39|40|41|88|89)|110|111|112)|128|114|115|116|117)|121|122)|125|17|18|19|(0)|121|122) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0364, code lost:
        r15 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0368, code lost:
        com.freshchat.consumer.sdk.p057j.C1723q.m39823a(r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        r17 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x036f, code lost:
        r14 = r16;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.beans.User m40673a(boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 896
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p049c.C1515k.m40673a(boolean, boolean):com.freshchat.consumer.sdk.beans.User");
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("meta_key", Integer.valueOf(cursor.getColumnIndex("meta_key")));
            hashMap.put("meta_type", C22128a.m8544z1(hashMap, "meta_value", Integer.valueOf(cursor.getColumnIndex("meta_value")), cursor, "meta_type"));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m40675a(User user) {
        m40674a("fc_user_first_name", user.getFirstName(), false);
        m40674a("fc_user_last_name", user.getLastName(), false);
        m40674a("fc_user_email", user.getEmail(), false);
        m40674a("fc_user_phone", user.getPhone(), false);
        m40674a("fc_user_phone_country", user.getPhoneCountry(), false);
        m40674a("fc_user_ext_identifier", user.getExternalId(), false);
        m40674a("fc_user_restore_id", user.getRestoreId(), false);
        m40674a("fc_user_locale", user.getLocale(), false);
        m40674a("fc_user_jwt_id_token", user.getJwtIdToken(), false);
        for (Map.Entry<String, String> entry : user.getMeta().entrySet()) {
            m40674a(entry.getKey(), entry.getValue(), true);
        }
    }

    /* renamed from: a */
    public void m40674a(String str, String str2, boolean z) {
        if (C1626as.m40233a(str2)) {
            ContentValues m40670b = m40670b(str, str2, z);
            if (m40789cs().update("user_meta", m40670b, "meta_key= ? AND meta_value!= ?", new String[]{str, str2}) != 0) {
                return;
            }
            Cursor query = m40789cs().query("user_meta", null, "meta_key = ?", new String[]{str}, null, null, null);
            if (AbstractC1504b.m40785j(query)) {
                m40789cs().insert("user_meta", null, m40670b);
            }
            AbstractC1504b.m40791c(query);
        }
    }

    /* renamed from: b */
    public void m40672b(User user) {
        for (Map.Entry<String, String> entry : user.getMeta().entrySet()) {
            m40671b(entry.getKey(), entry.getValue());
        }
        m40671b("fc_user_first_name", user.getFirstName());
        m40671b("fc_user_last_name", user.getLastName());
        m40671b("fc_user_email", user.getEmail());
        m40671b("fc_user_phone", user.getPhone());
        m40671b("fc_user_phone_country", user.getPhoneCountry());
        m40671b("fc_user_ext_identifier", user.getExternalId());
        m40671b("fc_user_restore_id", user.getRestoreId());
        m40671b("fc_user_locale", user.getLocale());
        m40671b("fc_user_jwt_id_token", user.getJwtIdToken());
    }

    /* renamed from: bV */
    public boolean m40669bV() {
        boolean z = false;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                Cursor query = m40789cs().query("user_meta", f4124cR, "is_uploaded = 0", null, null, null, null, null);
                cursor2 = query;
                cursor = query;
                cursor = query;
                if (query.getCount() == 0) {
                    z = true;
                    cursor = query;
                }
            } catch (Exception e) {
                cursor2 = cursor;
                C1723q.m39823a(e);
            }
            AbstractC1504b.m40791c(cursor);
            return z;
        } catch (Throwable th) {
            AbstractC1504b.m40791c(cursor2);
            throw th;
        }
    }

    /* renamed from: iu */
    public void m40667iu() {
        m40668bu("fc_user_restore_id");
    }
}
