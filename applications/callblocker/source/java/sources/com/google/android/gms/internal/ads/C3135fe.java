package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.C2301c;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.ads.internal.overlay.C2317d;
import com.google.android.gms.internal.ads.AbstractC2764ads;
import com.google.android.gms.internal.ads.adv;
import com.google.android.gms.internal.ads.adz;
import com.google.android.gms.internal.ads.aea;
import com.google.android.gms.internal.ads.aec;
import java.net.URISyntaxException;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.fe */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fe.class */
public final class C3135fe<T extends AbstractC2764ads & adv & adz & aea & aec> implements AbstractC3131fa<T> {

    /* renamed from: a */
    private final C2301c f16653a;

    /* renamed from: b */
    private final C3355ni f16654b;

    public C3135fe(C2301c c2301c, C3355ni c3355ni) {
        this.f16653a = c2301c;
        this.f16654b = c3355ni;
    }

    /* renamed from: a */
    public static Uri m7842a(Context context, ctl ctlVar, Uri uri, View view, Activity activity) {
        Uri uri2;
        if (ctlVar == null) {
            uri2 = uri;
        } else {
            uri2 = uri;
            try {
                if (ctlVar.m10664b(uri)) {
                    uri2 = ctlVar.m10667a(uri, context, view, activity);
                }
            } catch (zzdw e) {
                uri2 = uri;
            } catch (Exception e2) {
                C2341q.m14740g().m7095a(e2, "OpenGmsgHandler.maybeAddClickSignalsToUri");
                uri2 = uri;
            }
        }
        return uri2;
    }

    /* renamed from: a */
    public static Uri m7841a(Uri uri) {
        Uri uri2 = uri;
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                uri2 = uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            C3556uu.m6748c(valueOf.length() != 0 ? "Error adding click uptime parameter to url: ".concat(valueOf) : new String("Error adding click uptime parameter to url: "), e);
            uri2 = uri;
        }
        return uri2;
    }

    /* renamed from: a */
    private final void m7839a(boolean z) {
        if (this.f16654b != null) {
            this.f16654b.m7420a(z);
        }
    }

    /* renamed from: a */
    private static boolean m7840a(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    /* renamed from: b */
    private static int m7838b(Map<String, String> map) {
        int i;
        String str = map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                C2341q.m14742e();
                i = 7;
            } else if ("l".equalsIgnoreCase(str)) {
                C2341q.m14742e();
                i = 6;
            } else if ("c".equalsIgnoreCase(str)) {
                i = C2341q.m14742e().mo6937a();
            }
            return i;
        }
        i = -1;
        return i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3131fa
    /* renamed from: a */
    public final /* synthetic */ void mo7414a(Object obj, Map map) {
        AbstractC2764ads abstractC2764ads = (AbstractC2764ads) obj;
        String m7131a = C3525tq.m7131a((String) map.get("u"), abstractC2764ads.getContext(), true);
        String str = (String) map.get("a");
        if (str == null) {
            C3556uu.m6745e("Action missing from an open GMSG.");
        } else if (this.f16653a != null && !this.f16653a.m14800b()) {
            this.f16653a.m14801a(m7131a);
        } else if ("expand".equalsIgnoreCase(str)) {
            if (((adv) abstractC2764ads).mo13497A()) {
                C3556uu.m6745e("Cannot expand WebView that is already expanded.");
                return;
            }
            m7839a(false);
            ((adz) abstractC2764ads).mo13451b(m7840a(map), m7838b(map));
        } else if ("webapp".equalsIgnoreCase(str)) {
            m7839a(false);
            if (m7131a != null) {
                ((adz) abstractC2764ads).mo13457a(m7840a(map), m7838b(map), m7131a);
            } else {
                ((adz) abstractC2764ads).mo13456a(m7840a(map), m7838b(map), (String) map.get("html"), (String) map.get("baseurl"));
            }
        } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
            m7839a(true);
            if (TextUtils.isEmpty(m7131a)) {
                C3556uu.m6745e("Destination url cannot be empty.");
                return;
            }
            try {
                ((adz) abstractC2764ads).mo13474a(new C2317d(new C3138fh(abstractC2764ads.getContext(), ((aea) abstractC2764ads).mo13423y(), ((aec) abstractC2764ads).getView()).m7831a(map)));
            } catch (ActivityNotFoundException e) {
                C3556uu.m6745e(e.getMessage());
            }
        } else {
            m7839a(true);
            String str2 = (String) map.get("intent_url");
            Intent intent = null;
            if (!TextUtils.isEmpty(str2)) {
                try {
                    intent = Intent.parseUri(str2, 0);
                } catch (URISyntaxException e2) {
                    String valueOf = String.valueOf(str2);
                    C3556uu.m6748c(valueOf.length() != 0 ? "Error parsing the url: ".concat(valueOf) : new String("Error parsing the url: "), e2);
                    intent = null;
                }
            }
            if (intent != null && intent.getData() != null) {
                Uri data = intent.getData();
                if (!Uri.EMPTY.equals(data)) {
                    intent.setData(m7841a(m7842a(abstractC2764ads.getContext(), ((aea) abstractC2764ads).mo13423y(), data, ((aec) abstractC2764ads).getView(), abstractC2764ads.mo13444f())));
                }
            }
            if (intent != null) {
                ((adz) abstractC2764ads).mo13474a(new C2317d(intent));
                return;
            }
            String str3 = m7131a;
            if (!TextUtils.isEmpty(m7131a)) {
                str3 = m7841a(m7842a(abstractC2764ads.getContext(), ((aea) abstractC2764ads).mo13423y(), Uri.parse(m7131a), ((aec) abstractC2764ads).getView(), abstractC2764ads.mo13444f())).toString();
            }
            ((adz) abstractC2764ads).mo13474a(new C2317d((String) map.get("i"), str3, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
        }
    }
}
