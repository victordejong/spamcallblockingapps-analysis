package p193e.p1577m.p1578a.p1642f.p1653e.p1656b;

import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.PendingResultUtil;
/* renamed from: e.m.a.f.e.b.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/b/i.class */
public final class C24972i implements PendingResultUtil.ResultConverter {

    /* renamed from: a */
    public final /* synthetic */ Response f69920a;

    public C24972i(Response response) {
        this.f69920a = response;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.PendingResultUtil.ResultConverter
    /* renamed from: a */
    public final Object mo4255a(Result result) {
        Response response = this.f69920a;
        response.f5719a = result;
        return response;
    }
}
