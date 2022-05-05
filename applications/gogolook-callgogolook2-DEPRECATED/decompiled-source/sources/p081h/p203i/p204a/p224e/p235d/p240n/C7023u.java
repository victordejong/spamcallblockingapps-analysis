package p081h.p203i.p204a.p224e.p235d.p240n;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.common.internal.SignInButtonConfig;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
/* renamed from: h.i.a.e.d.n.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/u.class */
public final class C7023u extends AbstractC7112f<AbstractC7016r> {

    /* renamed from: c */
    public static final C7023u f17162c = new C7023u();

    public C7023u() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    /* renamed from: b */
    public static View m21277b(Context context, int i, int i2) throws AbstractC7112f.C7113a {
        return f17162c.m21278a(context, i, i2);
    }

    /* renamed from: a */
    public final View m21278a(Context context, int i, int i2) throws AbstractC7112f.C7113a {
        try {
            SignInButtonConfig signInButtonConfig = new SignInButtonConfig(i, i2, null);
            return (View) BinderC7110d.m21059A(m21057a(context).mo21300a(BinderC7110d.m21058a(context), signInButtonConfig));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i);
            sb.append(" and color ");
            sb.append(i2);
            throw new AbstractC7112f.C7113a(sb.toString(), e);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7112f
    /* renamed from: a */
    public final AbstractC7016r mo20463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof AbstractC7016r ? (AbstractC7016r) queryLocalInterface : new C6990g0(iBinder);
    }
}
