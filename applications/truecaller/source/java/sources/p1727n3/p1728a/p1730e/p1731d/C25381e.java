package p1727n3.p1728a.p1730e.p1731d;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
/* renamed from: n3.a.e.d.e */
/* loaded from: classes-dex2jar.jar:n3/a/e/d/e.class */
public final class C25381e extends AbstractC25376a<IntentSenderRequest, ActivityResult> {
    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: a */
    public Intent mo3691a(Context context, IntentSenderRequest intentSenderRequest) {
        return new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: c */
    public ActivityResult mo3690c(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
