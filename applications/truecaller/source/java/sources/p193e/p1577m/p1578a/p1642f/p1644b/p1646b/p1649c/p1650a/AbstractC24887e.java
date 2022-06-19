package p193e.p1577m.p1578a.p1642f.p1644b.p1646b.p1649c.p1650a;

import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.internal.zbe;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* renamed from: e.m.a.f.b.b.c.a.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/b/b/c/a/e.class */
public abstract class AbstractC24887e<R extends Result> extends BaseImplementation.ApiMethodImpl<R, zbe> {
    public AbstractC24887e(GoogleApiClient googleApiClient) {
        super(Auth.f5347b, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl, com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
    @KeepForSdk
    public final /* bridge */ /* synthetic */ void setResult(Object obj) {
        super.setResult((AbstractC24887e<R>) ((Result) obj));
    }
}
