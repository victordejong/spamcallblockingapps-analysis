package com.hjq.permissions;

import android.app.Activity;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.hjq.permissions.d */
/* loaded from: classes2-dex2jar.jar:com/hjq/permissions/d.class */
public final class C9337d {

    /* renamed from: a */
    private Activity f39931a;

    /* renamed from: b */
    private List<String> f39932b = new ArrayList();

    /* renamed from: c */
    private boolean f39933c;

    private C9337d(Activity activity) {
        this.f39931a = activity;
    }

    /* renamed from: a */
    public static void m1044a(Context context) {
        C9335b.m1060f(context, false);
    }

    /* renamed from: d */
    public static C9337d m1041d(Activity activity) {
        return new C9337d(activity);
    }

    /* renamed from: b */
    public C9337d m1043b(String... strArr) {
        this.f39932b.addAll(Arrays.asList(strArr));
        return this;
    }

    /* renamed from: c */
    public void m1042c(AbstractC9334a abstractC9334a) {
        List<String> list = this.f39932b;
        if (list == null || list.size() == 0) {
            this.f39932b = C9336c.m1051g(this.f39931a);
        }
        List<String> list2 = this.f39932b;
        if (list2 == null || list2.size() == 0) {
            throw new IllegalArgumentException("The requested permission cannot be empty");
        }
        Activity activity = this.f39931a;
        if (activity == null) {
            throw new IllegalArgumentException("The activity is empty");
        }
        if (abstractC9334a == null) {
            throw new IllegalArgumentException("The permission request callback interface must be implemented");
        }
        C9336c.m1054d(activity, this.f39932b);
        ArrayList<String> m1053e = C9336c.m1053e(this.f39931a, this.f39932b);
        if (m1053e == null || m1053e.size() == 0) {
            abstractC9334a.mo1066b(this.f39932b, true);
            return;
        }
        C9336c.m1056b(this.f39931a, this.f39932b);
        PermissionFragment.m1070a(new ArrayList(this.f39932b), this.f39933c).m1069b(this.f39931a, abstractC9334a);
    }
}
