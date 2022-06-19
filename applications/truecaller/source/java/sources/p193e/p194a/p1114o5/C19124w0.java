package p193e.p194a.p1114o5;

import android.app.Activity;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.search.global.CompositeAdapterDelegate;
import p193e.p194a.p1342w4.p1344s.C21228b0;
/* renamed from: e.a.o5.w0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/w0.class */
public class C19124w0 implements AbstractC19127x0 {

    /* renamed from: a */
    public final Activity f53344a;

    /* renamed from: b */
    public final String f53345b;

    public C19124w0(Activity activity, InternalTruecallerNotification internalTruecallerNotification) {
        this.f53344a = activity;
        this.f53345b = internalTruecallerNotification.m34847j("n");
    }

    @Override // p193e.p194a.p1114o5.AbstractC19127x0
    public void execute() {
        Activity activity = this.f53344a;
        String str = this.f53345b;
        int i = C21228b0.f59453g;
        C21228b0.m10114PA(activity, str, null, false, CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT);
    }
}
