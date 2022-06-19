package p193e.p1411b.p1412a.p1416w;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.LocaleList;
/* renamed from: e.b.a.w.a */
/* loaded from: classes-dex2jar.jar:e/b/a/w/a.class */
public class C21951a extends Paint {
    public C21951a() {
    }

    public C21951a(int i) {
        super(i);
    }

    public C21951a(int i, PorterDuff.Mode mode) {
        super(i);
        setXfermode(new PorterDuffXfermode(mode));
    }

    public C21951a(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    @Override // android.graphics.Paint
    public void setTextLocales(LocaleList localeList) {
    }
}
