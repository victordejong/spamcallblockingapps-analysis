package p193e.p194a.p1002k4.p1004o;

import android.location.Location;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationResult;
import java.util.Objects;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import q3.a.n;
/* renamed from: e.a.k4.o.b */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/b.class */
public final class C16533b extends LocationCallback {

    /* renamed from: a */
    public final /* synthetic */ C16534c f46464a;

    public C16533b(C16534c c16534c) {
        this.f46464a = c16534c;
    }

    @Override // com.google.android.gms.location.LocationCallback
    public void onLocationResult(LocationResult locationResult) {
        C16534c c16534c = this.f46464a;
        n nVar = c16534c.f46465a;
        C16542a c16542a = c16534c.f46466b.f46473c;
        C16532a c16532a = null;
        Location o2 = locationResult != null ? locationResult.o2() : null;
        Objects.requireNonNull(c16542a);
        if (o2 != null) {
            c16532a = new C16532a(o2.getLatitude(), o2.getLongitude());
        }
        nVar.c(c16532a);
    }
}
