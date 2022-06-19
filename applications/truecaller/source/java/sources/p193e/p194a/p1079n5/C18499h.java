package p193e.p194a.p1079n5;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.n5.h */
/* loaded from: classes15-dex2jar.jar:e/a/n5/h.class */
public final class C18499h extends AbstractC19316a implements AbstractC18498g {

    /* renamed from: b */
    public final int f52208b = 1;

    /* renamed from: c */
    public final String f52209c = "es";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18499h(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "prefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        return this.f52208b;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        return this.f52209c;
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        List<? extends SharedPreferences> T = i.T(new SharedPreferences[]{context.getSharedPreferences("core_settings", 0), context.getSharedPreferences("tc.settings", 0)});
        if (i < 1) {
            m13464p3(T, i.y0("backup"));
        }
    }
}
