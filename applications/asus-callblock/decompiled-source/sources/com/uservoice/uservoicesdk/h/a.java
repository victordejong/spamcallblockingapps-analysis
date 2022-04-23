package com.uservoice.uservoicesdk.h;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.uservoice.uservoicesdk.e;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4684a;

    /* renamed from: b  reason: collision with root package name */
    private static String f4685b;
    private static com.uservoice.uservoicesdk.h.b c;
    private static boolean d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.uservoice.uservoicesdk.h.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a$a.class */
    public enum EnumC0144a {
        FAQ,
        FAQ_fromHelp,
        FORUM,
        SEARCH,
        SEARCH_fromHelp
    }

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a$b.class */
    public static final class b {

        /* renamed from: com.uservoice.uservoicesdk.h.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a$b$a.class */
        public enum EnumC0145a {
            Click_Useful,
            Click_UnUseful,
            Read_FAQ
        }

        public static Map<String, String> a(EnumC0145a aVar, int i) {
            EnumC0144a aVar2 = EnumC0144a.FAQ;
            if (e.a().f4631b.p) {
                aVar2 = EnumC0144a.FAQ_fromHelp;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("ec", aVar2.name());
            hashMap.put("ea", aVar.name());
            hashMap.put("el", String.valueOf(i));
            return hashMap;
        }

        public static void a(Context context, int i) {
            if (a.d) {
                a.a(context).a(a(EnumC0145a.Read_FAQ, i));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a$c.class */
    public static final class c {

        /* renamed from: com.uservoice.uservoicesdk.h.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/a$c$a.class */
        public enum EnumC0146a {
            View
        }

        public static void a(Context context, int i) {
            if (a.d) {
                com.uservoice.uservoicesdk.h.b a2 = a.a(context);
                EnumC0146a aVar = EnumC0146a.View;
                EnumC0144a aVar2 = EnumC0144a.FORUM;
                HashMap hashMap = new HashMap();
                hashMap.put("ec", aVar2.name());
                hashMap.put("ea", aVar.name());
                hashMap.put("el", String.valueOf(i));
                a2.a(hashMap);
            }
        }
    }

    static {
        String str = Build.TYPE.equals("user") ? "UA-57133151-3" : "UA-57133151-4";
        f4684a = str;
        f4685b = str;
        d = false;
    }

    public static com.uservoice.uservoicesdk.h.b a(Context context) {
        if (c == null) {
            String str = f4685b;
            if (com.uservoice.uservoicesdk.h.b.f4692a == null) {
                com.uservoice.uservoicesdk.h.b.f4692a = new com.uservoice.uservoicesdk.h.b(context, str);
            }
            com.uservoice.uservoicesdk.h.b bVar = com.uservoice.uservoicesdk.h.b.f4692a;
            c = bVar;
            bVar.a("aid", e.a().f4631b.m);
            c.a("an", e.a().f4631b.n);
        }
        return c;
    }

    public static void a() {
        d = true;
    }

    public static void b() {
        if (!TextUtils.equals(f4685b, f4684a)) {
            c = null;
            com.uservoice.uservoicesdk.h.b.f4692a = null;
            f4685b = f4684a;
        }
    }

    public static boolean c() {
        return d;
    }
}
