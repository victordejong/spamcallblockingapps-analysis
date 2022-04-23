package com.netqin.p525cm.billing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.netqin.p525cm.antiharass.p527ui.activity.MainActivity;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p131c.p132a.p133a.p134a.AbstractC2009m;
import p131c.p132a.p133a.p134a.C1994g;
import p131c.p132a.p133a.p134a.C1999i;
import p131c.p132a.p133a.p134a.C2004k;
import p131c.p431l.p432a.p452c.C6782b;
import p131c.p431l.p432a.p452c.C6793d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p478c.C6871a;
import ripple.RippleView;
/* renamed from: com.netqin.cm.billing.SubscribeActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/billing/SubscribeActivity.class */
public class SubscribeActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: A */
    public TextView f35608A;

    /* renamed from: B */
    public C6782b f35609B;

    /* renamed from: C */
    public List<C2004k> f35610C;

    /* renamed from: q */
    public final String f35611q = SubscribeActivity.class.getSimpleName();

    /* renamed from: r */
    public final String[] f35612r = {"subs_callblocker_one_monthly", "subs_callblocker_one_3months", "subs_callblocker_one_yearly"};

    /* renamed from: s */
    public int f35613s = -1;

    /* renamed from: t */
    public TextView f35614t;

    /* renamed from: u */
    public TextView f35615u;

    /* renamed from: v */
    public TextView f35616v;

    /* renamed from: w */
    public TextView f35617w;

    /* renamed from: x */
    public TextView f35618x;

    /* renamed from: y */
    public TextView f35619y;

    /* renamed from: z */
    public TextView f35620z;

    /* renamed from: com.netqin.cm.billing.SubscribeActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/billing/SubscribeActivity$a.class */
    public class C9144a implements AbstractC2009m {

        /* renamed from: a */
        public final /* synthetic */ List f35621a;

        public C9144a(List list) {
            this.f35621a = list;
        }

        @Override // p131c.p132a.p133a.p134a.AbstractC2009m
        /* renamed from: a */
        public void mo3328a(C1994g gVar, List<C2004k> list) {
            if (gVar.m31291b() != 0 || list == null) {
                String str = SubscribeActivity.this.f35611q;
                C6850i.m19579a(str, "Unsuccessful query for type: subs. Error code: " + gVar.m31291b() + " Debug Message：" + gVar.m31294a());
                return;
            }
            SubscribeActivity.this.f35610C = list;
            for (C2004k kVar : list) {
                String str2 = SubscribeActivity.this.f35611q;
                C6850i.m19579a(str2, "0 Adding sku: " + kVar);
                String b = kVar.m31268b();
                if (TextUtils.equals(kVar.m31267c(), (CharSequence) this.f35621a.get(0))) {
                    SubscribeActivity.this.f35614t.setText(SubscribeActivity.this.getString(2131558687, new Object[]{b}));
                    SubscribeActivity.this.f35617w.setText(b);
                    String str3 = null;
                    Matcher matcher = Pattern.compile("(\\d+[,.\\d]+\\d+)").matcher(b);
                    while (matcher.find()) {
                        str3 = matcher.group();
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        String replace = (!str3.contains(",") || str3.contains(".")) ? (!str3.contains(",") || !str3.contains(".")) ? str3 : str3.replace(",", "") : str3.replace(",", ".");
                        try {
                            SubscribeActivity.this.f35620z.setText(b.replace(str3, String.format("%.2f", Float.valueOf(Float.parseFloat(replace) * 3.0f))));
                            SubscribeActivity.this.f35608A.setText(b.replace(str3, String.format("%.2f", Float.valueOf(Float.parseFloat(replace) * 12.0f))));
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                } else if (TextUtils.equals(kVar.m31267c(), (CharSequence) this.f35621a.get(1))) {
                    SubscribeActivity.this.f35615u.setText(SubscribeActivity.this.getString(2131558689, new Object[]{b}));
                    SubscribeActivity.this.f35618x.setText(b);
                } else if (TextUtils.equals(kVar.m31267c(), (CharSequence) this.f35621a.get(2))) {
                    SubscribeActivity.this.f35616v.setText(SubscribeActivity.this.getString(2131558688, new Object[]{b}));
                    SubscribeActivity.this.f35619y.setText(b);
                }
            }
        }
    }

    /* renamed from: com.netqin.cm.billing.SubscribeActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/billing/SubscribeActivity$b.class */
    public class C9145b implements C6782b.AbstractC6791g {
        public C9145b() {
        }

        public /* synthetic */ C9145b(SubscribeActivity subscribeActivity, C9144a aVar) {
            this();
        }

        @Override // p131c.p431l.p432a.p452c.C6782b.AbstractC6791g
        /* renamed from: a */
        public void mo3327a() {
            SubscribeActivity.this.m3330k();
        }

        @Override // p131c.p431l.p432a.p452c.C6782b.AbstractC6791g
        /* renamed from: a */
        public void mo3326a(List<C1999i> list) {
            if (list == null || list.isEmpty()) {
                C6850i.m19579a(SubscribeActivity.this.f35611q, "onPurchasesUpdated purchases is null");
                return;
            }
            for (C1999i iVar : list) {
                if (iVar.m31277b() == 1) {
                    C6793d.m19786a(true);
                    C6850i.m19579a(SubscribeActivity.this.f35611q, "Purchase successful.");
                    SubscribeActivity subscribeActivity = SubscribeActivity.this;
                    subscribeActivity.m3342a((Context) subscribeActivity);
                    return;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m3342a(Context context) {
        finish();
        Intent intent = new Intent(context, MainActivity.class);
        intent.addFlags(67108864);
        context.startActivity(intent);
    }

    /* renamed from: k */
    public void m3330k() {
        List<String> asList = Arrays.asList("subs_callblocker_one_monthly", "subs_callblocker_one_3months", "subs_callblocker_one_yearly");
        this.f35609B.m19805a("subs", asList, new C9144a(asList));
    }

    /* renamed from: l */
    public final void m3329l() {
        int i = this.f35613s;
        if (i >= 0 && i <= 2) {
            C2004k kVar = null;
            List<C2004k> list = this.f35610C;
            if (list != null && !list.isEmpty()) {
                Iterator<C2004k> it = this.f35610C.iterator();
                while (it.hasNext()) {
                    kVar = it.next();
                    if (kVar.m31267c().equalsIgnoreCase(this.f35612r[this.f35613s])) {
                        break;
                    }
                }
                C6782b bVar = this.f35609B;
                if (bVar != null && kVar != null) {
                    bVar.m19813a(kVar);
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        String str = this.f35611q;
        C6850i.m19579a(str, "onActivityResult(" + i + "," + i2 + "," + intent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131230780:
                finish();
                return;
            case 2131231094:
                this.f35613s = 0;
                m3329l();
                return;
            case 2131231095:
                this.f35613s = 2;
                m3329l();
                return;
            case 2131231230:
                this.f35613s = 1;
                m3329l();
                return;
            default:
                return;
        }
    }

    @Override // com.netqin.p525cm.billing.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131427420);
        ((TextView) findViewById(2131230781)).setText(2131558592);
        ((RippleView) findViewById(2131230780)).setOnClickListener(this);
        this.f35609B = new C6782b(this, new C9145b(this, null));
        C6871a.m19508a("IAP Option Page", "IAP Option Page Show");
        View findViewById = findViewById(2131231094);
        View findViewById2 = findViewById(2131231230);
        View findViewById3 = findViewById(2131231095);
        this.f35614t = (TextView) findViewById(2131231255);
        this.f35615u = (TextView) findViewById(2131231262);
        this.f35616v = (TextView) findViewById(2131231256);
        this.f35617w = (TextView) findViewById(2131231259);
        this.f35618x = (TextView) findViewById(2131231261);
        this.f35619y = (TextView) findViewById(2131231260);
        this.f35620z = (TextView) findViewById(2131231257);
        this.f35608A = (TextView) findViewById(2131231258);
        this.f35620z.getPaint().setFlags(16);
        this.f35608A.getPaint().setFlags(16);
        findViewById.setOnClickListener(this);
        findViewById2.setOnClickListener(this);
        findViewById3.setOnClickListener(this);
    }

    @Override // com.netqin.p525cm.billing.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        C6782b bVar;
        C6850i.m19579a(this.f35611q, "Destroying helper.");
        if (!C6793d.m19782d() && (bVar = this.f35609B) != null) {
            bVar.m19804b();
        }
        super.onDestroy();
    }
}
