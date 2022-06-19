package com.applovin.impl.mediation.debugger.p045ui.p051e;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1167a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.e.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/e/a.class */
public class ActivityC1177a extends ActivityC1130a {

    /* renamed from: a */
    private C1408l f4266a;

    /* renamed from: b */
    private List<C1123b> f4267b;

    /* renamed from: c */
    private AbstractView$OnClickListenerC1173d f4268c;

    /* renamed from: d */
    private List<C1169c> f4269d;

    /* renamed from: e */
    private ListView f4270e;

    public ActivityC1177a() {
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    /* renamed from: a */
    private List<C1169c> m6221a(List<C1123b> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (final C1123b c1123b : list) {
            arrayList.add(new C1156a(c1123b, this) { // from class: com.applovin.impl.mediation.debugger.ui.e.a.3
                @Override // com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a, com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
                /* renamed from: f */
                public int mo6213f() {
                    if (ActivityC1177a.this.f4266a.m5534I().m6186c() == null || !ActivityC1177a.this.f4266a.m5534I().m6186c().equals(c1123b.m6374h())) {
                        return 0;
                    }
                    return C1583R.C1585drawable.applovin_ic_check_mark_borderless;
                }

                @Override // com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a, com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
                /* renamed from: g */
                public int mo6212g() {
                    if (ActivityC1177a.this.f4266a.m5534I().m6186c() == null || !ActivityC1177a.this.f4266a.m5534I().m6186c().equals(c1123b.m6374h())) {
                        return super.mo6212g();
                    }
                    return -16776961;
                }

                @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
                /* renamed from: m */
                public String mo6211m() {
                    StringBuilder m8752j = C0082b.m8752j("Please restart the app to show ads from the network: ");
                    m8752j.append(c1123b.m6373i());
                    m8752j.append(".");
                    return m8752j.toString();
                }
            });
        }
        return arrayList;
    }

    public void initialize(List<C1123b> list, final C1408l c1408l) {
        this.f4266a = c1408l;
        this.f4267b = list;
        this.f4269d = m6221a(list);
        AbstractView$OnClickListenerC1173d abstractView$OnClickListenerC1173d = new AbstractView$OnClickListenerC1173d(this) { // from class: com.applovin.impl.mediation.debugger.ui.e.a.1
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: a */
            public int mo6218a(int i) {
                return ActivityC1177a.this.f4269d.size();
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: b */
            public int mo6217b() {
                return 1;
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: b */
            public C1169c mo6216b(int i) {
                return new C1169c.C1171a(C1169c.EnumC1172b.SECTION_CENTERED).m6238a("Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session.").m6242a();
            }

            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
            /* renamed from: c */
            public List<C1169c> mo6215c(int i) {
                return ActivityC1177a.this.f4269d;
            }
        };
        this.f4268c = abstractView$OnClickListenerC1173d;
        abstractView$OnClickListenerC1173d.m6226a(new AbstractView$OnClickListenerC1173d.AbstractC1175a() { // from class: com.applovin.impl.mediation.debugger.ui.e.a.2
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d.AbstractC1175a
            /* renamed from: a */
            public void mo6214a(C1167a c1167a, C1169c c1169c) {
                if (StringUtils.isValidString(c1408l.m5534I().m6186c())) {
                    c1408l.m5534I().m6191a(((C1156a) c1169c).m6305d().m6374h());
                } else {
                    c1408l.m5534I().m6187b(((C1156a) c1169c).m6305d().m6374h());
                    Utils.showAlert("Restart Required", c1169c.mo6211m(), ActivityC1177a.this);
                }
                ActivityC1177a.this.f4268c.notifyDataSetChanged();
            }
        });
        this.f4268c.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("Select Live Network");
        setContentView(C1583R.layout.list_view);
        ListView listView = (ListView) findViewById(C1583R.C1586id.listView);
        this.f4270e = listView;
        listView.setAdapter((ListAdapter) this.f4268c);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        this.f4269d = m6221a(this.f4267b);
        this.f4268c.m6223i();
    }
}
