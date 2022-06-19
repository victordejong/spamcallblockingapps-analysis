package p068d2;

import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
/* renamed from: d2.s */
/* loaded from: classes-dex2jar.jar:d2/s.class */
public class C2402s {

    /* renamed from: a */
    public String f8513a;

    /* renamed from: b */
    public String f8514b;

    /* renamed from: c */
    public int f8515c;

    /* renamed from: d */
    public int f8516d;

    /* renamed from: e */
    public int f8517e;

    /* renamed from: f */
    public int f8518f;

    /* renamed from: g */
    public boolean f8519g;

    public C2402s(String str) {
        this.f8513a = str;
    }

    /* renamed from: a */
    public final int m3604a(int i) {
        if (!C2408t.m3589f() || C2408t.m3591d().f8064B || C2408t.m3591d().f8065C) {
            m3602c();
            return 0;
        }
        return i;
    }

    /* renamed from: b */
    public final String m3603b(String str) {
        if (!C2408t.m3589f() || C2408t.m3591d().f8064B || C2408t.m3591d().f8065C) {
            m3602c();
            str = "";
        }
        return str;
    }

    /* renamed from: c */
    public final void m3602c() {
        C0082b.m8750l(0, 0, C0608b.m7626i("The AdColonyZone API is not available while AdColony is disabled."), false);
    }
}
