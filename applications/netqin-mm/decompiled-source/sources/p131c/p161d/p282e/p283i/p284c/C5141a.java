package p131c.p161d.p282e.p283i.p284c;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p282e.p283i.C5140b;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
/* renamed from: c.d.e.i.c.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/i/c/a.class */
public class C5141a {

    /* renamed from: a */
    public final Map<String, C5140b> f17755a = new HashMap();

    /* renamed from: b */
    public final Context f17756b;

    /* renamed from: c */
    public final AbstractC5143a f17757c;

    public C5141a(Context context, AbstractC5143a aVar) {
        this.f17756b = context;
        this.f17757c = aVar;
    }

    /* renamed from: a */
    public C5140b m24421a(String str) {
        return new C5140b(this.f17756b, this.f17757c, str);
    }

    /* renamed from: b */
    public C5140b m24420b(String str) {
        C5140b bVar;
        synchronized (this) {
            if (!this.f17755a.containsKey(str)) {
                this.f17755a.put(str, m24421a(str));
            }
            bVar = this.f17755a.get(str);
        }
        return bVar;
    }
}
