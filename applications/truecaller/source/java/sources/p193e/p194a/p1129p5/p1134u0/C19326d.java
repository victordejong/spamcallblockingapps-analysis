package p193e.p194a.p1129p5.p1134u0;

import android.view.View;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.p5.u0.d */
/* loaded from: classes15-dex2jar.jar:e/a/p5/u0/d.class */
public final class C19326d {

    /* renamed from: a */
    public final View f53768a;

    /* renamed from: b */
    public final int f53769b;

    /* renamed from: c */
    public final String f53770c;

    /* renamed from: d */
    public final String f53771d;

    /* renamed from: e */
    public final String f53772e;

    /* renamed from: f */
    public final int f53773f;

    /* renamed from: g */
    public final int f53774g;

    /* renamed from: h */
    public final int f53775h;

    /* renamed from: i */
    public final int f53776i;

    /* renamed from: j */
    public final int f53777j;

    /* renamed from: k */
    public final Integer f53778k;

    public C19326d(View view, int i, String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, Integer num) {
        l.e(view, ViewAction.VIEW);
        l.e(str, "title");
        l.e(str2, "message");
        l.e(str3, RemoteMessageConst.Notification.TAG);
        this.f53768a = view;
        this.f53769b = i;
        this.f53770c = str;
        this.f53771d = str2;
        this.f53772e = str3;
        this.f53773f = i2;
        this.f53774g = i3;
        this.f53775h = i4;
        this.f53776i = i5;
        this.f53777j = i6;
        this.f53778k = num;
    }

    public /* synthetic */ C19326d(View view, int i, String str, String str2, String str3, int i2, int i3, int i4, int i5, int i6, Integer num, int i7) {
        this(view, i, str, str2, str3, i2, i3, i4, i5, i6, null);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C19326d)) {
                return false;
            }
            C19326d c19326d = (C19326d) obj;
            return l.a(this.f53768a, c19326d.f53768a) && this.f53769b == c19326d.f53769b && l.a(this.f53770c, c19326d.f53770c) && l.a(this.f53771d, c19326d.f53771d) && l.a(this.f53772e, c19326d.f53772e) && this.f53773f == c19326d.f53773f && this.f53774g == c19326d.f53774g && this.f53775h == c19326d.f53775h && this.f53776i == c19326d.f53776i && this.f53777j == c19326d.f53777j && l.a(this.f53778k, c19326d.f53778k);
        }
        return true;
    }

    public int hashCode() {
        View view = this.f53768a;
        int i = 0;
        int hashCode = view != null ? view.hashCode() : 0;
        int i2 = this.f53769b;
        String str = this.f53770c;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f53771d;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f53772e;
        int hashCode4 = str3 != null ? str3.hashCode() : 0;
        int i3 = this.f53773f;
        int i4 = this.f53774g;
        int i5 = this.f53775h;
        int i6 = this.f53776i;
        int i7 = this.f53777j;
        Integer num = this.f53778k;
        if (num != null) {
            i = num.hashCode();
        }
        return (((((((((((((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ShowcaseConfig(view=");
        m8728C.append(this.f53768a);
        m8728C.append(", priority=");
        m8728C.append(this.f53769b);
        m8728C.append(", title=");
        m8728C.append(this.f53770c);
        m8728C.append(", message=");
        m8728C.append(this.f53771d);
        m8728C.append(", tag=");
        m8728C.append(this.f53772e);
        m8728C.append(", titleTextSize=");
        m8728C.append(this.f53773f);
        m8728C.append(", descriptionTextSize=");
        m8728C.append(this.f53774g);
        m8728C.append(", mainColor=");
        m8728C.append(this.f53775h);
        m8728C.append(", dimColor=");
        m8728C.append(this.f53776i);
        m8728C.append(", textColor=");
        m8728C.append(this.f53777j);
        m8728C.append(", descriptionColor=");
        return C22128a.m8689L2(m8728C, this.f53778k, ")");
    }
}
