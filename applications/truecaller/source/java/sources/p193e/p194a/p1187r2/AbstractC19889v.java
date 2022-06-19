package p193e.p194a.p1187r2;

import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.r2.v */
/* loaded from: classes5-dex2jar.jar:e/a/r2/v.class */
public abstract class AbstractC19889v<T, R> implements AbstractC19888u<T, R> {

    /* renamed from: a */
    public C19850d f56318a;

    public AbstractC19889v(C19850d c19850d) {
        this.f56318a = c19850d;
    }

    /* renamed from: b */
    public static String m11837b(Object obj, int i) {
        return i == 0 ? "<value>" : obj == null ? AnalyticsConstants.NULL : obj instanceof CharSequence ? TextUtils.isEmpty((CharSequence) obj) ? "''" : i == 1 ? "<not empty string>" : C22128a.m8547y2("'", obj, "'") : i != 2 ? "<not null value>" : String.valueOf(obj);
    }

    @Override // p193e.p194a.p1187r2.AbstractC19879p
    /* renamed from: a */
    public C19850d mo11833a() {
        return this.f56318a;
    }

    /* renamed from: c */
    public AbstractC19891x<R> m11836c(AbstractC19891x<R> abstractC19891x) {
        if (abstractC19891x != null) {
            return abstractC19891x;
        }
        AssertionError assertionError = new AssertionError("Actor methods are not allowed to return null");
        assertionError.initCause(this.f56318a);
        throw assertionError;
    }
}
