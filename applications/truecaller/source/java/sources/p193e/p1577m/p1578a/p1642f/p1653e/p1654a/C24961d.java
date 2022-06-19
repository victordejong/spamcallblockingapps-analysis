package p193e.p1577m.p1578a.p1642f.p1653e.p1654a;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
/* renamed from: e.m.a.f.e.a.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/d.class */
public final class C24961d<R extends Result> extends BasePendingResult<R> {

    /* renamed from: a */
    public final R f69904a;

    public C24961d(GoogleApiClient googleApiClient, R r) {
        super(googleApiClient);
        this.f69904a = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        return this.f69904a;
    }
}
