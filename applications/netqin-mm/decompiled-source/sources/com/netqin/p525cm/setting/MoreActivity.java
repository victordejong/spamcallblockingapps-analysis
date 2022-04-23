package com.netqin.p525cm.setting;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.library.p518ad.core.AdInfo;
import com.netqin.p525cm.main.p529ui.BaseActivity;
import com.netqin.p525cm.p526ad.family.NqFamilyRequest;
import com.netqin.p525cm.utils.NQSPFManager;
import p131c.p396i.p397a.C6490b;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p431l.p432a.p433a.p436c.C6705a;
import p131c.p431l.p432a.p442b.p443a.AbstractC6724a;
import p131c.p431l.p432a.p442b.p445c.C6727b;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p458g.C6807a;
import p131c.p431l.p432a.p458g.C6809b;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.C6851j;
import p131c.p431l.p432a.p468n.C6860r;
import p131c.p431l.p478c.C6871a;
/* renamed from: com.netqin.cm.setting.MoreActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity.class */
public class MoreActivity extends BaseActivity {

    /* renamed from: t */
    public Activity f35675t;

    /* renamed from: u */
    public C6727b f35676u;

    /* renamed from: v */
    public LinearLayout f35677v;

    /* renamed from: w */
    public View$OnClickListenerC9165d f35678w;

    /* renamed from: x */
    public C6809b f35679x;

    /* renamed from: y */
    public ImageView f35680y;

    /* renamed from: z */
    public LinearLayout f35681z;

