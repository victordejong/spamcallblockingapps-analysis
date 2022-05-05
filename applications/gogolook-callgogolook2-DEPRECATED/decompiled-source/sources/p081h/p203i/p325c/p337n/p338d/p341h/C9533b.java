package p081h.p203i.p325c.p337n.p338d.p341h;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import p081h.p203i.p325c.p337n.p338d.p356r.AbstractC9832b;
/* renamed from: h.i.c.n.d.h.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/b.class */
public class C9533b {

    /* renamed from: a */
    public final String f21705a;

    /* renamed from: b */
    public final String f21706b;

    /* renamed from: c */
    public final String f21707c;

    /* renamed from: d */
    public final String f21708d;

    /* renamed from: e */
    public final String f21709e;

    /* renamed from: f */
    public final String f21710f;

    /* renamed from: g */
    public final AbstractC9832b f21711g;

    public C9533b(String str, String str2, String str3, String str4, String str5, String str6, AbstractC9832b bVar) {
        this.f21705a = str;
        this.f21706b = str2;
        this.f21707c = str3;
        this.f21708d = str4;
        this.f21709e = str5;
        this.f21710f = str6;
        this.f21711g = bVar;
    }

    /* renamed from: a */
    public static C9533b m14968a(Context context, C9621y yVar, String str, String str2, AbstractC9832b bVar) throws PackageManager.NameNotFoundException {
        String packageName = context.getPackageName();
        String c = yVar.m14685c();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        String str4 = str3;
        if (str3 == null) {
            str4 = "0.0";
        }
        return new C9533b(str, str2, c, packageName, num, str4, bVar);
    }
}
