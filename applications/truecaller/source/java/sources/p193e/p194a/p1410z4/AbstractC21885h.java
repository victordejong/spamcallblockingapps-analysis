package p193e.p194a.p1410z4;

import android.content.Context;
import android.content.SharedPreferences;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1133t0.AbstractC19316a;
import s1.j;
import s1.z.c.l;
/* renamed from: e.a.z4.h */
/* loaded from: classes13-dex2jar.jar:e/a/z4/h.class */
public abstract class AbstractC21885h extends AbstractC19316a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC21885h(SharedPreferences sharedPreferences) {
        super(sharedPreferences);
        l.e(sharedPreferences, "prefs");
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a, p193e.p194a.p786g0.p792n.AbstractC14407a
    public int getInt(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        return (int) getLong(str, i);
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: j3 */
    public int mo8946j3() {
        throw new j(C22128a.m8543z2("An operation is not implemented: ", "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: k3 */
    public String mo8945k3() {
        throw new j(C22128a.m8543z2("An operation is not implemented: ", "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    /* renamed from: o3 */
    public void mo8944o3(int i, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        throw new j(C22128a.m8543z2("An operation is not implemented: ", "To support settings migration implement [migrateFrom], [currentVersion] and [name]. Migrations should start with moving values to separate file"));
    }

    @Override // p193e.p194a.p1129p5.p1133t0.AbstractC19316a
    public void putInt(String str, int i) {
        l.e(str, AnalyticsConstants.KEY);
        putLong(str, i);
    }
}
