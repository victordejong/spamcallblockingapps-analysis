package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.os.Build;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/app/b.class */
public class b {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/b$a.class */
    static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private final ActivityOptions f1705a;

        a(ActivityOptions activityOptions) {
            this.f1705a = activityOptions;
        }

        @Override // androidx.core.app.b
        public final Bundle a() {
            return this.f1705a.toBundle();
        }
    }

    protected b() {
    }

    public static b a(Activity activity, androidx.core.e.b<View, String>... bVarArr) {
        if (Build.VERSION.SDK_INT < 21) {
            return new b();
        }
        Pair[] pairArr = null;
        if (bVarArr != null) {
            Pair[] pairArr2 = new Pair[bVarArr.length];
            int i = 0;
            while (true) {
                pairArr = pairArr2;
                if (i >= bVarArr.length) {
                    break;
                }
                pairArr2[i] = Pair.create(bVarArr[i].f1889a, bVarArr[i].f1890b);
                i++;
            }
        }
        return new a(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr));
    }

    public Bundle a() {
        return null;
    }
}
