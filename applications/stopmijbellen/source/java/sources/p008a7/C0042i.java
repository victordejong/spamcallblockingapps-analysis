package p008a7;

import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.p012v4.media.AbstractC0081a;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p032c7.C0848a;
import p032c7.C0849b;
import p032c7.C0852e;
import p082e7.C2604a;
import p094f7.C2766a;
import p105g7.AbstractC2907a;
import p105g7.C2908b;
import p105g7.C2909c;
import p116h7.C3015a;
import p116h7.RunnableC3020b;
import p291y.C4951d;
import p307z6.C5110b;
/* renamed from: a7.i */
/* loaded from: classes-dex2jar.jar:a7/i.class */
public class C0042i extends AbstractC0081a {

    /* renamed from: k */
    public static final Pattern f87k = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a */
    public final C0035b f88a;

    /* renamed from: b */
    public final C0034a f89b;

    /* renamed from: e */
    public AbstractC2907a f92e;

    /* renamed from: i */
    public boolean f96i;

    /* renamed from: j */
    public boolean f97j;

    /* renamed from: c */
    public final List<C0849b> f90c = new ArrayList();

    /* renamed from: f */
    public boolean f93f = false;

    /* renamed from: g */
    public boolean f94g = false;

    /* renamed from: h */
    public String f95h = UUID.randomUUID().toString();

    /* renamed from: d */
    public C2766a f91d = new C2766a(null);

    public C0042i(C0034a c0034a, C0035b c0035b) {
        this.f89b = c0034a;
        this.f88a = c0035b;
        EnumC0036c enumC0036c = c0035b.f61h;
        C2909c c2908b = (enumC0036c == EnumC0036c.HTML || enumC0036c == EnumC0036c.JAVASCRIPT) ? new C2908b(c0035b.f55b) : new C2909c(Collections.unmodifiableMap(c0035b.f57d), c0035b.f58e);
        this.f92e = c2908b;
        c2908b.mo2858a();
        C0848a.f3130c.f3131a.add(this);
        AbstractC2907a abstractC2907a = this.f92e;
        C4951d c4951d = C4951d.f15103a;
        WebView m2859f = abstractC2907a.m2859f();
        JSONObject jSONObject = new JSONObject();
        EnumC0040g enumC0040g = c0034a.f49a;
        WindowManager windowManager = C2604a.f9034a;
        try {
            jSONObject.put("impressionOwner", enumC0040g);
        } catch (JSONException e) {
        }
        try {
            jSONObject.put("mediaEventsOwner", c0034a.f50b);
        } catch (JSONException e2) {
        }
        try {
            jSONObject.put("creativeType", c0034a.f52d);
        } catch (JSONException e3) {
        }
        try {
            jSONObject.put("impressionType", c0034a.f53e);
        } catch (JSONException e4) {
        }
        try {
            jSONObject.put("isolateVerificationScripts", Boolean.valueOf(c0034a.f51c));
        } catch (JSONException e5) {
        }
        c4951d.m201b(m2859f, "init", jSONObject);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: J */
    public void mo8769J(View view) {
        if (!this.f94g && m8875N() != view) {
            this.f91d = new C2766a(view);
            AbstractC2907a abstractC2907a = this.f92e;
            Objects.requireNonNull(abstractC2907a);
            abstractC2907a.f9806e = System.nanoTime();
            abstractC2907a.f9805d = 1;
            Collection<C0042i> m7280a = C0848a.f3130c.m7280a();
            if (m7280a == null || m7280a.size() <= 0) {
                return;
            }
            for (C0042i c0042i : m7280a) {
                if (c0042i != this && c0042i.m8875N() == view) {
                    c0042i.f91d.clear();
                }
            }
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: K */
    public void mo8768K(View view) {
        C0849b m8876M;
        if (!this.f94g && (m8876M = m8876M(view)) != null) {
            this.f90c.remove(m8876M);
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: L */
    public void mo8767L() {
        if (this.f93f) {
            return;
        }
        this.f93f = true;
        C0848a c0848a = C0848a.f3130c;
        boolean m7278c = c0848a.m7278c();
        c0848a.f3132b.add(this);
        if (!m7278c) {
            C0852e m7277a = C0852e.m7277a();
            Objects.requireNonNull(m7277a);
            for (C0042i c0042i : C0848a.f3130c.m7280a()) {
                AbstractC2907a abstractC2907a = c0042i.f92e;
                if (abstractC2907a.f9802a.get() != null) {
                    C4951d.f15103a.m201b(abstractC2907a.m2859f(), "setState", "foregrounded");
                }
            }
            Objects.requireNonNull(C3015a.f10118g);
            if (C3015a.f10120i == null) {
                Handler handler = new Handler(Looper.getMainLooper());
                C3015a.f10120i = handler;
                handler.post(C3015a.f10121j);
                C3015a.f10120i.postDelayed(C3015a.f10122k, 200L);
            }
            C5110b c5110b = m7277a.f3145d;
            c5110b.f15483e = c5110b.m17a();
            c5110b.m16b();
            c5110b.f15479a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, c5110b);
        }
        this.f92e.m2861b(C0852e.m7277a().f3142a);
        this.f92e.mo2857c(this, this.f88a);
    }

    /* renamed from: M */
    public final C0849b m8876M(View view) {
        for (C0849b c0849b : this.f90c) {
            if (c0849b.f3133a.get() == view) {
                return c0849b;
            }
        }
        return null;
    }

    /* renamed from: N */
    public View m8875N() {
        return this.f91d.get();
    }

    /* renamed from: O */
    public boolean m8874O() {
        return this.f93f && !this.f94g;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: f */
    public void mo8766f(View view, EnumC0038e enumC0038e, String str) {
        if (!this.f94g && m8876M(view) == null) {
            this.f90c.add(new C0849b(view, enumC0038e, null));
        }
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: q */
    public void mo8762q() {
        if (this.f94g) {
            return;
        }
        this.f91d.clear();
        if (!this.f94g) {
            this.f90c.clear();
        }
        this.f94g = true;
        C4951d.f15103a.m201b(this.f92e.m2859f(), "finishSession", new Object[0]);
        C0848a c0848a = C0848a.f3130c;
        boolean m7278c = c0848a.m7278c();
        c0848a.f3131a.remove(this);
        c0848a.f3132b.remove(this);
        if (m7278c && !c0848a.m7278c()) {
            C0852e m7277a = C0852e.m7277a();
            Objects.requireNonNull(m7277a);
            C3015a c3015a = C3015a.f10118g;
            Objects.requireNonNull(c3015a);
            Handler handler = C3015a.f10120i;
            if (handler != null) {
                handler.removeCallbacks(C3015a.f10122k);
                C3015a.f10120i = null;
            }
            c3015a.f10123a.clear();
            C3015a.f10119h.post(new RunnableC3020b(c3015a));
            C5110b c5110b = m7277a.f3145d;
            c5110b.f15479a.getContentResolver().unregisterContentObserver(c5110b);
        }
        this.f92e.mo2856e();
        this.f92e = null;
    }
}
