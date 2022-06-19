package com.applovin.impl.mediation.debugger.p045ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.C1248a;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a.class */
public class ActivityC1130a extends Activity implements AppLovinCommunicatorSubscriber {
    public List<String> communicatorTopics = new ArrayList();

    /* renamed from: com.applovin.impl.mediation.debugger.ui.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a$a.class */
    public interface AbstractC1132a<T extends Activity> {
        /* renamed from: a */
        void mo6279a(T t);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return getClass().getSimpleName();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (!Utils.isPubInDebugMode(this)) {
            setTheme(C1583R.style.com_applovin_mediation_MaxDebuggerActivity_Theme_Live);
        }
        super.onCreate(bundle);
        List<String> list = this.communicatorTopics;
        if (list == null || list.size() <= 0) {
            return;
        }
        AppLovinCommunicator.getInstance(this).subscribe(this, this.communicatorTopics);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        List<String> list = this.communicatorTopics;
        if (list == null || list.size() <= 0) {
            return;
        }
        AppLovinCommunicator.getInstance(this).unsubscribe(this, this.communicatorTopics);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
    }

    public void startActivity(final Class cls, final C1248a c1248a, final AbstractC1132a abstractC1132a) {
        c1248a.m6067a(new AbstractC1485a() { // from class: com.applovin.impl.mediation.debugger.ui.a.1
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (cls.isInstance(activity)) {
                    abstractC1132a.mo6279a(activity);
                    c1248a.m6065b(this);
                }
            }
        });
        startActivity(new Intent(this, cls));
    }
}
