package p1727n3.p1807k.p1808a;

import android.app.Notification;
import android.content.Context;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1788g.C26177c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.k.a.v */
/* loaded from: classes-dex2jar.jar:n3/k/a/v.class */
public class C26456v implements AbstractC26441j {

    /* renamed from: a */
    public final Context f74183a;

    /* renamed from: b */
    public final Notification.Builder f74184b;

    /* renamed from: c */
    public final C26450q f74185c;

    /* renamed from: d */
    public RemoteViews f74186d;

    /* renamed from: e */
    public RemoteViews f74187e;

    /* renamed from: f */
    public final List<Bundle> f74188f = new ArrayList();

    /* renamed from: g */
    public final Bundle f74189g = new Bundle();

    /* renamed from: h */
    public int f74190h;

    /* renamed from: i */
    public RemoteViews f74191i;

    /* JADX WARN: Removed duplicated region for block: B:172:0x07ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C26456v(p1727n3.p1807k.p1808a.C26450q r7) {
        /*
            Method dump skipped, instructions count: 2173
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1807k.p1808a.C26456v.<init>(n3.k.a.q):void");
    }

    /* renamed from: a */
    public static List<String> m1823a(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        C26177c c26177c = new C26177c(list2.size() + list.size());
        c26177c.addAll(list);
        c26177c.addAll(list2);
        return new ArrayList(c26177c);
    }

    /* renamed from: b */
    public static List<String> m1822b(List<C26464y> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (C26464y c26464y : list) {
            String str = c26464y.f74218c;
            if (str == null) {
                if (c26464y.f74216a != null) {
                    StringBuilder m8728C = C22128a.m8728C("name:");
                    m8728C.append((Object) c26464y.f74216a);
                    str = m8728C.toString();
                } else {
                    str = "";
                }
            }
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: c */
    public final void m1821c(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        int i = notification.defaults & (-2);
        notification.defaults = i;
        notification.defaults = i & (-3);
    }
}
