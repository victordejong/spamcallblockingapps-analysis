package p081h.p203i.p204a.p224e.p259j.p264e;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import p081h.p203i.p204a.p224e.p226b.p227e.C6717b;
import p081h.p203i.p204a.p224e.p226b.p227e.C6718c;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.j.e.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/f.class */
public final class C7518f extends AbstractC6991h<AbstractC7519g> {

    /* renamed from: E */
    public final Bundle f17594E;

    public C7518f(Context context, Looper looper, C6983e eVar, C6718c cVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar2) {
        super(context, looper, 16, eVar, bVar, cVar2);
        if (cVar == null) {
            this.f17594E = new Bundle();
            return;
        }
        throw new NoSuchMethodError();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return queryLocalInterface instanceof AbstractC7519g ? (AbstractC7519g) queryLocalInterface : new C7520h(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: e */
    public final boolean mo16072e() {
        C6983e D = m21367D();
        return !TextUtils.isEmpty(D.m21395b()) && !D.m21397a(C6717b.f16620c).isEmpty();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return C6799g.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: r */
    public final Bundle mo16070r() {
        return this.f17594E;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.auth.service.START";
    }
}
