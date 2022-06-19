package com.criteo.publisher.context;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.view.WindowManager;
import androidx.core.p037os.C0859c;
import androidx.core.p037os.ConfigurationCompat;
import com.criteo.publisher.C8532x;
import com.criteo.publisher.p256m0.C8429c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
/* renamed from: com.criteo.publisher.context.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/b.class */
public class C8266b {

    /* renamed from: a */
    public final C8264a f29828a;

    /* renamed from: b */
    public final C8429c f29829b;

    /* renamed from: c */
    public final C8532x f29830c;

    /* renamed from: d */
    private final Context f29831d;

    /* renamed from: com.criteo.publisher.context.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/b$a.class */
    static final class C8267a {
        private C8267a() {
        }

        public /* synthetic */ C8267a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C8267a(null);
    }

    public C8266b(Context context, C8264a connectionTypeFetcher, C8429c androidUtil, C8532x session) {
        C18524p.m3841c(context, "context");
        C18524p.m3841c(connectionTypeFetcher, "connectionTypeFetcher");
        C18524p.m3841c(androidUtil, "androidUtil");
        C18524p.m3841c(session, "session");
        this.f29831d = context;
        this.f29828a = connectionTypeFetcher;
        this.f29829b = androidUtil;
        this.f29830c = session;
    }

    /* renamed from: a */
    public static List<Locale> m25950a() {
        Resources system = Resources.getSystem();
        C18524p.m3849a((Object) system, "Resources.getSystem()");
        C0859c locales = ConfigurationCompat.getLocales(system.getConfiguration());
        C18524p.m3849a((Object) locales, "ConfigurationCompat.getL…etSystem().configuration)");
        int m44298a = locales.m44298a();
        Locale[] localeArr = new Locale[m44298a];
        for (int i = 0; i < m44298a; i++) {
            localeArr[i] = locales.m44297a(i);
        }
        return C18273i.m4183i(localeArr);
    }

    /* renamed from: c */
    public static List<String> m25948c() {
        List<Locale> m25950a = m25950a();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = m25950a.iterator();
        while (true) {
            String str = null;
            if (!it2.hasNext()) {
                break;
            }
            String it3 = ((Locale) it2.next()).getLanguage();
            C18524p.m3849a((Object) it3, "it");
            if (!C18425p.m3966a((CharSequence) it3)) {
                str = it3;
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
        List<String> l = C18282n.m4110l(arrayList);
        if (!(!l.isEmpty())) {
            l = null;
        }
        return l;
    }

    /* renamed from: b */
    public final Point m25949b() {
        if (Build.VERSION.SDK_INT < 17) {
            return null;
        }
        Point point = new Point();
        Object systemService = this.f29831d.getSystemService("window");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
        }
        ((WindowManager) systemService).getDefaultDisplay().getRealSize(point);
        return point;
    }
}
