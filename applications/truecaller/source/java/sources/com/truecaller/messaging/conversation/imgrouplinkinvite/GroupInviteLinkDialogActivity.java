package com.truecaller.messaging.conversation.imgrouplinkinvite;

import android.content.res.Resources;
import android.os.Bundle;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p200c.p205g.C5283a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/conversation/imgrouplinkinvite/GroupInviteLinkDialogActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/imgrouplinkinvite/GroupInviteLinkDialogActivity.class */
public final class GroupInviteLinkDialogActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f13097a = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        GroupInviteLinkDialogActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16067m(theme, true);
        if (bundle == null) {
            String stringExtra = getIntent().getStringExtra("extra_invite_key");
            if (stringExtra == null) {
                throw new IllegalArgumentException("Group invite key can not be null");
            }
            l.d(stringExtra, "intent.getStringExtra(EX…ite key can not be null\")");
            Objects.requireNonNull(C5283a.f18099e);
            l.e(stringExtra, "inviteKey");
            C5283a c5283a = new C5283a();
            Bundle bundle2 = new Bundle();
            bundle2.putString("arg_invite_key", stringExtra);
            c5283a.setArguments(bundle2);
            c5283a.show(getSupportFragmentManager(), (String) null);
        }
    }
}
