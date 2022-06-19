package com.truecaller.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import java.util.LinkedHashMap;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p430q.C8613t;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/truecaller/messaging/MessagesActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/MessagesActivity.class */
public final class MessagesActivity extends h {

    /* renamed from: a */
    public static final C4160a f12990a = new C4160a(null);

    /* renamed from: com.truecaller.messaging.MessagesActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/MessagesActivity$a.class */
    public static final class C4160a {
        public C4160a(f fVar) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        MessagesActivity.super.onCreate(bundle);
        Intent intent = getIntent();
        l.d(intent, "intent");
        if (l.a("android.intent.action.CREATE_SHORTCUT", intent.getAction())) {
            C15571h.m18626y("messagesShortcutInstalled", true);
            Intent addFlags = new Intent((Context) this, (Class<?>) MessagesActivity.class).setAction("android.intent.action.MAIN").addCategory("android.intent.category.DEFAULT").addFlags(335544320);
            l.d(addFlags, "Intent(context, Messages….FLAG_ACTIVITY_CLEAR_TOP)");
            setResult(-1, C8613t.m28207e(this, C2752R.string.TabBarMessaging, C2752R.mipmap.ic_launcher_messages, addFlags));
        } else {
            startActivity(TruecallerInit.m34553xa(this, "messages", "homescreenShortcut"));
            if (getIntent().hasExtra("feature")) {
                Context applicationContext = getApplicationContext();
                Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
                AbstractC19462a mo12776C4 = ((AbstractC21187w1) applicationContext).mo10154s().mo12776C4();
                l.e("UseGoogleAssistant", "type");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                C22128a.m8684N0("UseGoogleAssistant", C22128a.m8652Y("action", AnalyticsConstants.NAME, "openMessagesTab", "value", linkedHashMap, "action", "openMessagesTab"), linkedHashMap, "GenericAnalyticsEvent.ne…rties(properties).build()", mo12776C4);
            }
        }
        finish();
    }
}
