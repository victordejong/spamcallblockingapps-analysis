package p1727n3.p1728a.p1730e.p1731d;

import android.content.Context;
import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1788g.C26174a;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.a.e.d.b */
/* loaded from: classes-dex2jar.jar:n3/a/e/d/b.class */
public final class C25378b extends AbstractC25376a<String[], Map<String, Boolean>> {
    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: a */
    public Intent mo3691a(Context context, String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: b */
    public AbstractC25376a.C25377a<Map<String, Boolean>> mo3692b(Context context, String[] strArr) {
        AbstractC25376a.C25377a<Map<String, Boolean>> c25377a;
        String[] strArr2 = strArr;
        if (strArr2 == null || strArr2.length == 0) {
            c25377a = new AbstractC25376a.C25377a<>(Collections.emptyMap());
        } else {
            C26174a c26174a = new C26174a();
            boolean z = true;
            for (String str : strArr2) {
                boolean z2 = C26467a.m1801a(context, str) == 0;
                c26174a.put(str, Boolean.valueOf(z2));
                if (!z2) {
                    z = false;
                }
            }
            c25377a = z ? new AbstractC25376a.C25377a<>(c26174a) : null;
        }
        return c25377a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: c */
    public Map<String, Boolean> mo3690c(int i, Intent intent) {
        HashMap hashMap;
        if (i != -1) {
            hashMap = Collections.emptyMap();
        } else if (intent == null) {
            hashMap = Collections.emptyMap();
        } else {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                hashMap = Collections.emptyMap();
            } else {
                hashMap = new HashMap();
                int length = stringArrayExtra.length;
                for (int i2 = 0; i2 < length; i2++) {
                    hashMap.put(stringArrayExtra[i2], Boolean.valueOf(intArrayExtra[i2] == 0));
                }
            }
        }
        return hashMap;
    }
}
