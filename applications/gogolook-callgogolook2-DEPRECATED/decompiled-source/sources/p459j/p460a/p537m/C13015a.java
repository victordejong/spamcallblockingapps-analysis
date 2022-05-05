package p459j.p460a.p537m;

import android.text.TextUtils;
import androidx.annotation.DrawableRes;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.m.a */
/* loaded from: classes2-dex2jar.jar:j/a/m/a.class */
public class C13015a {

    /* renamed from: j.a.m.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/m/a$b.class */
    public static class C13017b {

        /* renamed from: a */
        public int f29443a;

        /* renamed from: b */
        public String f29444b;

        /* renamed from: c */
        public String f29445c;

        public C13017b(@DrawableRes int i, String str, String str2) {
            this.f29443a = 0;
            this.f29443a = i;
            this.f29444b = str;
            this.f29445c = str2;
        }

        /* renamed from: a */
        public int m4768a() {
            return this.f29443a;
        }

        /* renamed from: b */
        public String m4767b() {
            return this.f29444b;
        }

        /* renamed from: c */
        public String m4766c() {
            return this.f29445c;
        }

        /* renamed from: d */
        public boolean m4765d() {
            return !TextUtils.isEmpty(this.f29444b) && !TextUtils.isEmpty(this.f29445c);
        }
    }

    /* renamed from: a */
    public static C13017b m4770a() {
        return new C13017b(2131231215, C13640c.m3745d().m3744d("mkt_165_report_fraud_title"), C13640c.m3745d().m3744d("mkt_165_report_fraud_url"));
    }

    /* renamed from: b */
    public static boolean m4769b() {
        return C14017g4.m2830F();
    }
}
