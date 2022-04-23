package com.applovin.impl.mediation.p484a.p486c.p487a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.graphics.Color;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.mediation.p484a.p485a.AbstractC6975c;
import com.applovin.impl.mediation.p484a.p485a.C6977d;
import com.applovin.impl.mediation.p484a.p486c.p488b.ActivityC6984a;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p135b.p136a.p138b.C2068b;
import p131c.p135b.p136a.p143d.a$d.p144a.C2128a;
import p131c.p135b.p136a.p148e.C2240b;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.C2387f;
import p131c.p135b.p156c.C2449a;
import p131c.p135b.p156c.C2450b;
import p131c.p135b.p156c.C2451c;
import p131c.p135b.p156c.C2452d;
/* renamed from: com.applovin.impl.mediation.a.c.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/a/a.class */
public class ActivityC6979a extends Activity {

    /* renamed from: a */
    public C2128a f21451a;

    /* renamed from: b */
    public DataSetObserver f21452b;

    /* renamed from: c */
    public FrameLayout f21453c;

    /* renamed from: d */
    public ListView f21454d;

    /* renamed from: e */
    public C2068b f21455e;

    /* renamed from: com.applovin.impl.mediation.a.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/a/a$a.class */
    public class C6980a extends DataSetObserver {
        public C6980a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ActivityC6979a.this.m19150c();
        }
    }

    /* renamed from: com.applovin.impl.mediation.a.c.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/a/a$b.class */
    public class C6981b implements C2128a.AbstractC2130b {

        /* renamed from: a */
        public final /* synthetic */ C2240b f21457a;

        /* renamed from: com.applovin.impl.mediation.a.c.a.a$b$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/a/a$b$a.class */
        public class C6982a extends AbstractC2381a {

            /* renamed from: a */
            public final /* synthetic */ C6977d f21459a;

            public C6982a(C6977d dVar) {
                this.f21459a = dVar;
            }

            @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof ActivityC6984a) {
                    C6981b.this.f21457a.m30673b(this);
                }
            }

            @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity instanceof ActivityC6984a) {
                    ((ActivityC6984a) activity).setNetwork(this.f21459a);
                }
            }
        }

        public C6981b(C2240b bVar) {
            this.f21457a = bVar;
        }

        @Override // p131c.p135b.p136a.p143d.a$d.p144a.C2128a.AbstractC2130b
        /* renamed from: a */
        public void mo19149a(C6977d dVar) {
            this.f21457a.m30675a(new C6982a(dVar));
            ActivityC6979a.this.m19154a();
        }
    }

    /* renamed from: com.applovin.impl.mediation.a.c.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/a/c/a/a$c.class */
    public class C6983c extends AbstractC6975c {

        /* renamed from: d */
        public final C6977d f21461d;

        /* renamed from: e */
        public final Context f21462e;

        public C6983c(C6977d dVar, Context context) {
            super(dVar.m19175a() == C6977d.EnumC6978a.MISSING ? AbstractC6975c.EnumC6976a.SIMPLE : AbstractC6975c.EnumC6976a.DETAIL);
            this.f21461d = dVar;
            this.f21462e = context;
        }

        /* renamed from: a */
        public final SpannedString m19148a(String str, int i) {
            return m19147a(str, i, 16);
        }

        /* renamed from: a */
        public final SpannedString m19147a(String str, int i, int i2) {
            SpannableString spannableString = new SpannableString(str);
            spannableString.setSpan(new ForegroundColorSpan(i), 0, spannableString.length(), 33);
            spannableString.setSpan(new AbsoluteSizeSpan(i2, true), 0, spannableString.length(), 33);
            return new SpannedString(spannableString);
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: a */
        public boolean mo19137a() {
            return this.f21461d.m19175a() != C6977d.EnumC6978a.MISSING;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: b */
        public SpannedString mo19146b() {
            SpannedString spannedString = this.f21420b;
            if (spannedString != null) {
                return spannedString;
            }
            SpannedString a = m19147a(this.f21461d.m19166g(), this.f21461d.m19175a() == C6977d.EnumC6978a.MISSING ? -7829368 : DrawableConstants.CtaButton.BACKGROUND_COLOR, 18);
            this.f21420b = a;
            return a;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: c */
        public SpannedString mo19145c() {
            SpannedString spannedString = this.f21421c;
            if (spannedString != null) {
                return spannedString;
            }
            if (this.f21461d.m19175a() != C6977d.EnumC6978a.MISSING) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                spannableStringBuilder.append((CharSequence) m19142l());
                spannableStringBuilder.append((CharSequence) m19148a(", ", -7829368));
                spannableStringBuilder.append((CharSequence) m19141m());
                if (this.f21461d.m19167f()) {
                    spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
                    spannableStringBuilder.append((CharSequence) m19139o());
                }
                if (this.f21461d.m19175a() == C6977d.EnumC6978a.INVALID_INTEGRATION) {
                    spannableStringBuilder.append((CharSequence) new SpannableString("\n"));
                    spannableStringBuilder.append((CharSequence) m19140n());
                }
                this.f21421c = new SpannedString(spannableStringBuilder);
            } else {
                this.f21421c = new SpannedString("");
            }
            return this.f21421c;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: f */
        public int mo19144f() {
            int o = this.f21461d.m19162o();
            if (o <= 0) {
                o = C2450b.applovin_ic_mediation_placeholder_network;
            }
            return o;
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: h */
        public int mo19136h() {
            return mo19137a() ? C2450b.applovin_ic_disclosure_arrow : super.mo19144f();
        }

        @Override // com.applovin.impl.mediation.p484a.p485a.AbstractC6975c
        /* renamed from: i */
        public int mo19135i() {
            return C2387f.m29977a(C2449a.applovin_sdk_disclosureButtonColor, this.f21462e);
        }

        /* renamed from: k */
        public C6977d m19143k() {
            return this.f21461d;
        }

        /* renamed from: l */
        public final SpannedString m19142l() {
            int i;
            String str;
            if (this.f21461d.m19169d()) {
                if (!TextUtils.isEmpty(this.f21461d.m19165h())) {
                    str = "SDK " + this.f21461d.m19165h();
                } else {
                    str = this.f21461d.m19168e() ? "Retrieving SDK Version..." : "SDK Found";
                }
                i = -7829368;
            } else {
                i = -65536;
                str = "SDK Missing";
            }
            return m19148a(str, i);
        }

        /* renamed from: m */
        public final SpannedString m19141m() {
            int i;
            String str;
            if (this.f21461d.m19168e()) {
                if (!TextUtils.isEmpty(this.f21461d.m19164i())) {
                    str = "Adapter " + this.f21461d.m19164i();
                } else {
                    str = "Adapter Found";
                }
                i = -7829368;
            } else {
                i = -65536;
                str = "Adapter Missing";
            }
            return m19148a(str, i);
        }

        /* renamed from: n */
        public final SpannedString m19140n() {
            return m19148a("Invalid Integration", -65536);
        }

        /* renamed from: o */
        public final SpannedString m19139o() {
            return m19148a("Latest Version: Adapter " + this.f21461d.m19163l(), Color.rgb(255, 127, 0));
        }

        public String toString() {
            return "MediatedNetworkListItemViewModel{text=" + ((Object) this.f21420b) + ", detailText=" + ((Object) this.f21421c) + ", network=" + this.f21461d + "}";
        }
    }

    /* renamed from: a */
    public final void m19154a() {
        startActivity(new Intent(this, MaxDebuggerDetailActivity.class));
    }

    /* renamed from: b */
    public final void m19152b() {
        m19150c();
        C2068b bVar = new C2068b(this, 50, 16842874);
        this.f21455e = bVar;
        bVar.setColor(-3355444);
        this.f21453c.addView(this.f21455e, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f21453c.bringChildToFront(this.f21455e);
        this.f21455e.m31133a();
    }

    /* renamed from: c */
    public final void m19150c() {
        C2068b bVar = this.f21455e;
        if (bVar != null) {
            bVar.m31132b();
            this.f21453c.removeView(this.f21455e);
            this.f21455e = null;
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(C2452d.mediation_debugger_activity);
        this.f21453c = (FrameLayout) findViewById(16908290);
        this.f21454d = (ListView) findViewById(C2451c.listView);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f21451a.unregisterDataSetObserver(this.f21452b);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f21454d.setAdapter((ListAdapter) this.f21451a);
        if (!this.f21451a.m31015a()) {
            m19152b();
        }
    }

    public void setListAdapter(C2128a aVar, C2240b bVar) {
        DataSetObserver dataSetObserver;
        C2128a aVar2 = this.f21451a;
        if (!(aVar2 == null || (dataSetObserver = this.f21452b) == null)) {
            aVar2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f21451a = aVar;
        C6980a aVar3 = new C6980a();
        this.f21452b = aVar3;
        this.f21451a.registerDataSetObserver(aVar3);
        this.f21451a.m31014a(new C6981b(bVar));
    }
}
