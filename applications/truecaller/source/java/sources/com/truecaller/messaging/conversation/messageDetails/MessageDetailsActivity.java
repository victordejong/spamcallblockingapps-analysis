package com.truecaller.messaging.conversation.messageDetails;

import android.os.Bundle;
import android.os.Parcelable;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p200c.p215n.C5533a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/truecaller/messaging/conversation/messageDetails/MessageDetailsActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:com/truecaller/messaging/conversation/messageDetails/MessageDetailsActivity.class */
public final class MessageDetailsActivity extends h {

    /* renamed from: a */
    public static final /* synthetic */ int f13100a = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        Participant[] participantArr;
        MessageDetailsActivity.super.onCreate(bundle);
        C17422k.m16066m0(this, true);
        if (bundle == null) {
            C26907a c26907a = new C26907a(getSupportFragmentManager());
            C5533a.C5536e c5536e = C5533a.f18715q;
            Parcelable parcelableExtra = getIntent().getParcelableExtra("message");
            l.c(parcelableExtra);
            Message message = (Message) parcelableExtra;
            String stringExtra = getIntent().getStringExtra("im_group_id");
            ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra("participants");
            if (parcelableArrayListExtra != null) {
                Object[] array = parcelableArrayListExtra.toArray(new Participant[0]);
                Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                participantArr = (Participant[]) array;
            } else {
                participantArr = null;
            }
            Objects.requireNonNull(c5536e);
            l.e(message, "message");
            C5533a c5533a = new C5533a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("message", message);
            bundle2.putString("im_group_id", stringExtra);
            bundle2.putParcelableArray("participants", participantArr);
            c5533a.setArguments(bundle2);
            c26907a.m1120m(16908290, c5533a, null);
            c26907a.mo1127f();
        }
    }
}
