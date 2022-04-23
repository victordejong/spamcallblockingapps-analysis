package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
/* renamed from: h.i.a.e.m.b.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/n.class */
public final class C9021n extends AbstractC6969d<AbstractC8973f> {
    public C9021n(Context context, Looper looper, AbstractC6969d.AbstractC6970a aVar, AbstractC6969d.AbstractC6971b bVar) {
        super(context, looper, 93, aVar, bVar, null);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ AbstractC8973f mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        return queryLocalInterface instanceof AbstractC8973f ? (AbstractC8973f) queryLocalInterface : new C8985h(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    @NonNull
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    @NonNull
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.measurement.START";
    }
}
