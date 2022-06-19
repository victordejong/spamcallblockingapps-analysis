package p134j4;

import android.content.Context;
import android.content.pm.PackageManager;
import p201p6.C4018c;
/* renamed from: j4.t1 */
/* loaded from: classes-dex2jar.jar:j4/t1.class */
public final class C3252t1 {

    /* renamed from: c */
    public static final C4018c f10976c = new C4018c("PackageStateCache");

    /* renamed from: a */
    public final Context f10977a;

    /* renamed from: b */
    public int f10978b = -1;

    public C3252t1(Context context) {
        this.f10977a = context;
    }

    /* renamed from: a */
    public final int m2504a() {
        int i;
        synchronized (this) {
            if (this.f10978b == -1) {
                try {
                    this.f10978b = this.f10977a.getPackageManager().getPackageInfo(this.f10977a.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException e) {
                    f10976c.m1509c("The current version of the app could not be retrieved", new Object[0]);
                }
            }
            i = this.f10978b;
        }
        return i;
    }
}
