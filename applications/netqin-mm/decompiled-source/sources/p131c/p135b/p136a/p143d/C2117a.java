package p131c.p135b.p136a.p143d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannedString;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import com.applovin.impl.mediation.p484a.p485a.C6977d;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.MaxDebuggerActivity;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.a$c.C2126a;
import p131c.p135b.p136a.p143d.a$d.p144a.C2128a;
import p131c.p135b.p136a.p148e.C2240b;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p152q.C2356a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2383c;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* renamed from: c.b.a.d.a */
/* loaded from: classes-dex2jar.jar:c/b/a/d/a.class */
public class C2117a extends AbstractC2381a {

    /* renamed from: a */
    public final C2240b f8132a;

    /* renamed from: b */
    public final C2374t f8133b;

    /* renamed from: c */
    public AbstractC2118a f8134c;

    /* renamed from: d */
    public C2135c.C2139d f8135d;

    /* renamed from: e */
    public int f8136e;

    /* renamed from: f */
    public boolean f8137f;

    /* renamed from: c.b.a.d.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$a.class */
    public interface AbstractC2118a {
        /* renamed from: a */
        void mo30975a(C2135c.C2139d dVar);
    }

    /* renamed from: c.b.a.d.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b.class */
    public class C2119b implements C2356a.AbstractC2359c<JSONObject> {

        /* renamed from: f */
        public static WeakReference<MaxDebuggerActivity> f8138f;

        /* renamed from: g */
        public static final AtomicBoolean f8139g = new AtomicBoolean();

        /* renamed from: a */
        public final C2341l f8140a;

        /* renamed from: b */
        public final C2374t f8141b;

        /* renamed from: c */
        public final C2128a f8142c;

        /* renamed from: d */
        public final AtomicBoolean f8143d = new AtomicBoolean();

        /* renamed from: e */
        public boolean f8144e;

        /* renamed from: c.b.a.d.a$b$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$a.class */
        public class C2120a extends AbstractC2381a {
            public C2120a() {
            }

            @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    C2374t.m30037g(AppLovinSdk.TAG, "Mediation debugger destroyed");
                    C2119b.this.f8140a.m30234y().m30673b(this);
                    WeakReference unused = C2119b.f8138f = null;
                }
            }

