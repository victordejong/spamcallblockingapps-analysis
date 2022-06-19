package com.applovin.impl.mediation.debugger.p045ui.p049c;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.p049c.C1165b;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1167a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxDebuggerMultiAdActivity;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.c.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/c/a.class */
public class ActivityC1162a extends ActivityC1130a {

    /* renamed from: a */
    private C1165b f4199a;

    /* renamed from: b */
    private ListView f4200b;

    public ActivityC1162a() {
        this.communicatorTopics.add("adapter_initialization_status");
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    public void initialize(final C1123b c1123b) {
        setTitle(c1123b.m6373i());
        C1165b c1165b = new C1165b(c1123b, this);
        this.f4199a = c1165b;
        c1165b.m6226a(new AbstractView$OnClickListenerC1173d.AbstractC1175a() { // from class: com.applovin.impl.mediation.debugger.ui.c.a.1
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d.AbstractC1175a
            /* renamed from: a */
            public void mo6214a(C1167a c1167a, C1169c c1169c) {
                if (c1167a.m6262a() == C1165b.EnumC1166a.TEST_ADS.ordinal()) {
                    C1408l m6360v = c1123b.m6360v();
                    C1123b.EnumC1125b m6379c = c1123b.m6379c();
                    if (C1123b.EnumC1125b.READY == m6379c) {
                        ActivityC1162a.this.startActivity(MaxDebuggerMultiAdActivity.class, m6360v.m5491ad(), new ActivityC1130a.AbstractC1132a<MaxDebuggerMultiAdActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.c.a.1.1
                            /* renamed from: a */
                            public void mo6279a(MaxDebuggerMultiAdActivity maxDebuggerMultiAdActivity) {
                                maxDebuggerMultiAdActivity.initialize(c1123b);
                            }
                        });
                        return;
                    } else if (C1123b.EnumC1125b.DISABLED == m6379c) {
                        m6360v.m5534I().m6185d();
                        Utils.showAlert("Restart Required", c1169c.mo6211m(), ActivityC1162a.this);
                        return;
                    }
                }
                Utils.showAlert("Instructions", c1169c.mo6211m(), ActivityC1162a.this);
            }
        });
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1583R.layout.list_view);
        ListView listView = (ListView) findViewById(C1583R.C1586id.listView);
        this.f4200b = listView;
        listView.setAdapter((ListAdapter) this.f4199a);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (this.f4199a.m6277a().m6369m().equals(appLovinCommunicatorMessage.getMessageData().getString("adapter_class", ""))) {
            this.f4199a.m6270c();
            this.f4199a.m6223i();
        }
    }
}
