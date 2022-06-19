package com.truecaller.messaging.conversation.search;

import android.os.Bundle;
import com.truecaller.messaging.data.types.Conversation;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p200c.p202b.C5067b;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/conversation/search/SearchConversationActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/search/SearchConversationActivity.class */
public final class SearchConversationActivity extends h {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        SearchConversationActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        Conversation conversation = (Conversation) getIntent().getParcelableExtra("conversation");
        if (conversation != null) {
            int intExtra = getIntent().getIntExtra("conversation_filter", 1);
            if (bundle != null) {
                return;
            }
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            l.e(conversation, "conversation");
            C5067b c5067b = new C5067b();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("conversation", conversation);
            bundle2.putInt("conversation_filter", intExtra);
            c5067b.setArguments(bundle2);
            c26907a.m1120m(16908290, c5067b, null);
            c26907a.mo1127f();
        }
    }
}