    /* renamed from: com.netqin.cm.setting.MoreActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$a.class */
    public class View$OnClickListenerC9162a implements View.OnClickListener {
        public View$OnClickListenerC9162a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoreActivity.this.finish();
        }
    }

    /* renamed from: com.netqin.cm.setting.MoreActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$b.class */
    public class C9163b extends AbstractC6515g {
        public C9163b() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: a */
        public void mo3232a(AdInfo adInfo, int i) {
            char c;
            String adSource = adInfo.getAdSource();
            int hashCode = adSource.hashCode();
            if (hashCode == 2092) {
                if (adSource.equals("AM")) {
                    c = 1;
                }
                c = 65535;
            } else if (hashCode != 2236) {
                if (hashCode == 2808 && adSource.equals("XP")) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (adSource.equals("FB")) {
                    c = 0;
                }
                c = 65535;
            }
            if (c == 0) {
                C6871a.m19506a(null, "FB Ad Clicks", "CB_MorePage_Native_FB_Click", 0L, null);
            } else if (c == 1) {
                C6871a.m19506a(null, "Admob Ad Clicks", "CB_MorePage_Native_AM_Click", 0L, null);
            } else if (c == 2) {
                C6871a.m19506a(null, "XP Ad Clicks", "CB_MorePage_Native_XP_Click", 0L, null);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: b */
        public void mo3231b(AdInfo adInfo, int i) {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6515g
        /* renamed from: d */
        public void mo3230d(AdInfo adInfo, int i) {
            char c;
            String adSource = adInfo.getAdSource();
            int hashCode = adSource.hashCode();
            if (hashCode == 2092) {
                if (adSource.equals("AM")) {
                    c = 1;
                }
                c = 65535;
            } else if (hashCode != 2236) {
                if (hashCode == 2808 && adSource.equals("XP")) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (adSource.equals("FB")) {
                    c = 0;
                }
                c = 65535;
            }
            if (c == 0) {
                C6871a.m19506a(null, "FB Ad Impressions", "CB_MorePage_Native_FB_Show", 0L, null);
            } else if (c == 1) {
                C6871a.m19506a(null, "Admob Ad Impressions", "CB_MorePage_Native_AM_Show", 0L, null);
            } else if (c == 2) {
                C6871a.m19506a(null, "XP Ad Impressions", "CB_MorePage_Native_XP_Show", 0L, null);
            }
        }
    }

    /* renamed from: com.netqin.cm.setting.MoreActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$c.class */
    public class C9164c implements AbstractC6518i {
        public C9164c() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            MoreActivity.this.f35680y.setVisibility(8);
            MoreActivity.this.f35679x.stop();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            MoreActivity.this.f35680y.setVisibility(8);
            MoreActivity.this.f35679x.stop();
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
            MoreActivity.this.f35680y.setVisibility(0);
            MoreActivity.this.f35679x.start();
        }
    }

    /* renamed from: com.netqin.cm.setting.MoreActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d.class */
    public class View$OnClickListenerC9165d implements View.OnClickListener {

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$a */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$a.class */
        public class C9166a implements AbstractC6724a {
            public C9166a() {
            }

            @Override // p131c.p431l.p432a.p442b.p443a.AbstractC6724a
            /* renamed from: a */
            public void mo3227a() {
                if (MoreActivity.this.f35677v != null) {
                    MoreActivity.this.f35677v.setVisibility(8);
                }
            }

            @Override // p131c.p431l.p432a.p442b.p443a.AbstractC6724a
            /* renamed from: b */
            public void mo3226b() {
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$b */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$b.class */
        public class DialogInterface$OnClickListenerC9167b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9167b(View$OnClickListenerC9165d dVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$c */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$c.class */
        public class DialogInterface$OnClickListenerC9168c implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9168c(View$OnClickListenerC9165d dVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$d */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$d.class */
        public class DialogInterface$OnClickListenerC9169d implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9169d() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C6871a.m19507a("Ad Clicks", "Customized Ad Click", "Vault");
                try {
                    C6843d.m19600a(MoreActivity.this.f35626r, "com.netqin.ps", "https://play.google.com/store/apps/details?id=com.netqin.ps&referrer=utm_source%3DCB%26utm_medium%3DButton", "&referrer=utm_source%3DCB%26utm_medium%3DButton");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$e */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$e.class */
        public class DialogInterface$OnClickListenerC9170e implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9170e(View$OnClickListenerC9165d dVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$f */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$f.class */
        public class DialogInterface$OnClickListenerC9171f implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC9171f() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    C6843d.m19600a(MoreActivity.this.f35626r, "com.cxzh.antivirus", "https://play.google.com/store/apps/details?id=com.cxzh.antivirus&referrer=utm_source%3DCB%26utm_medium%3DButton", "&referrer=utm_source%3DCB%26utm_medium%3DButton");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dialogInterface.dismiss();
            }
        }

        /* renamed from: com.netqin.cm.setting.MoreActivity$d$g */
        /* loaded from: classes2-dex2jar.jar:com/netqin/cm/setting/MoreActivity$d$g.class */
        public class C9172g implements AbstractC6724a {
            public C9172g() {
            }

            @Override // p131c.p431l.p432a.p442b.p443a.AbstractC6724a
            /* renamed from: a */
            public void mo3227a() {
                if (MoreActivity.this.f35677v != null) {
                    MoreActivity.this.f35677v.setVisibility(8);
                }
            }

            @Override // p131c.p431l.p432a.p442b.p443a.AbstractC6724a
            /* renamed from: b */
            public void mo3226b() {
            }
        }

        public View$OnClickListenerC9165d() {
        }

        public /* synthetic */ View$OnClickListenerC9165d(MoreActivity moreActivity, View$OnClickListenerC9162a aVar) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == 2131231029) {
                C6727b.m19968a(MoreActivity.this.f35626r).m19969a(MoreActivity.this.f35675t, false, (AbstractC6724a) new C9172g());
            } else if (id == 2131231123) {
                C6843d.m19600a(MoreActivity.this.f35626r, MoreActivity.this.f35626r.getApplicationContext().getPackageName(), "https://play.google.com/store/apps/details?id=com.netqin.mm&referrer=utm_source%3DCB%26utm_medium%3DSelf", "&referrer=utm_source%3DCB%26utm_medium%3DSelf");
            } else if (id != 2131231168) {
                switch (id) {
                    case 2131231057:
                        if (C6843d.m19594b(MoreActivity.this.f35625q, "com.cxzh.antivirus")) {
                            try {
                                C6843d.m19591c(MoreActivity.this.f35625q, "com.cxzh.antivirus");
                                return;
                            } catch (Exception e) {
                                e.printStackTrace();
                                return;
                            }
                        } else {
                            C6843d.m19605a(MoreActivity.this.f35625q, 2131558518, 2131558639, 2131558496, 2131558642, new DialogInterface$OnClickListenerC9170e(this), new DialogInterface$OnClickListenerC9171f());
                            return;
                        }
                    case 2131231058:
                        MoreActivity.this.m3242o();
                        return;
                    case 2131231059:
                        if (MoreActivity.this.f35676u.m19920t()) {
                            MoreActivity.this.f35676u.m19969a(MoreActivity.this.f35675t, false, (AbstractC6724a) new C9166a());
                            return;
                        } else if (C6843d.m19594b(MoreActivity.this.f35625q, "com.netqin.ps")) {
                            try {
                                if (MoreActivity.this.f35625q.getPackageManager().getLaunchIntentForPackage("com.netqin.ps") != null) {
                                    C6843d.m19591c(MoreActivity.this.f35625q, "com.netqin.ps");
                                } else {
                                    C6843d.m19605a(MoreActivity.this.f35625q, 2131558518, 2131558475, 2131558496, 2131558513, null, new DialogInterface$OnClickListenerC9167b(this));
                                }
                                return;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        } else {
                            C6871a.m19507a("Ad Impressions", "Customized Ad Show", "Vault");
                            C6843d.m19605a(MoreActivity.this.f35625q, 2131558518, 2131558640, 2131558496, 2131558642, new DialogInterface$OnClickListenerC9168c(this), new DialogInterface$OnClickListenerC9169d());
                            return;
                        }
                    case 2131231060:
                        MoreActivity.this.startActivity(new Intent(MoreActivity.this.f35626r, SettingActivity.class));
                        return;
                    default:
                        return;
                }
            } else {
                MoreActivity.this.m3244n();
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    /* renamed from: n */
    public final void m3244n() {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", getString(2131558645));
        String string = getString(2131558610);
        intent.putExtra("android.intent.extra.TEXT", string + " https://play.google.com/store/apps/details?id=com.netqin.mm&referrer=utm_source%3DShare%26utm_medium%3DSelf");
        startActivity(Intent.createChooser(intent, getString(2131558645)));
    }

    /* renamed from: o */
    public final void m3242o() {
        try {
            String string = getString(2131558643, new Object[]{C6843d.m19595b(this.f35626r), Build.VERSION.RELEASE, Build.MODEL, NQSPFManager.m3184a(this.f35626r).f35743b.m19570a((C6851j<NQSPFManager.EnumNetQin>) NQSPFManager.EnumNetQin.uid, "")});
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SENDTO");
            intent.addFlags(268435456);
            intent.setData(Uri.parse("mailto:cs.cxzh.ltd@gmail.com"));
            intent.putExtra("android.intent.extra.SUBJECT", string);
            intent.putExtra("android.intent.extra.TEXT", getResources().getString(2131558570));
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(getApplicationContext(), "Your mobile Email is unavailable. Please install an Email client.", 1).show();
        }
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(2131427427);
        } catch (Exception e) {
            e.printStackTrace();
            C6850i.m19579a("MoreActivity", "onCreate main_setting_mores_without_sdk");
        }
        this.f35675t = this;
        this.f35678w = new View$OnClickListenerC9165d(this, null);
        m3240p();
        m3238q();
        if (!C6793d.m19782d()) {
            m3236r();
        }
        C6727b a = C6727b.m19968a(this.f35626r);
        this.f35676u = a;
        a.m19943d(true);
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f35675t = null;
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        C6850i.m19579a("MoreActivity", "onResume");
        this.f35675t = this;
        if (C6727b.m19968a(this.f35626r) == null || !C6727b.m19968a(this.f35626r).m19920t()) {
            this.f35677v.setVisibility(8);
            return;
        }
        this.f35677v.setVisibility(0);
        C6871a.m19507a("Ad Impressions", "Customized Ad Show", "Vault");
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // com.netqin.p525cm.main.p529ui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    /* renamed from: p */
    public final void m3240p() {
        ((TextView) findViewById(2131230784)).setText(2131558612);
        ((FrameLayout) findViewById(2131231075)).setOnClickListener(new View$OnClickListenerC9162a());
    }

    /* renamed from: q */
    public final void m3238q() {
        this.f35677v = (LinearLayout) findViewById(2131231029);
        TextView textView = (TextView) findViewById(2131231060);
        TextView textView2 = (TextView) findViewById(2131231059);
        TextView textView3 = (TextView) findViewById(2131231058);
        TextView textView4 = (TextView) findViewById(2131231168);
        TextView textView5 = (TextView) findViewById(2131231123);
        TextView textView6 = (TextView) findViewById(2131231057);
        this.f35680y = (ImageView) findViewById(2131231018);
        C6809b bVar = new C6809b(new C6807a(this));
        this.f35679x = bVar;
        this.f35680y.setImageDrawable(bVar);
        ((TextView) findViewById(2131230784)).setText(2131558612);
        textView.setOnClickListener(this.f35678w);
        textView2.setOnClickListener(this.f35678w);
        textView3.setOnClickListener(this.f35678w);
        textView4.setOnClickListener(this.f35678w);
        textView5.setOnClickListener(this.f35678w);
        textView6.setOnClickListener(this.f35678w);
        this.f35677v.setOnClickListener(this.f35678w);
        this.f35681z = (LinearLayout) findViewById(2131230792);
    }

    /* renamed from: r */
    public final void m3236r() {
        if (this.f35681z.getChildCount() <= 0 && !C6860r.m19539a(this.f35681z)) {
            C9163b bVar = new C9163b();
            C9164c cVar = new C9164c();
            C6490b bVar2 = new C6490b("10");
            bVar2.m20709a(bVar);
            bVar2.m20708a(cVar);
            bVar2.m20710a(new NqFamilyRequest("&referrer=utm_source%3DCallBlocker%26utm_medium%3DMore%26utm_content%3DBanner%26utm_campaign%3DCallBlockerself_ad"));
            bVar2.m20707a(new C6705a(NqFamilyRequest.f35225w, "MORE_PAGE_SHOWN_AD_PACKAGE"));
            bVar2.m20713a((ViewGroup) this.f35681z);
        }
    }
}
