package com.truecaller.messaging.newconversation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.ForwardContentItem;
import java.util.ArrayList;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p224d.C5903b;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\t\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/messaging/newconversation/NewConversationActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onBackPressed", "()V", "<init>", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationActivity.class */
public final class NewConversationActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f13580a = 0;

    /* renamed from: com.truecaller.messaging.newconversation.NewConversationActivity$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/newconversation/NewConversationActivity$a.class */
    public static final class C4229a {
        /* renamed from: a */
        public static final Intent m34950a(Context context, ArrayList<ForwardContentItem> arrayList, boolean z) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(arrayList, "content");
            Intent flags = new Intent(context, NewConversationActivity.class).setAction("android.intent.action.SEND").putParcelableArrayListExtra("forward_content", arrayList).putExtra("is_bubble_intent", z).setFlags(67108864);
            l.d(flags, "Intent(context, NewConve….FLAG_ACTIVITY_CLEAR_TOP)");
            return flags;
        }

        /* renamed from: b */
        public static final Intent m34949b(Context context, boolean z, ArrayList<Participant> arrayList) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(arrayList, "participants");
            Intent putExtra = new Intent(context, NewConversationActivity.class).putExtra("new_group_chat", z).putExtra("pre_fill_participants", arrayList);
            l.d(putExtra, "Intent(context, NewConve…RTICIPANTS, participants)");
            return putExtra;
        }
    }

    public void onBackPressed() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        if (supportFragmentManager.m42940M() > 0) {
            getSupportFragmentManager().m42921c0();
        } else {
            NewConversationActivity.super.onBackPressed();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        NewConversationActivity.super.onCreate(bundle);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            c26907a.m1120m(16908290, new C5903b(), null);
            c26907a.mo1127f();
        }
        Intent intent = getIntent();
        l.d(intent, "intent");
        C10480a.m26047M(this, intent.getExtras());
    }
}
