package com.truecaller.messaging.groupinfo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p236h.C6271a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/groupinfo/GroupInfoActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/groupinfo/GroupInfoActivity.class */
public final class GroupInfoActivity extends h {
    /* renamed from: pa */
    public static final Intent m34988pa(Context context, Conversation conversation) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(conversation, "conversation");
        Intent putExtra = new Intent(context, GroupInfoActivity.class).putExtra("conversation", conversation);
        l.d(putExtra, "Intent(context, GroupInf…NVERSATION, conversation)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Conversation conversation;
        C17422k.m16066m0(this, true);
        GroupInfoActivity.super.onCreate(bundle);
        if (bundle == null && (conversation = (Conversation) getIntent().getParcelableExtra("conversation")) != null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            Objects.requireNonNull(C6271a.f21044h);
            l.e(conversation, "conversation");
            C6271a c6271a = new C6271a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("conversation", conversation);
            c6271a.setArguments(bundle2);
            c26907a.m1120m(16908290, c6271a, null);
            c26907a.mo1127f();
        }
    }
}
