package com.truecaller.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.search.global.CompositeAdapterDelegate;
import java.util.LinkedHashMap;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1342w4.p1344s.C21228b0;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/truecaller/messaging/GoogleActionsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "action", "pa", "(Ljava/lang/String;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/GoogleActionsActivity.class */
public final class GoogleActionsActivity extends h {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GoogleActionsActivity.super.onCreate(bundle);
        if (getIntent().hasExtra(SearchIntents.EXTRA_QUERY)) {
            String stringExtra = getIntent().getStringExtra(SearchIntents.EXTRA_QUERY);
            startActivity(TruecallerInit.m34554wa(this, "googleAssistant"));
            int i = C21228b0.f59453g;
            C21228b0.m10114PA(this, stringExtra, null, false, CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT);
            m35132pa("searchNumber");
        } else if (getIntent().hasExtra("telephone")) {
            String stringExtra2 = getIntent().getStringExtra("telephone");
            if (stringExtra2 != null) {
                if (getIntent().hasExtra("callFormat")) {
                    l.d(stringExtra2, "number");
                    Context applicationContext = getApplicationContext();
                    Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
                    InitiateCallHelper mo12389f3 = ((AbstractC21187w1) applicationContext).mo10154s().mo12389f3();
                    l.d(mo12389f3, "(this.applicationContext…raph.initiateCallHelper()");
                    l.e("googleAssistant", "analyticsContext");
                    mo12389f3.m35744b(new InitiateCallHelper.CallOptions(stringExtra2, "googleAssistant", null, null, false, false, null, true, InitiateCallHelper.CallContextOption.ShowOnBoarded.a));
                    m35132pa("callContact");
                } else {
                    l.d(stringExtra2, "number");
                    String stringExtra3 = getIntent().getStringExtra("text");
                    Context applicationContext2 = getApplicationContext();
                    Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.GraphHolder");
                    AbstractC8621z mo12296m = ((AbstractC21187w1) applicationContext2).mo10154s().mo12296m();
                    l.d(mo12296m, "(this.applicationContext…Graph.phoneNumberHelper()");
                    Participant m35455d = Participant.m35455d(stringExtra2, mo12296m, "-1");
                    l.d(m35455d, "Participant.buildFromNum…M_TOKEN_UNKNOWN\n        )");
                    Intent intent = new Intent((Context) this, (Class<?>) ConversationActivity.class);
                    intent.putExtra("participants", new Participant[]{m35455d});
                    intent.putExtra("launch_source", "googleAssistant");
                    if (stringExtra3 != null) {
                        Intent intent2 = new Intent();
                        intent2.putExtra("android.intent.extra.TEXT", stringExtra3);
                        intent.putExtra("send_intent", intent2);
                    }
                    startActivity(intent);
                    m35132pa("sendMessage");
                }
            }
        } else {
            startActivity(TruecallerInit.m34553xa(this, "messages", "homescreenShortcut"));
        }
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m35132pa(String str) {
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC19462a mo12776C4 = ((AbstractC21187w1) applicationContext).mo10154s().mo12776C4();
        l.e("UseGoogleAssistant", "type");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C22128a.m8684N0("UseGoogleAssistant", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", linkedHashMap, "action", str), linkedHashMap, "GenericAnalyticsEvent.ne…rties(properties).build()", mo12776C4);
    }
}
