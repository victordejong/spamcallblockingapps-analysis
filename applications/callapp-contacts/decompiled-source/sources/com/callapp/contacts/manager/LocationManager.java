package com.callapp.contacts.manager;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Looper;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.preferences.LocationPrefs;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.common.api.internal.av;
import com.google.android.gms.common.api.internal.aw;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.api.internal.o;
import com.google.android.gms.common.api.internal.p;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.b;
import com.google.android.gms.location.d;
import com.google.android.gms.location.e;
import com.google.android.gms.location.h;
import com.google.android.gms.tasks.f;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/LocationManager.class */
public class LocationManager {

    /* renamed from: a  reason: collision with root package name */
    public b f14875a;

    /* renamed from: b  reason: collision with root package name */
    public d f14876b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/LocationManager$LocationResult.class */
    public interface LocationResult {
        void a(Location location);
    }

    public LocationManager() {
        if (this.f14875a == null) {
            this.f14875a = e.a(CallAppApplication.get());
        }
    }

    private static Address a(Context context, double d2, double d3) {
        List<Address> list;
        if (!Geocoder.isPresent()) {
            return null;
        }
        try {
            list = new Geocoder(context, Locale.getDefault()).getFromLocation(d2, d3, 1);
        } catch (IOException | IndexOutOfBoundsException e) {
            CLog.a(LocationManager.class, e);
            list = null;
        }
        if (CollectionUtils.a(list)) {
            return null;
        }
        Address address = list.get(0);
        CLog.a("GPS");
        return address;
    }

    public static Address a(Location location) {
        return location != null ? a(Singletons.get().getApplication(), location.getLatitude(), location.getLongitude()) : null;
    }

    public static String a(Address address) {
        int maxAddressLineIndex = address.getMaxAddressLineIndex() + 1;
        StringBuilder sb = new StringBuilder();
        if (maxAddressLineIndex != -1) {
            for (int i = 0; i < maxAddressLineIndex; i++) {
                if (StringUtils.b(sb)) {
                    sb.append(", ");
                }
                sb.append(address.getAddressLine(i));
            }
        }
        if (StringUtils.a(sb)) {
            return null;
        }
        return sb.toString();
    }

    static /* synthetic */ void a(LocationResult locationResult, Location location) {
        if (location != null) {
            LocationPrefs.get();
            LocationPrefs.a(location);
        }
        if (locationResult != null) {
            locationResult.a(location);
        }
    }

    public static boolean a() {
        LocationPrefs.get();
        return LocationPrefs.a();
    }

    static /* synthetic */ boolean a(LocationManager locationManager, final LocationResult locationResult) {
        locationManager.f14876b = new d() { // from class: com.callapp.contacts.manager.LocationManager.1
            @Override // com.google.android.gms.location.d
            public final void a(LocationAvailability locationAvailability) {
                super.a(locationAvailability);
                LocationManager.this.f14875a.a((d) this);
                LocationManager.a(locationResult, (Location) null);
            }

            @Override // com.google.android.gms.location.d
            public final void a(com.google.android.gms.location.LocationResult locationResult2) {
                super.a(locationResult2);
                LocationManager.a(locationResult, locationResult2.getLastLocation());
                LocationManager.this.f14875a.a((d) this);
            }
        };
        final b bVar = locationManager.f14875a;
        LocationRequest create = LocationRequest.create();
        final d dVar = locationManager.f14876b;
        final zzba zza = zzba.zza(null, create);
        boolean z = false;
        o.a(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        final i<L> a2 = j.a(dVar, Looper.myLooper(), d.class.getSimpleName());
        final h hVar = new h(bVar, a2);
        p<A, com.google.android.gms.tasks.i<Void>> gVar = new p(bVar, hVar, dVar, null, zza, a2) { // from class: com.google.android.gms.location.g

            /* renamed from: a  reason: collision with root package name */
            private final b f29330a;

            /* renamed from: b  reason: collision with root package name */
            private final m f29331b;

            /* renamed from: c  reason: collision with root package name */
            private final d f29332c;

            /* renamed from: d  reason: collision with root package name */
            private final k f29333d;
            private final zzba e;
            private final i f;

            {
                this.f29330a = bVar;
                this.f29331b = hVar;
                this.f29332c = dVar;
                this.f29333d = r7;
                this.e = zza;
                this.f = a2;
            }

            @Override // com.google.android.gms.common.api.internal.p
            public final void a(Object obj, Object obj2) {
                this.f29330a.a(this.f29331b, this.f29332c, this.f29333d, this.e, this.f, (com.google.android.gms.internal.location.p) obj, (com.google.android.gms.tasks.i) obj2);
            }
        };
        o.a aVar = new o.a(null);
        aVar.f22757a = gVar;
        aVar.f22758b = hVar;
        aVar.f22760d = a2;
        aVar.g = 2436;
        com.google.android.gms.common.internal.o.b(aVar.f22757a != null, "Must set register function");
        com.google.android.gms.common.internal.o.b(aVar.f22758b != null, "Must set unregister function");
        if (aVar.f22760d != null) {
            z = true;
        }
        com.google.android.gms.common.internal.o.b(z, "Must set holder");
        bVar.a(new com.google.android.gms.common.api.internal.o(new av(aVar, aVar.f22760d, aVar.e, aVar.f, aVar.g), new aw(aVar, (i.a) com.google.android.gms.common.internal.o.a(aVar.f22760d.f22740b, "Key must not be null")), aVar.f22759c, null));
        return true;
    }

    private void b(final LocationResult locationResult) {
        this.f14875a.a().a(new f<Location>() { // from class: com.callapp.contacts.manager.LocationManager.4
            @Override // com.google.android.gms.tasks.f
            public /* synthetic */ void onSuccess(Location location) {
                locationResult.a(location);
            }
        }).a(new com.google.android.gms.tasks.e() { // from class: com.callapp.contacts.manager.LocationManager.3
            @Override // com.google.android.gms.tasks.e
            public void onFailure(Exception exc) {
                CLog.a(LocationManager.class, exc);
                locationResult.a(null);
            }
        });
    }

    public static LocationManager get() {
        return new LocationManager();
    }

    public final void a(final LocationResult locationResult) {
        CLog.a("LocationManager");
        b(new LocationResult() { // from class: com.callapp.contacts.manager.LocationManager.2
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            public final void a(Location location) {
                "Got from last known location: ".concat(String.valueOf(location));
                CLog.a("LocationManager");
                if (location != null) {
                    LocationManager.a(locationResult, location);
                    return;
                }
                Location location2 = LocationPrefs.get().getLocation();
                if (location2 != null) {
                    CLog.a("LocationManager");
                    LocationManager.a(locationResult, location2);
                    return;
                }
                CLog.a("LocationManager");
                LocationManager.a(LocationManager.this, locationResult);
            }
        });
    }
}
