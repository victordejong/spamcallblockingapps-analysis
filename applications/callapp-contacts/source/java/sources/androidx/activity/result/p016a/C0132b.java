package androidx.activity.result.p016a;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.p016a.AbstractC0130a;
import androidx.core.content.C0790b;
import androidx.p023b.C0428a;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.activity.result.a.b */
/* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b.class */
public final class C0132b {

    /* renamed from: androidx.activity.result.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b$a.class */
    public static final class C0133a extends AbstractC0130a<String[], Map<String, Boolean>> {
        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ Intent mo43665a(String[] strArr) {
            return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
        }

        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ AbstractC0130a.C0131a<Map<String, Boolean>> mo46387a(Context context, String[] strArr) {
            String[] strArr2 = strArr;
            if (strArr2 == null || strArr2.length == 0) {
                return new AbstractC0130a.C0131a<>(Collections.emptyMap());
            }
            C0428a c0428a = new C0428a();
            boolean z = true;
            for (String str : strArr2) {
                boolean z2 = C0790b.m44498a(context, str) == 0;
                c0428a.put(str, Boolean.valueOf(z2));
                if (!z2) {
                    z = false;
                }
            }
            if (!z) {
                return null;
            }
            return new AbstractC0130a.C0131a<>(c0428a);
        }

        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ Map<String, Boolean> mo43666a(int i, Intent intent) {
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

    /* renamed from: androidx.activity.result.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/activity/result/a/b$b.class */
    public static final class C0134b extends AbstractC0130a<Intent, ActivityResult> {
        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ Intent mo43665a(Intent intent) {
            return intent;
        }

        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ ActivityResult mo43666a(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    private C0132b() {
    }
}
