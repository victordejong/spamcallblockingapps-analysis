package com.hjq.permissions;

import android.app.Activity;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.hjq.permissions.d */
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/d.class */
public final class C2686d {

    /* renamed from: a */
    private Activity f11240a;

    /* renamed from: b */
    private List<String> f11241b = new ArrayList();

    /* renamed from: c */
    private boolean f11242c;

    private C2686d(Activity activity) {
        this.f11240a = activity;
    }

    /* renamed from: a */
    public static void m2152a(Context context) {
        C2684b.m2168f(context, false);
    }

    /* renamed from: d */
    public static C2686d m2149d(Activity activity) {
        return new C2686d(activity);
    }

    /* renamed from: b */
    public C2686d m2151b(String... strArr) {
        this.f11241b.addAll(Arrays.asList(strArr));
        return this;
    }

    /* renamed from: c */
    public void m2150c(AbstractC2683a aVar) {
        List<String> list = this.f11241b;
        if (list == null || list.size() == 0) {
            this.f11241b = C2685c.m2159g(this.f11240a);
        }
        List<String> list2 = this.f11241b;
        if (list2 == null || list2.size() == 0) {
            throw new IllegalArgumentException("The requested permission cannot be empty");
        }
        Activity activity = this.f11240a;
        if (activity == null) {
            throw new IllegalArgumentException("The activity is empty");
        } else if (aVar != null) {
            C2685c.m2162d(activity, this.f11241b);
            ArrayList<String> e = C2685c.m2161e(this.f11240a, this.f11241b);
            if (e == null || e.size() == 0) {
                aVar.m2174b(this.f11241b, true);
                return;
            }
            C2685c.m2164b(this.f11240a, this.f11241b);
            PermissionFragment.m2178a(new ArrayList(this.f11241b), this.f11242c).m2177b(this.f11240a, aVar);
        } else {
            throw new IllegalArgumentException("The permission request callback interface must be implemented");
        }
    }
}
