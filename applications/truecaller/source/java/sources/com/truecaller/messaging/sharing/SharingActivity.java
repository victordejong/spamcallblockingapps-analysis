package com.truecaller.messaging.sharing;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.truecaller.messaging.conversation.ConversationActivity;
import com.truecaller.messaging.newconversation.NewConversationActivity;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p195a.p226d1.AbstractC5946a;
import p193e.p194a.p195a.p226d1.AbstractC5948c;
import p193e.p194a.p195a.p226d1.C5947b;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/sharing/SharingActivity.class */
public class SharingActivity extends h implements AbstractC5948c {
    @Inject

    /* renamed from: a */
    public AbstractC5946a f13671a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p226d1.AbstractC5948c
    /* renamed from: B1 */
    public Intent mo32119B1() {
        return new Intent((Context) this, (Class<?>) NewConversationActivity.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p195a.p226d1.AbstractC5948c
    /* renamed from: C7 */
    public Intent mo32118C7() {
        return new Intent((Context) this, (Class<?>) ConversationActivity.class);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        SharingActivity.super.onCreate(bundle);
        C17422k.m16069l(getTheme());
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        Intent intent = getIntent();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC8621z mo12296m = mo10154s.mo12296m();
        Objects.requireNonNull(mo12296m, "Cannot return null from a non-@Nullable component method");
        C5947b c5947b = new C5947b(intent, mo12296m);
        this.f13671a = c5947b;
        c5947b.mo9029Y0(this);
    }

    public void onDestroy() {
        SharingActivity.super.onDestroy();
        this.f13671a.f57683a = null;
    }
}
