package p193e.p194a.p1002k4.p1004o;

import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.SettingsClient;
import javax.inject.Inject;
import p193e.p194a.p1002k4.p1004o.p1005i.C16542a;
import s1.z.c.l;
/* renamed from: e.a.k4.o.f */
/* loaded from: classes11-dex2jar.jar:e/a/k4/o/f.class */
public final class C16537f {

    /* renamed from: a */
    public final FusedLocationProviderClient f46471a;

    /* renamed from: b */
    public final SettingsClient f46472b;

    /* renamed from: c */
    public final C16542a f46473c;

    @Inject
    public C16537f(FusedLocationProviderClient fusedLocationProviderClient, SettingsClient settingsClient, C16542a c16542a) {
        l.e(fusedLocationProviderClient, "fusedLocationProviderClient");
        l.e(settingsClient, "locationServicesSettingsClient");
        l.e(c16542a, "placeMapper");
        this.f46471a = fusedLocationProviderClient;
        this.f46472b = settingsClient;
        this.f46473c = c16542a;
    }
}
