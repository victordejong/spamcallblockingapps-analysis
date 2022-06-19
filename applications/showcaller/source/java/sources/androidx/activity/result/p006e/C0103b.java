package androidx.activity.result.p006e;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.p006e.AbstractC0101a;
import androidx.core.content.C0586a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: androidx.activity.result.e.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/e/b.class */
public final class C0103b extends AbstractC0101a<String[], Map<String, Boolean>> {
    /* renamed from: e */
    static Intent m35716e(String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    /* renamed from: d */
    public Intent mo32732a(Context context, String[] strArr) {
        return m35716e(strArr);
    }

    /* renamed from: f */
    public AbstractC0101a.C0102a<Map<String, Boolean>> mo35718b(Context context, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return new AbstractC0101a.C0102a<>(Collections.emptyMap());
        }
        C1489a c1489a = new C1489a();
        boolean z = true;
        for (String str : strArr) {
            boolean z2 = C0586a.m33353a(context, str) == 0;
            c1489a.put(str, Boolean.valueOf(z2));
            if (!z2) {
                z = false;
            }
        }
        if (!z) {
            return null;
        }
        return new AbstractC0101a.C0102a<>(c1489a);
    }

    /* renamed from: g */
    public Map<String, Boolean> mo32731c(int i, Intent intent) {
        if (i == -1 && intent != null) {
            String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
            if (intArrayExtra == null || stringArrayExtra == null) {
                return Collections.emptyMap();
            }
            HashMap hashMap = new HashMap();
            int length = stringArrayExtra.length;
            for (int i2 = 0; i2 < length; i2++) {
                hashMap.put(stringArrayExtra[i2], Boolean.valueOf(intArrayExtra[i2] == 0));
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }
}
