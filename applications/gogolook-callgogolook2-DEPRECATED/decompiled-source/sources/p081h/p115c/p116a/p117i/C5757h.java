package p081h.p115c.p116a.p117i;

import android.net.Uri;
import java.util.Date;
import p081h.p115c.p116a.p117i.C5757h;
/* renamed from: h.c.a.i.h */
/* loaded from: classes-dex2jar.jar:h/c/a/i/h.class */
public class C5757h<T extends C5757h> {

    /* renamed from: a */
    public Uri.Builder f14401a;

    public C5757h(String str, String str2) {
        this.f14401a = Uri.parse(str + str2).buildUpon();
    }

    /* renamed from: a */
    public T m24551a(String str) {
        m24550a("cb", str);
        return this;
    }

    /* renamed from: a */
    public String m24552a() {
        return this.f14401a.build().toString();
    }

    /* renamed from: a */
    public void m24550a(String str, String str2) {
        this.f14401a.appendQueryParameter(str, str2);
    }

    /* renamed from: b */
    public T m24549b() {
        m24551a(Long.toString(Long.valueOf(new Date().getTime()).longValue()));
        return this;
    }
}
