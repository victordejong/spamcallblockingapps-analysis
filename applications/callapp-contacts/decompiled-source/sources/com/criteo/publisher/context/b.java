package com.criteo.publisher.context;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import androidx.core.os.ConfigurationCompat;
import com.criteo.publisher.m0.c;
import com.criteo.publisher.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final com.criteo.publisher.context.a f17217a;

    /* renamed from: b  reason: collision with root package name */
    public final c f17218b;

    /* renamed from: c  reason: collision with root package name */
    public final x f17219c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f17220d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/b$a.class */
    static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new a(null);
    }

    public b(Context context, com.criteo.publisher.context.a connectionTypeFetcher, c androidUtil, x session) {
        p.c(context, "context");
        p.c(connectionTypeFetcher, "connectionTypeFetcher");
        p.c(androidUtil, "androidUtil");
        p.c(session, "session");
        this.f17220d = context;
        this.f17217a = connectionTypeFetcher;
        this.f17218b = androidUtil;
        this.f17219c = session;
    }

    public static List<Locale> a() {
        Resources system = Resources.getSystem();
        p.a((Object) system, "Resources.getSystem()");
        androidx.core.os.c locales = ConfigurationCompat.getLocales(system.getConfiguration());
        p.a((Object) locales, "ConfigurationCompat.getL…etSystem().configuration)");
        int a2 = locales.a();
        Locale[] localeArr = new Locale[a2];
        for (int i = 0; i < a2; i++) {
            localeArr[i] = locales.a(i);
        }
        return i.i(localeArr);
    }

    public static List<String> c() {
        List<String> l;
        List<Locale> a2 = a();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = a2.iterator();
        while (true) {
            l = null;
            String str = null;
            if (!it2.hasNext()) {
                break;
            }
            String it3 = ((Locale) it2.next()).getLanguage();
            p.a((Object) it3, "it");
            if (!kotlin.h.p.a((CharSequence) it3)) {
                str = it3;
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
        l = n.l(arrayList);
        if (!(!l.isEmpty())) {
        }
        return l;
    }

    public final Point b() {
        if (Build.VERSION.SDK_INT < 17) {
            return null;
        }
        Point point = new Point();
        Object systemService = this.f17220d.getSystemService("window");
        if (systemService != null) {
            ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
            return point;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }
}
