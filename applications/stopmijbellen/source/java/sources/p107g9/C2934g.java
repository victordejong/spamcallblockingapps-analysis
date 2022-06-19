package p107g9;

import android.content.Context;
import com.applovin.sdk.AppLovinEventTypes;
import java.io.IOException;
import p011aa.C0062o;
import p107g9.AbstractC2968x;
import p107g9.C2953s;
/* renamed from: g9.g */
/* loaded from: classes2-dex2jar.jar:g9/g.class */
public class C2934g extends AbstractC2968x {

    /* renamed from: a */
    public final Context f9882a;

    public C2934g(Context context) {
        this.f9882a = context;
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(c2964v.f9956c.getScheme());
    }

    @Override // p107g9.AbstractC2968x
    /* renamed from: f */
    public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
        return new AbstractC2968x.C2969a(C0062o.m8825f(this.f9882a.getContentResolver().openInputStream(c2964v.f9956c)), C2953s.EnumC2958d.DISK);
    }
}
