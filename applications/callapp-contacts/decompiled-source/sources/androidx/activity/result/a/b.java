package androidx.activity.result.a;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.a.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b.class */
public final class b {

    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b$a.class */
    public static final class a extends androidx.activity.result.a.a<String[], Map<String, Boolean>> {
        @Override // androidx.activity.result.a.a
        public final /* synthetic */ Intent a(String[] strArr) {
            return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
        }

        @Override // androidx.activity.result.a.a
        public final /* synthetic */ a.C0016a<Map<String, Boolean>> a(Context context, String[] strArr) {
            String[] strArr2 = strArr;
            if (strArr2 == null || strArr2.length == 0) {
                return new a.C0016a<>(Collections.emptyMap());
            }
            androidx.b.a aVar = new androidx.b.a();
            boolean z = true;
            for (String str : strArr2) {
                boolean z2 = androidx.core.content.b.a(context, str) == 0;
                aVar.put(str, Boolean.valueOf(z2));
                if (!z2) {
                    z = false;
                }
            }
            if (z) {
                return new a.C0016a<>(aVar);
            }
            return null;
        }

        @Override // androidx.activity.result.a.a
        public final /* synthetic */ Map<String, Boolean> a(int i, Intent intent) {
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

    /* renamed from: androidx.activity.result.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b$b.class */
    public static final class C0017b extends androidx.activity.result.a.a<Intent, ActivityResult> {
        @Override // androidx.activity.result.a.a
        public final /* bridge */ /* synthetic */ Intent a(Intent intent) {
            return intent;
        }

        @Override // androidx.activity.result.a.a
        public final /* synthetic */ ActivityResult a(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    private b() {
    }
}
