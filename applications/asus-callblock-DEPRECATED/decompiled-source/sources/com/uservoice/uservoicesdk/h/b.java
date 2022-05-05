package com.uservoice.uservoicesdk.h;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.android.vcard.VCardConstants;
import com.b.a.n;
import com.b.a.s;
import com.b.a.u;
import com.b.a.v;
import com.uservoice.uservoicesdk.k.a;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/h/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static b f4692a;

    /* renamed from: b  reason: collision with root package name */
    private String f4693b;
    private Context c;
    private ExecutorService d;
    private Map<String, String> e;

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.f4693b = str;
        this.c = context.getApplicationContext();
        this.d = Executors.newFixedThreadPool(10);
        this.e = new HashMap();
    }

    public final void a(String str, String str2) {
        this.e.put(str, str2);
    }

    public final void a(final Map<String, String> map) {
        this.d.execute(new Runnable() { // from class: com.uservoice.uservoicesdk.h.b.1
            @Override // java.lang.Runnable
            public final void run() {
                String str = null;
                final b bVar = b.this;
                Map<String, String> map2 = map;
                try {
                    s sVar = new s();
                    a aVar = new a(new a.b() { // from class: com.uservoice.uservoicesdk.h.b.2
                        @Override // com.uservoice.uservoicesdk.k.a.b
                        public final void a(String str2) {
                            Log.d("GA", str2);
                        }
                    });
                    aVar.f4710a = a.EnumC0147a.d;
                    if (a.c()) {
                        sVar.h.add(aVar);
                    }
                    u.a b2 = new u.a().a("http://www.google-analytics.com/collect").b("User-Agent");
                    String str2 = Build.VERSION.RELEASE;
                    Locale locale = Locale.getDefault();
                    if (locale != null && !TextUtils.isEmpty(locale.getLanguage())) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(locale.getLanguage().toLowerCase());
                        if (!TextUtils.isEmpty(locale.getCountry())) {
                            sb.append("-").append(locale.getCountry().toLowerCase());
                        }
                        str = sb.toString();
                    }
                    sVar.a(b2.b("User-Agent", String.format("%s/%s (Linux; U; Android %s; %s; %s Build/%s)", "GoogleAnalytics", VCardConstants.VERSION_V40, str2, str, Build.MODEL, Build.ID)).a("POST", bVar.b(map2)).a()).a();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    final v b(Map<String, String> map) {
        n a2 = new n().a("tid", this.f4693b).a("v", "1").a("t", "event").a("cid", Settings.Secure.getString(this.c.getContentResolver(), "android_id"));
        for (String str : map.keySet()) {
            a2.a(str, map.get(str));
        }
        return a2.a();
    }
}
