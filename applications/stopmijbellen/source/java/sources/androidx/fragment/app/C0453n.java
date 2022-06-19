package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.AbstractC0514d0;
import p025c.AbstractC0773b;
/* renamed from: androidx.fragment.app.n */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/n.class */
public class C0453n implements AbstractC0773b {

    /* renamed from: a */
    public final /* synthetic */ ActivityC0455o f1870a;

    public C0453n(ActivityC0455o activityC0455o) {
        this.f1870a = activityC0455o;
    }

    @Override // p025c.AbstractC0773b
    /* renamed from: a */
    public void mo3370a(Context context) {
        AbstractC0492x<?> abstractC0492x = this.f1870a.f1878h.f1951a;
        abstractC0492x.f1984d.m8177b(abstractC0492x, abstractC0492x, null);
        Bundle m7515a = this.f1870a.f207d.f2565b.m7515a("android:support:fragments");
        if (m7515a != null) {
            Parcelable parcelable = m7515a.getParcelable("android:support:fragments");
            AbstractC0492x<?> abstractC0492x2 = this.f1870a.f1878h.f1951a;
            if (!(abstractC0492x2 instanceof AbstractC0514d0)) {
                throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
            }
            abstractC0492x2.f1984d.m8176b0(parcelable);
        }
    }
}
