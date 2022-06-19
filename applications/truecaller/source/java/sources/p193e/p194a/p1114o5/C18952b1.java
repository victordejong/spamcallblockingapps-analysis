package p193e.p194a.p1114o5;

import android.app.Activity;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.search.global.CompositeAdapterDelegate;
import p193e.p194a.p1342w4.p1344s.C21228b0;
/* renamed from: e.a.o5.b1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/b1.class */
public class C18952b1 implements AbstractC19127x0 {

    /* renamed from: a */
    public final Activity f53103a;

    /* renamed from: b */
    public final String f53104b;

    /* renamed from: c */
    public final String f53105c;

    public C18952b1(Activity activity, InternalTruecallerNotification internalTruecallerNotification) {
        this.f53103a = activity;
        this.f53104b = internalTruecallerNotification.m34847j("q");
        this.f53105c = internalTruecallerNotification.m34847j(AbstractC2405c.f7629a);
    }

    @Override // p193e.p194a.p1114o5.AbstractC19127x0
    public void execute() {
        Activity activity = this.f53103a;
        String str = this.f53104b;
        String str2 = this.f53105c;
        int i = C21228b0.f59453g;
        C21228b0.m10114PA(activity, str, str2, false, CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT);
    }
}
