package com.applovin.impl.mediation.debugger.p045ui.p047b;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.p047b.C1158b;
import com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1167a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.sdk.AppLovinContentProviderUtils;
import com.applovin.impl.sdk.C1248a;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxDebuggerAdUnitsListActivity;
import com.applovin.mediation.MaxDebuggerDetailActivity;
import com.applovin.mediation.MaxDebuggerTestLiveNetworkActivity;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/b/a.class */
public class ActivityC1149a extends ActivityC1130a {

    /* renamed from: a */
    private C1158b f4147a;

    /* renamed from: b */
    private DataSetObserver f4148b;

    /* renamed from: c */
    private FrameLayout f4149c;

    /* renamed from: d */
    private ListView f4150d;

    /* renamed from: e */
    private C0897a f4151e;

    /* renamed from: a */
    private void m6318a() {
        Uri cacheJPEGImageWithFileName;
        Bitmap m6227a = this.f4147a.m6227a(this.f4150d);
        if (m6227a == null || (cacheJPEGImageWithFileName = AppLovinContentProviderUtils.cacheJPEGImageWithFileName(m6227a, "mediation_debugger_screenshot.jpeg")) == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/jpeg");
        intent.putExtra("android.intent.extra.STREAM", cacheJPEGImageWithFileName);
        intent.addFlags(1);
        startActivity(Intent.createChooser(intent, "Share Mediation Debugger"));
    }

    /* renamed from: a */
    public void m6317a(final Context context) {
        if (!StringUtils.isValidString(this.f4147a.m6288g()) || this.f4147a.m6292c()) {
            return;
        }
        this.f4147a.m6294a(true);
        runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                Utils.showAlert(ActivityC1149a.this.f4147a.m6289f(), ActivityC1149a.this.f4147a.m6288g(), context);
            }
        });
    }

    /* renamed from: b */
    private void m6313b() {
        m6310c();
        C0897a c0897a = new C0897a(this, 50, 16842874);
        this.f4151e = c0897a;
        c0897a.setColor(-3355444);
        this.f4149c.addView(this.f4151e, new FrameLayout.LayoutParams(-1, -1, 17));
        this.f4149c.bringChildToFront(this.f4151e);
        this.f4151e.m7084a();
    }

    /* renamed from: c */
    public void m6310c() {
        C0897a c0897a = this.f4151e;
        if (c0897a != null) {
            c0897a.m7083b();
            this.f4149c.removeView(this.f4151e);
            this.f4151e = null;
        }
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("MAX Mediation Debugger");
        setContentView(C1583R.layout.list_view);
        this.f4149c = (FrameLayout) findViewById(16908290);
        this.f4150d = (ListView) findViewById(C1583R.C1586id.listView);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1583R.C1587menu.mediation_debugger_activity_menu, menu);
        return true;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f4147a.unregisterDataSetObserver(this.f4148b);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (C1583R.C1586id.action_share == menuItem.getItemId()) {
            m6318a();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f4150d.setAdapter((ListAdapter) this.f4147a);
        C1158b c1158b = this.f4147a;
        if (c1158b == null || c1158b.m6300a()) {
            return;
        }
        m6313b();
    }

    public void setListAdapter(C1158b c1158b, final C1248a c1248a) {
        DataSetObserver dataSetObserver;
        C1158b c1158b2 = this.f4147a;
        if (c1158b2 != null && (dataSetObserver = this.f4148b) != null) {
            c1158b2.unregisterDataSetObserver(dataSetObserver);
        }
        this.f4147a = c1158b;
        this.f4148b = new DataSetObserver() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.1
            @Override // android.database.DataSetObserver
            public void onChanged() {
                ActivityC1149a.this.m6310c();
                ActivityC1149a activityC1149a = ActivityC1149a.this;
                activityC1149a.m6317a((Context) activityC1149a);
            }
        };
        m6317a((Context) this);
        this.f4147a.registerDataSetObserver(this.f4148b);
        this.f4147a.m6226a(new AbstractView$OnClickListenerC1173d.AbstractC1175a() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d.AbstractC1175a
            /* renamed from: a */
            public void mo6214a(C1167a c1167a, final C1169c c1169c) {
                ActivityC1149a activityC1149a;
                String str;
                String str2;
                int m6262a = c1167a.m6262a();
                if (m6262a == C1158b.EnumC1161b.MAX.ordinal()) {
                    Utils.showAlert(c1169c.m6246l(), c1169c.mo6211m(), ActivityC1149a.this);
                } else if (m6262a != C1158b.EnumC1161b.ADS.ordinal()) {
                    if ((m6262a != C1158b.EnumC1161b.INCOMPLETE_NETWORKS.ordinal() && m6262a != C1158b.EnumC1161b.COMPLETED_NETWORKS.ordinal()) || !(c1169c instanceof C1156a)) {
                        return;
                    }
                    ActivityC1149a.this.startActivity(MaxDebuggerDetailActivity.class, c1248a, new ActivityC1130a.AbstractC1132a<MaxDebuggerDetailActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.3
                        /* renamed from: a */
                        public void mo6279a(MaxDebuggerDetailActivity maxDebuggerDetailActivity) {
                            maxDebuggerDetailActivity.initialize(((C1156a) c1169c).m6305d());
                        }
                    });
                } else {
                    if (c1167a.m6261b() == C1158b.EnumC1160a.AD_UNITS.ordinal()) {
                        if (ActivityC1149a.this.f4147a.m6290e().size() > 0) {
                            ActivityC1149a.this.startActivity(MaxDebuggerAdUnitsListActivity.class, c1248a, new ActivityC1130a.AbstractC1132a<MaxDebuggerAdUnitsListActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.1
                                /* renamed from: a */
                                public void mo6279a(MaxDebuggerAdUnitsListActivity maxDebuggerAdUnitsListActivity) {
                                    maxDebuggerAdUnitsListActivity.initialize(ActivityC1149a.this.f4147a.m6290e(), ActivityC1149a.this.f4147a.m6291d());
                                }
                            });
                            return;
                        }
                        activityC1149a = ActivityC1149a.this;
                        str = "No live ad units";
                        str2 = "Please setup or enable your MAX ad units on https://applovin.com.";
                    } else if (c1167a.m6261b() != C1158b.EnumC1160a.SELECT_LIVE_NETWORKS.ordinal()) {
                        return;
                    } else {
                        if (ActivityC1149a.this.f4147a.m6287h().size() > 0) {
                            if (ActivityC1149a.this.f4147a.m6291d().m5534I().m6192a()) {
                                Utils.showAlert("Restart Required", c1169c.mo6211m(), ActivityC1149a.this);
                                return;
                            } else {
                                ActivityC1149a.this.startActivity(MaxDebuggerTestLiveNetworkActivity.class, c1248a, new ActivityC1130a.AbstractC1132a<MaxDebuggerTestLiveNetworkActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.b.a.2.2
                                    /* renamed from: a */
                                    public void mo6279a(MaxDebuggerTestLiveNetworkActivity maxDebuggerTestLiveNetworkActivity) {
                                        maxDebuggerTestLiveNetworkActivity.initialize(ActivityC1149a.this.f4147a.m6287h(), ActivityC1149a.this.f4147a.m6291d());
                                    }
                                });
                                return;
                            }
                        }
                        activityC1149a = ActivityC1149a.this;
                        str = "Complete Integrations";
                        str2 = "Please complete integrations in order to access this.";
                    }
                    Utils.showAlert(str, str2, activityC1149a);
                }
            }
        });
    }
}
