package p065d;

import android.content.Context;
import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p065d.AbstractC2130a;
import p066d0.C2134a;
import p226s.C4251a;
/* renamed from: d.b */
/* loaded from: classes-dex2jar.jar:d/b.class */
public final class C2132b extends AbstractC2130a<String[], Map<String, Boolean>> {
    @Override // p065d.AbstractC2130a
    /* renamed from: a */
    public Intent mo3848a(Context context, String[] strArr) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
    }

    @Override // p065d.AbstractC2130a
    /* renamed from: b */
    public AbstractC2130a.C2131a<Map<String, Boolean>> mo3849b(Context context, String[] strArr) {
        AbstractC2130a.C2131a<Map<String, Boolean>> c2131a;
        String[] strArr2 = strArr;
        if (strArr2 == null || strArr2.length == 0) {
            c2131a = new AbstractC2130a.C2131a<>(Collections.emptyMap());
        } else {
            C4251a c4251a = new C4251a();
            boolean z = true;
            for (String str : strArr2) {
                boolean z2 = C2134a.m3846a(context, str) == 0;
                c4251a.put(str, Boolean.valueOf(z2));
                if (!z2) {
                    z = false;
                }
            }
            c2131a = z ? new AbstractC2130a.C2131a<>(c4251a) : null;
        }
        return c2131a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    @Override // p065d.AbstractC2130a
    /* renamed from: c */
    public Map<String, Boolean> mo3847c(int i, Intent intent) {
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
