package p131c.p431l.p432a.p433a.p439f.p440a.p441c;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.netqin.p525cm.main.p529ui.NqApplication;
import p131c.p390g.p391a.p392a.C6475a;
/* renamed from: c.l.a.a.f.a.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/f/a/c/a.class */
public abstract class AbstractC6716a extends C6475a.AbstractC6476a {

    /* renamed from: j */
    public static final int f20688j = (int) (NqApplication.m3303b().getResources().getDisplayMetrics().widthPixels * 0.56f);

    @Override // p131c.p390g.p391a.p392a.C6475a.AbstractC6476a
    @Deprecated
    /* renamed from: a */
    public final void mo19988a(Canvas canvas, Paint paint) {
        int save = canvas.save();
        int i = this.f20189d;
        int i2 = f20688j;
        canvas.translate((i - i2) >> 1, (this.f20190e - i2) >> 1);
        mo19985b(canvas, paint);
        canvas.restoreToCount(save);
    }

    /* renamed from: b */
    public abstract void mo19985b(Canvas canvas, Paint paint);
}
