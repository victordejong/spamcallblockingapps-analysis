package p000;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: te1 */
/* loaded from: classes3-dex2jar.jar:te1.class */
public abstract class te1<PlayerOrIMAAd> {

    /* renamed from: k */
    public static final ze1[] f8225k = {ze1.AD_EVT_FIRST_QUARTILE, ze1.AD_EVT_MID_POINT, ze1.AD_EVT_THIRD_QUARTILE};

    /* renamed from: e */
    public Map<String, String> f8230e;

    /* renamed from: f */
    public WeakReference<PlayerOrIMAAd> f8231f;

    /* renamed from: g */
    public WeakReference<View> f8232g;

    /* renamed from: h */
    public WeakReference<Context> f8233h;

    /* renamed from: i */
    public ff1 f8234i;

    /* renamed from: j */
    public final mf1 f8235j;

    /* renamed from: c */
    public final Map<ze1, Integer> f8228c = new HashMap();

    /* renamed from: d */
    public final Handler f8229d = new Handler();

    /* renamed from: a */
    public boolean f8226a = false;

    /* renamed from: b */
    public boolean f8227b = false;

    /* renamed from: te1$a */
    /* loaded from: classes3-dex2jar.jar:te1$a.class */
    public class RunnableC1666a implements Runnable {
        public RunnableC1666a() {
            te1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                te1.this.m502p("Shutting down.");
                te1.this.f8234i.m1763e();
                te1.this.f8234i = null;
            } catch (Exception e) {
                uf1.m397a(e);
            }
        }
    }

    public te1(String str, re1 re1Var, mf1 mf1Var) {
        this.f8235j = mf1Var;
        m502p("Initializing.");
        this.f8234i = new ff1(str, mf1Var, re1Var);
        this.f8233h = new WeakReference<>(re1Var.mo573c());
    }

    /* renamed from: b */
    public void m513b(Map<String, Object> map) {
        try {
            m508i(m510g(map));
        } catch (Exception e) {
            uf1.m397a(e);
        }
    }

    /* renamed from: g */
    public final ye1 m510g(Map<String, Object> map) {
        return new ye1(ze1.m29a((String) map.get("type")), map.containsKey("playHead") ? (Integer) map.get("playHead") : ye1.f8730e, map.containsKey("adVolume") ? (Double) map.get("adVolume") : ye1.f8731f);
    }

    /* renamed from: h */
    public void m509h(ye1 ye1Var) {
        try {
            m508i(ye1Var);
        } catch (Exception e) {
            uf1.m397a(e);
        }
    }

    /* renamed from: i */
    public final void m508i(ye1 ye1Var) {
        JSONObject mo335j = mo335j(ye1Var);
        m502p(String.format("Received event: %s", mo335j.toString()));
        this.f8234i.m1762f(mo335j);
        ze1 ze1Var = ye1Var.f8735d;
        if (ze1Var == ze1.AD_EVT_COMPLETE || ze1Var == ze1.AD_EVT_STOPPED || ze1Var == ze1.AD_EVT_SKIPPED) {
            this.f8228c.put(ze1Var, 1);
            m501q();
        }
    }

    /* renamed from: j */
    public JSONObject mo335j(ye1 ye1Var) {
        if (Double.isNaN(ye1Var.f8733b.doubleValue())) {
            try {
                ye1Var.f8733b = Double.valueOf(m505m());
            } catch (Exception e) {
                ye1Var.f8733b = Double.valueOf(1.0d);
            }
        }
        return new JSONObject(ye1Var.m85a());
    }

    /* renamed from: k */
    public abstract Map<String, Object> mo507k();

    /* renamed from: l */
    public final int m506l(AudioManager audioManager) {
        return audioManager.getStreamVolume(3);
    }

    /* renamed from: m */
    public double m505m() {
        AudioManager audioManager = (AudioManager) this.f8233h.get().getSystemService("audio");
        return m506l(audioManager) / audioManager.getStreamMaxVolume(3);
    }

    /* renamed from: n */
    public boolean m504n() {
        return this.f8228c.containsKey(ze1.AD_EVT_COMPLETE) || this.f8228c.containsKey(ze1.AD_EVT_STOPPED) || this.f8228c.containsKey(ze1.AD_EVT_SKIPPED);
    }

    /* renamed from: o */
    public boolean m503o(Integer num, Integer num2) {
        return ((double) (num2.intValue() - num.intValue())) <= Math.min(750.0d, ((double) num2.intValue()) * 0.05d);
    }

    /* renamed from: p */
    public void m502p(String str) {
        if (this.f8235j.mo1179b() || this.f8227b) {
            Log.d("MoatVideoTracker", str);
        }
    }

    /* renamed from: q */
    public void m501q() {
        if (!this.f8226a) {
            this.f8229d.postDelayed(new RunnableC1666a(), 500L);
            this.f8226a = true;
        }
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: r */
    public void mo334r() {
        Map<String, Object> mo507k = mo507k();
        Integer num = (Integer) mo507k.get("width");
        Integer num2 = (Integer) mo507k.get("height");
        Integer num3 = (Integer) mo507k.get(VastIconXmlManager.DURATION);
        m502p(String.format("Player metadata: height = %d, width = %d, duration = %d", num2, num, num3));
        this.f8234i.m1759i(this.f8232g.get(), this.f8230e, num, num2, num3);
    }

    /* renamed from: s */
    public boolean m500s(Map<String, String> map, PlayerOrIMAAd playerorimaad, View view) {
        boolean z;
        String str;
        if (map == null) {
            try {
                m502p("trackVideoAd received null adIds object. Not tracking.");
                z = false;
            } catch (Exception e) {
                uf1.m397a(e);
                z = false;
            }
        } else {
            z = true;
        }
        if (view == null) {
            m502p("trackVideoAd received null video view instance");
        }
        if (playerorimaad == null) {
            m502p("trackVideoAd received null ad instance. Not tracking.");
            z = false;
        }
        if (z) {
            String jSONObject = new JSONObject(map).toString();
            String obj = playerorimaad.toString();
            if (view != null) {
                str = view.getClass().getSimpleName() + "@" + view.hashCode();
            } else {
                str = "null";
            }
            m502p(String.format("trackVideoAd tracking ids: %s | ad: %s | view: %s", jSONObject, obj, str));
            this.f8230e = map;
            this.f8231f = new WeakReference<>(playerorimaad);
            this.f8232g = new WeakReference<>(view);
            mo334r();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Attempt to start tracking ad was ");
        sb.append(z ? "" : "un");
        sb.append("successful.");
        m502p(sb.toString());
        return z;
    }
}
