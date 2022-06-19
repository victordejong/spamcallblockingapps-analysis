package p193e.p194a.p1002k4.p1004o;

import android.os.Looper;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsResponse;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import q3.a.n;
/* renamed from: e.a.k4.o.c */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/c.class */
public final class C16534c<TResult> implements OnSuccessListener<LocationSettingsResponse> {

    /* renamed from: a */
    public final /* synthetic */ n f46465a;

    /* renamed from: b */
    public final /* synthetic */ C16537f f46466b;

    /* renamed from: c */
    public final /* synthetic */ LocationRequest f46467c;

    public C16534c(n nVar, C16537f c16537f, Task task, LocationRequest locationRequest) {
        this.f46465a = nVar;
        this.f46466b = c16537f;
        this.f46467c = locationRequest;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(LocationSettingsResponse locationSettingsResponse) {
        this.f46466b.f46471a.d(this.f46467c, new C16533b(this), (Looper) null);
    }
}
