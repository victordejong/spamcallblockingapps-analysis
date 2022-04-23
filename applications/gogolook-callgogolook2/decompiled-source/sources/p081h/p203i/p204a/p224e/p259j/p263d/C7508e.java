package p081h.p203i.p204a.p224e.p259j.p263d;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p226b.p227e.C6714a;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h;
import p081h.p203i.p204a.p224e.p235d.p240n.C6983e;
/* renamed from: h.i.a.e.j.d.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/d/e.class */
public final class C7508e extends AbstractC6991h<AbstractC7510g> {
    @Nullable

    /* renamed from: E */
    public final C6714a.C6715a f17591E;

    public C7508e(Context context, Looper looper, C6983e eVar, C6714a.C6715a aVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar) {
        super(context, looper, 68, eVar, bVar, cVar);
        this.f17591E = aVar;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: a */
    public final /* synthetic */ IInterface mo16074a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
        return queryLocalInterface instanceof AbstractC7510g ? (AbstractC7510g) queryLocalInterface : new C7511h(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h, p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public final int mo16071h() {
        return 12800000;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: r */
    public final Bundle mo16070r() {
        C6714a.C6715a aVar = this.f17591E;
        return aVar == null ? new Bundle() : aVar.m21980a();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: v */
    public final String mo16069v() {
        return "com.google.android.gms.auth.api.credentials.internal.ICredentialsService";
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: w */
    public final String mo16068w() {
        return "com.google.android.gms.auth.api.credentials.service.START";
    }
}
