package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.os.Bundle;
import android.view.View;
import com.clevertap.android.sdk.inapp.CTInAppNotificationButton;
import java.util.HashMap;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1485h.p1486a.p1493c.C22735g0;
/* renamed from: e.h.a.c.q0.a$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/a$a.class */
public class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ a f63150a;

    public a$a(a aVar) {
        this.f63150a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = this.f63150a;
        int intValue = ((Integer) view.getTag()).intValue();
        Objects.requireNonNull(aVar);
        try {
            CTInAppNotificationButton cTInAppNotificationButton = aVar.e.f2333f.get(intValue);
            Bundle bundle = new Bundle();
            bundle.putString("wzrk_id", aVar.e.f2334g);
            bundle.putString("wzrk_c2a", cTInAppNotificationButton.f2364h);
            HashMap<String, String> hashMap = cTInAppNotificationButton.f2363g;
            AbstractC22798c0 SA = aVar.SA();
            if (SA != null) {
                SA.mo7755P7(aVar.e, bundle, hashMap);
            }
            String str = cTInAppNotificationButton.f2357a;
            if (str != null) {
                aVar.QA(str, bundle);
            } else {
                aVar.PA(bundle);
            }
        } catch (Throwable th) {
            C22735g0 m42081b = aVar.b.m42081b();
            StringBuilder m8728C = C22128a.m8728C("Error handling notification button click: ");
            m8728C.append(th.getCause());
            m8728C.toString();
            Objects.requireNonNull(m42081b);
            aVar.PA((Bundle) null);
        }
    }
}
