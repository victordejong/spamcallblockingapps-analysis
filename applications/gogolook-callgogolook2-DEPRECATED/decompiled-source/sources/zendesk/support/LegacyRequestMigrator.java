package zendesk.support;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/support/LegacyRequestMigrator.class */
public class LegacyRequestMigrator implements RequestMigrator {
    public SharedPreferences legacyRequestStorage;

    public LegacyRequestMigrator(SharedPreferences sharedPreferences) {
        this.legacyRequestStorage = sharedPreferences;
    }

    @Override // zendesk.support.RequestMigrator
    public void clearLegacyRequestStorage() {
        this.legacyRequestStorage.edit().clear().apply();
    }

    public final String getCommentCountKey(String str) {
        return String.format(Locale.US, "%s-%s", "request-id-cc", str);
    }

    @Override // zendesk.support.RequestMigrator
    public List<RequestData> getLegacyRequests() {
        String string = this.legacyRequestStorage.getString("stored_requests", null);
        if (C10862d.m10389c(string)) {
            return Collections.emptyList();
        }
        C10845a.m10422a("LegacyRequestMigrator", "Migrating legacy request IDs.", new Object[0]);
        List<String> a = C10862d.m10392a(string);
        ArrayList arrayList = new ArrayList(a.size());
        for (String str : a) {
            int i = this.legacyRequestStorage.getInt(getCommentCountKey(str), -1);
            if (i > -1) {
                arrayList.add(RequestData.create(str, i, 0));
            } else {
                arrayList.add(RequestData.create(str, 0, 0));
            }
        }
        return arrayList;
    }
}
