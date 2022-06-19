package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import androidx.core.p036e.C0828b;
/* renamed from: androidx.core.app.b */
/* loaded from: classes-dex2jar.jar:androidx/core/app/b.class */
public class C0734b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/b$a.class */
    public static final class C0735a extends C0734b {

        /* renamed from: a */
        private final ActivityOptions f3267a;

        C0735a(ActivityOptions activityOptions) {
            this.f3267a = activityOptions;
        }

        @Override // androidx.core.app.C0734b
        /* renamed from: a */
        public final Bundle mo44605a() {
            return this.f3267a.toBundle();
        }
    }

    protected C0734b() {
    }

    /* renamed from: a */
    public static C0734b m44606a(Activity activity, C0828b<View, String>... c0828bArr) {
        if (Build.VERSION.SDK_INT >= 21) {
            Pair[] pairArr = null;
            if (c0828bArr != null) {
                Pair[] pairArr2 = new Pair[c0828bArr.length];
                int i = 0;
                while (true) {
                    pairArr = pairArr2;
                    if (i >= c0828bArr.length) {
                        break;
                    }
                    pairArr2[i] = Pair.create(c0828bArr[i].f3556a, c0828bArr[i].f3557b);
                    i++;
                }
            }
            return new C0735a(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
        }
        return new C0734b();
    }

    /* renamed from: a */
    public Bundle mo44605a() {
        return null;
    }
}
