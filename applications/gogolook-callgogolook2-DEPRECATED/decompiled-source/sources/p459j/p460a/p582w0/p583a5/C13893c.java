package p459j.p460a.p582w0.p583a5;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import gogolook.callgogolook2.gson.InCallSupportedFunctions;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14099o3;
/* renamed from: j.a.w0.a5.c */
/* loaded from: classes3-dex2jar.jar:j/a/w0/a5/c.class */
public class C13893c {

    /* renamed from: a */
    public static final String f31217a = "c";

    /* renamed from: b */
    public static final C13894a f31218b = new C13894a(InCallSupportedFunctions.KEY_SPEAKER);

    /* renamed from: j.a.w0.a5.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/a5/c$a.class */
    public static class C13894a {

        /* renamed from: a */
        public String f31219a;

        /* renamed from: b */
        public HashSet<String> f31220b;

        public C13894a(String str) {
            this.f31219a = null;
            this.f31220b = null;
            this.f31219a = str;
            this.f31220b = new HashSet<>();
        }

        public String toString() {
            return "InCallFunction{name=" + this.f31219a + ", unsupportedModels=" + this.f31220b + CssParser.BLOCK_END;
        }
    }

    /* renamed from: a */
    public static boolean m3128a() {
        m3126b();
        return !m3127a(f31218b.f31220b);
    }

    /* renamed from: a */
    public static boolean m3127a(@NonNull HashSet<String> hashSet) {
        String str = Build.MODEL;
        Iterator<String> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static void m3126b() {
        HashMap<String, Object> a;
        InCallSupportedFunctions h = C14099o3.m2510n().m2517h();
        if (h != null && (a = h.m28407a()) != null) {
            try {
                List list = (List) a.get(InCallSupportedFunctions.KEY_UNSUPPORTED_MODELS);
                if (list != null) {
                    f31218b.f31220b.addAll(list);
                }
            } catch (ClassCastException e) {
                C14080m2.m2614a(f31217a, (Throwable) e);
            }
        }
    }

    /* renamed from: c */
    public static boolean m3125c() {
        return C13640c.m3745d().m3753a("promote_notification_access");
    }
}
