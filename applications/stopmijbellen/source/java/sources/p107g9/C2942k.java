package p107g9;

import android.content.Context;
import java.io.IOException;
import p011aa.AbstractC0074y;
import p011aa.C0062o;
import p107g9.AbstractC2968x;
import p107g9.C2953s;
import p281x0.C4804a;
/* renamed from: g9.k */
/* loaded from: classes2-dex2jar.jar:g9/k.class */
public class C2942k extends C2934g {
    public C2942k(Context context) {
        super(context);
    }

    @Override // p107g9.C2934g, p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        return "file".equals(c2964v.f9956c.getScheme());
    }

    @Override // p107g9.C2934g, p107g9.AbstractC2968x
    /* renamed from: f */
    public AbstractC2968x.C2969a mo2799f(C2964v c2964v, int i) throws IOException {
        AbstractC0074y m8825f = C0062o.m8825f(this.f9882a.getContentResolver().openInputStream(c2964v.f9956c));
        C2953s.EnumC2958d enumC2958d = C2953s.EnumC2958d.DISK;
        C4804a c4804a = new C4804a(c2964v.f9956c.getPath());
        C4804a.C4806b m426d = c4804a.m426d("Orientation");
        int i2 = 1;
        if (m426d != null) {
            try {
                i2 = m426d.m403f(c4804a.f14787e);
            } catch (NumberFormatException e) {
            }
        }
        return new AbstractC2968x.C2969a(null, m8825f, enumC2958d, i2);
    }
}