            @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity instanceof MaxDebuggerActivity) {
                    C2374t.m30037g(AppLovinSdk.TAG, "Started mediation debugger");
                    if (!C2119b.this.m30989d() || C2119b.f8138f.get() != activity) {
                        MaxDebuggerActivity maxDebuggerActivity = (MaxDebuggerActivity) activity;
                        WeakReference unused = C2119b.f8138f = new WeakReference(maxDebuggerActivity);
                        maxDebuggerActivity.setListAdapter(C2119b.this.f8142c, C2119b.this.f8140a.m30234y());
                    }
                    C2119b.f8139g.set(false);
                }
            }
        }

        /* renamed from: c.b.a.d.a$b$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$b.class */
        public class C2121b {

            /* renamed from: a */
            public final String f8146a;

            /* renamed from: b */
            public final String f8147b;

            /* renamed from: c */
            public final boolean f8148c;

            public C2121b(JSONObject jSONObject, C2341l lVar) {
                boolean z;
                this.f8146a = C2390i.m29913b(jSONObject, "name", "", lVar);
                this.f8147b = C2390i.m29913b(jSONObject, "description", "", lVar);
                List a = C2390i.m29925a(jSONObject, "existence_classes", (List) null, lVar);
                if (a != null) {
                    z = false;
                    Iterator it = a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (AbstractC2426r.m29773e((String) it.next())) {
                                z = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    z = AbstractC2426r.m29773e(C2390i.m29913b(jSONObject, "existence_class", "", lVar));
                }
                this.f8148c = z;
            }

            /* renamed from: a */
            public String m30986a() {
                return this.f8146a;
            }

            /* renamed from: b */
            public String m30985b() {
                return this.f8147b;
            }

            /* renamed from: c */
            public boolean m30984c() {
                return this.f8148c;
            }
        }

        /* renamed from: c.b.a.d.a$b$c */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$c.class */
        public class C2122c {

            /* renamed from: a */
            public TextView f8149a;

            /* renamed from: b */
            public TextView f8150b;

            /* renamed from: c */
            public ImageView f8151c;

            /* renamed from: d */
            public ImageView f8152d;

            /* renamed from: e */
            public AbstractC6975c f8153e;

            /* renamed from: a */
            public AbstractC6975c m30983a() {
                return this.f8153e;
            }

            /* renamed from: a */
            public void m30982a(AbstractC6975c cVar) {
                this.f8153e = cVar;
                this.f8149a.setText(cVar.mo19146b());
                if (this.f8150b != null) {
                    if (!TextUtils.isEmpty(cVar.mo19145c())) {
                        this.f8150b.setVisibility(0);
                        this.f8150b.setText(cVar.mo19145c());
                    } else {
                        this.f8150b.setVisibility(8);
                    }
                }
                if (this.f8151c != null) {
                    if (cVar.mo19144f() > 0) {
                        this.f8151c.setImageResource(cVar.mo19144f());
                        this.f8151c.setColorFilter(cVar.m19179g());
                        this.f8151c.setVisibility(0);
                    } else {
                        this.f8151c.setVisibility(8);
                    }
                }
                if (this.f8152d == null) {
                    return;
                }
                if (cVar.mo19136h() > 0) {
                    this.f8152d.setImageResource(cVar.mo19136h());
                    this.f8152d.setColorFilter(cVar.mo19135i());
                    this.f8152d.setVisibility(0);
                    return;
                }
                this.f8152d.setVisibility(8);
            }
        }

        /* renamed from: c.b.a.d.a$b$d */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$d.class */
        public class C2123d {

            /* renamed from: a */
            public final boolean f8154a;

            /* renamed from: b */
            public final boolean f8155b;

            /* renamed from: c */
            public final boolean f8156c;

            /* renamed from: d */
            public final String f8157d;

            public C2123d(JSONObject jSONObject, C2341l lVar) {
                this.f8154a = C2383c.m29991a(lVar.m30264d()).m29992a();
                JSONObject b = C2390i.m29911b(jSONObject, "cleartext_traffic", (JSONObject) null, lVar);
                if (b != null) {
                    this.f8155b = true;
                    this.f8157d = C2390i.m29913b(b, "description", "", lVar);
                    if (C2389h.m29967a()) {
                        this.f8156c = true;
                        return;
                    }
                    List a = C2390i.m29925a(b, "domains", (List) new ArrayList(), lVar);
                    boolean z = false;
                    if (a.size() > 0) {
                        Iterator it = a.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (!C2389h.m29961a((String) it.next())) {
                                    z = false;
                                    break;
                                }
                            } else {
                                z = true;
                                break;
                            }
                        }
                    }
                    this.f8156c = z;
                    return;
                }
                this.f8155b = false;
                this.f8157d = "";
                this.f8156c = C2389h.m29967a();
            }

            /* renamed from: a */
            public boolean m30981a() {
                return this.f8155b;
            }

            /* renamed from: b */
            public boolean m30980b() {
                return this.f8156c;
            }

            /* renamed from: c */
            public String m30979c() {
                return this.f8154a ? this.f8157d : "You must include an entry in your AndroidManifest.xml to point to your network_security_config.xml.\n\nFor more information, visit: https://developer.android.com/training/articles/security-config";
            }
        }

        /* renamed from: c.b.a.d.a$b$e */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$e.class */
        public class C2124e {

            /* renamed from: a */
            public final String f8158a;

            /* renamed from: b */
            public final String f8159b;

            /* renamed from: c */
            public final boolean f8160c;

            public C2124e(String str, String str2, Context context) {
                this.f8158a = str.replace("android.permission.", "");
                this.f8159b = str2;
                this.f8160c = C2388g.m29974a(str, context);
            }

            /* renamed from: a */
            public String m30978a() {
                return this.f8158a;
            }

            /* renamed from: b */
            public String m30977b() {
                return this.f8159b;
            }

            /* renamed from: c */
            public boolean m30976c() {
                return this.f8160c;
            }
        }

        /* renamed from: c.b.a.d.a$b$f */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/a$b$f.class */
        public class C2125f extends AbstractC6975c {
            public C2125f(String str) {
                super(AbstractC6975c.EnumC6976a.SECTION);
                this.f21420b = new SpannedString(str);
            }

            public String toString() {
                return "SectionListItemViewModel{text=" + ((Object) this.f21420b) + "}";
            }
        }

        public C2119b(C2341l lVar) {
            this.f8140a = lVar;
            this.f8141b = lVar.m30262d0();
            this.f8142c = new C2128a(lVar.m30264d());
        }

        /* renamed from: a */
        public final List<C6977d> m30995a(JSONObject jSONObject, C2341l lVar) {
            JSONArray b = C2390i.m29912b(jSONObject, "networks", new JSONArray(), lVar);
            ArrayList arrayList = new ArrayList(b.length());
            for (int i = 0; i < b.length(); i++) {
                JSONObject a = C2390i.m29934a(b, i, (JSONObject) null, lVar);
                if (a != null) {
                    arrayList.add(new C6977d(a, lVar));
                }
            }
            Collections.sort(arrayList);
            return arrayList;
        }

        @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
        /* renamed from: a */
        public void mo18839a(int i) {
            C2374t tVar = this.f8141b;
            tVar.m30039e("MediationDebuggerService", "Unable to fetch mediation debugger info: server returned " + i);
            C2374t.m30034j(AppLovinSdk.TAG, "Unable to show mediation debugger.");
            this.f8142c.m31013a(null, this.f8140a);
            this.f8143d.set(false);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo18838a(JSONObject jSONObject, int i) {
            List<C6977d> a = m30995a(jSONObject, this.f8140a);
            this.f8142c.m31013a(a, this.f8140a);
            StringBuilder sb = new StringBuilder(" ");
            for (C6977d dVar : a) {
                String sb2 = sb.toString();
                String u = dVar.m19158u();
                if (sb2.length() + u.length() >= ((Integer) this.f8140a.m30291a(C2251d.C2256e.f8757v)).intValue()) {
                    C2374t.m30037g("MediationDebuggerService", sb2);
                    sb.setLength(1);
                }
                sb.append(u);
            }
            sb.append("\n------------------ END ------------------");
            C2374t.m30037g("MediationDebuggerService", sb.toString());
        }

        /* renamed from: a */
        public void m30994a(boolean z) {
            this.f8144e = z;
        }

        /* renamed from: a */
        public boolean m30999a() {
            return this.f8144e;
        }

        /* renamed from: b */
        public void m30993b() {
            m30991c();
            if (m30989d() || !f8139g.compareAndSet(false, true)) {
                C2374t.m30034j(AppLovinSdk.TAG, "Mediation debugger is already showing");
                return;
            }
            this.f8140a.m30234y().m30675a(new C2120a());
            Context d = this.f8140a.m30264d();
            Intent intent = new Intent(d, MaxDebuggerActivity.class);
            intent.setFlags(268435456);
            C2374t.m30037g(AppLovinSdk.TAG, "Starting mediation debugger...");
            d.startActivity(intent);
        }

        /* renamed from: c */
        public final void m30991c() {
            if (this.f8143d.compareAndSet(false, true)) {
                this.f8140a.m30249j().m18826a(new C2126a(this, this.f8140a), C7048s.EnumC7049a.MEDIATION_MAIN);
            }
        }

        /* renamed from: d */
        public final boolean m30989d() {
            WeakReference<MaxDebuggerActivity> weakReference = f8138f;
            return (weakReference == null || weakReference.get() == null) ? false : true;
        }

        public String toString() {
            return "MediationDebuggerService{, listAdapter=" + this.f8142c + "}";
        }
    }

    public C2117a(C2341l lVar) {
        this.f8133b = lVar.m30262d0();
        this.f8132a = lVar.m30234y();
    }

    /* renamed from: a */
    public void m31020a() {
        this.f8133b.m30044b("AdActivityObserver", "Cancelling...");
        this.f8132a.m30673b(this);
        this.f8134c = null;
        this.f8135d = null;
        this.f8136e = 0;
        this.f8137f = false;
    }

    /* renamed from: a */
    public void m31019a(C2135c.C2139d dVar, AbstractC2118a aVar) {
        C2374t tVar = this.f8133b;
        tVar.m30044b("AdActivityObserver", "Starting for ad " + dVar.getAdUnitId() + "...");
        m31020a();
        this.f8134c = aVar;
        this.f8135d = dVar;
        this.f8132a.m30675a(this);
    }

    @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f8137f) {
            this.f8137f = true;
        }
        this.f8136e++;
        this.f8133b.m30044b("AdActivityObserver", "Created Activity: " + activity + ", counter is " + this.f8136e);
    }

    @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f8137f) {
            this.f8136e--;
            this.f8133b.m30044b("AdActivityObserver", "Destroyed Activity: " + activity + ", counter is " + this.f8136e);
            if (this.f8136e <= 0) {
                this.f8133b.m30044b("AdActivityObserver", "Last ad Activity destroyed");
                if (this.f8134c != null) {
                    this.f8133b.m30044b("AdActivityObserver", "Invoking callback...");
                    this.f8134c.mo30975a(this.f8135d);
                }
                m31020a();
            }
        }
    }
}
