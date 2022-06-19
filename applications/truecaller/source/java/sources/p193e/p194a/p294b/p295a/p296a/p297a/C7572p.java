package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.newBusiness.editAddress.p148ui.EditBizAddressActivity;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
/* renamed from: e.a.b.a.a.a.p */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/p.class */
public final /* synthetic */ class C7572p extends j implements a<s> {
    public C7572p(C7559k c7559k) {
        super(0, c7559k, C7559k.class, "onAddressClicked", "onAddressClicked()V", 0);
    }

    public Object invoke() {
        C7559k c7559k = (C7559k) ((b) this).b;
        int i = C7559k.f23871i;
        Context context = c7559k.getContext();
        if (context != null) {
            l.d(context, "it");
            l.e(context, AnalyticsConstants.CONTEXT);
            c7559k.startActivityForResult(new Intent(context, EditBizAddressActivity.class), 68);
        }
        return s.a;
    }
}
