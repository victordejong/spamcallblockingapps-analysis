package com.uservoice.uservoicesdk.a;

import android.os.AsyncTask;
import android.util.Base64;
import android.util.Log;
import com.b.a.s;
import com.b.a.u;
import com.b.a.v;
import com.b.a.w;
import com.uservoice.uservoicesdk.a.a;
import com.uservoice.uservoicesdk.e;
import com.uservoice.uservoicesdk.g;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/a/b.class */
public final class b extends AsyncTask<String, String, Void> {

    /* renamed from: a  reason: collision with root package name */
    private final String f4569a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f4570b;
    private final Map<String, Object> c;
    private final String d;

    public b(String str, String str2, Map<String, Object> map, Map<String, Object> map2) {
        this.f4569a = str;
        this.d = str2;
        this.f4570b = map;
        this.c = map2;
    }

    private Void a() {
        String str;
        String str2;
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.f4570b != null && !this.f4570b.isEmpty()) {
                jSONObject.put("u", new JSONObject(this.f4570b));
            }
            if (this.c != null && !this.c.isEmpty()) {
                jSONObject.put("e", this.c);
            }
            if (e.a().g != null) {
                str = e.a().g.g;
                str2 = "t";
            } else {
                str = e.a().f4631b.f4563a.split("\\.")[0];
                str2 = "t/k";
            }
            StringBuilder sb = new StringBuilder(String.format("https://%s/%s/%s/%s/%s", a.f4565a, str2, str, this.f4569a.equals(a.EnumC0133a.VIEW_APP) ? a.c : a.f4566b, this.f4569a));
            if (this.d != null) {
                sb.append("/");
                sb.append(this.d);
            }
            sb.append("/track.js?_=");
            sb.append(new Date().getTime());
            sb.append("&c=_");
            if (jSONObject.length() != 0) {
                sb.append("&d=");
                try {
                    sb.append(URLEncoder.encode(Base64.encodeToString(jSONObject.toString().getBytes(), 2), "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
            Log.d("UV", sb.toString());
            w a2 = new s().a(new u.a().a("GET", (v) null).a(sb.toString()).b("User-Agent", String.format("uservoice-android-%s", g.b())).a()).a();
            if (a2.c != 200) {
                return null;
            }
            String d = a2.g.d();
            if (d.length() <= 0) {
                return null;
            }
            a.a(new JSONObject(d.substring(2, d.length() - 2)).getString("uvts"));
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("UV", String.format("%s: %s", e2.getClass().getName(), e2.getMessage()));
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Void doInBackground(String[] strArr) {
        return a();
    }
}
