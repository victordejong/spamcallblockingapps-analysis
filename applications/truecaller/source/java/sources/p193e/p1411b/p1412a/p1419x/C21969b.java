package p193e.p1411b.p1412a.p1419x;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import java.util.HashMap;
import java.util.Map;
import p193e.p1411b.p1412a.AbstractC21900b;
import p193e.p1411b.p1412a.C21938l;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.b.a.x.b */
/* loaded from: classes-dex2jar.jar:e/b/a/x/b.class */
public class C21969b {

    /* renamed from: e */
    public static final Object f60993e = new Object();

    /* renamed from: a */
    public final Context f60994a;

    /* renamed from: b */
    public String f60995b;

    /* renamed from: c */
    public AbstractC21900b f60996c;

    /* renamed from: d */
    public final Map<String, C21938l> f60997d;

    public C21969b(Drawable.Callback callback, String str, AbstractC21900b abstractC21900b, Map<String, C21938l> map) {
        this.f60995b = str;
        if (!TextUtils.isEmpty(str)) {
            String str2 = this.f60995b;
            if (str2.charAt(str2.length() - 1) != '/') {
                this.f60995b = C22128a.m8630e(new StringBuilder(), this.f60995b, '/');
            }
        }
        if (!(callback instanceof View)) {
            this.f60997d = new HashMap();
            this.f60994a = null;
            return;
        }
        this.f60994a = ((View) callback).getContext();
        this.f60997d = map;
        this.f60996c = abstractC21900b;
    }

    /* renamed from: a */
    public final Bitmap m8852a(String str, Bitmap bitmap) {
        synchronized (f60993e) {
            this.f60997d.get(str).f60897c = bitmap;
        }
        return bitmap;
    }
}
