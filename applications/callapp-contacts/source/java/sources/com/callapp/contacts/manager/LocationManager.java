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
import com.google.android.gms.common.api.internal.AbstractC11909p;
import com.google.android.gms.common.api.internal.C11854av;
import com.google.android.gms.common.api.internal.C11855aw;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.api.internal.C11902j;
import com.google.android.gms.common.api.internal.C11907o;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.location.C13341p;
import com.google.android.gms.internal.location.zzba;
import com.google.android.gms.location.AbstractC13754d;
import com.google.android.gms.location.C13752b;
import com.google.android.gms.location.C13755e;
import com.google.android.gms.location.C13758h;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.tasks.AbstractC14182e;
import com.google.android.gms.tasks.AbstractC14183f;
import com.google.android.gms.tasks.C14186i;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/LocationManager.class */
public class LocationManager {

    /* renamed from: a */
    public C13752b f25703a;

    /* renamed from: b */
    public AbstractC13754d f25704b;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/LocationManager$LocationResult.class */
    public interface LocationResult {
        /* renamed from: a */
        void mo28644a(Location location);
    }

    public LocationManager() {
        if (this.f25703a == null) {
            this.f25703a = C13755e.m12271a(CallAppApplication.get());
        }
    }

    /* renamed from: a */
    private static Address m28652a(Context context, double d, double d2) {
        List<Address> list;
        if (!Geocoder.isPresent()) {
            return null;
        }
        try {
            list = new Geocoder(context, Locale.getDefault()).getFromLocation(d, d2, 1);
        } catch (IOException | IndexOutOfBoundsException e) {
            CLog.m27609a(LocationManager.class, e);
            list = null;
        }
        if (CollectionUtils.m26076a(list)) {
            return null;
        }
        Address address = list.get(0);
        CLog.m27606a("GPS");
        return address;
    }

    /* renamed from: a */
    public static Address m28650a(Location location) {
        return location != null ? m28652a(Singletons.get().getApplication(), location.getLatitude(), location.getLongitude()) : null;
    }

    /* renamed from: a */
    public static String m28651a(Address address) {
        int maxAddressLineIndex = address.getMaxAddressLineIndex() + 1;
        StringBuilder sb = new StringBuilder();
        if (maxAddressLineIndex != -1) {
            for (int i = 0; i < maxAddressLineIndex; i++) {
                if (StringUtils.m26045b(sb)) {
                    sb.append(", ");
                }
                sb.append(address.getAddressLine(i));
            }
        }
        if (StringUtils.m26059a(sb)) {
            return null;
        }
        return sb.toString();
    }

    /* renamed from: a */
    static /* synthetic */ void m28648a(LocationResult locationResult, Location location) {
        if (location != null) {
            LocationPrefs.get();
            LocationPrefs.m28178a(location);
        }
        if (locationResult != null) {
            locationResult.mo28644a(location);
        }
    }

    /* renamed from: a */
    public static boolean m28653a() {
        LocationPrefs.get();
        return LocationPrefs.m28179a();
    }

    /* renamed from: a */
    static /* synthetic */ boolean m28646a(LocationManager locationManager, final LocationResult locationResult) {
        locationManager.f25704b = new AbstractC13754d() { // from class: com.callapp.contacts.manager.LocationManager.1
            @Override // com.google.android.gms.location.AbstractC13754d
            /* renamed from: a */
            public final void mo12273a(LocationAvailability locationAvailability) {
                super.mo12273a(locationAvailability);
                LocationManager.this.f25703a.m12275a((AbstractC13754d) this);
                LocationManager.m28648a(locationResult, (Location) null);
            }

            @Override // com.google.android.gms.location.AbstractC13754d
            /* renamed from: a */
            public final void mo12272a(com.google.android.gms.location.LocationResult locationResult2) {
                super.mo12272a(locationResult2);
                LocationManager.m28648a(locationResult, locationResult2.getLastLocation());
                LocationManager.this.f25703a.m12275a((AbstractC13754d) this);
            }
        };
        C13752b c13752b = locationManager.f25703a;
        LocationRequest create = LocationRequest.create();
        AbstractC13754d abstractC13754d = locationManager.f25704b;
        zzba zza = zzba.zza(null, create);
        C12045o.m19157a(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        C11899i<L> m19322a = C11902j.m19322a(abstractC13754d, Looper.myLooper(), AbstractC13754d.class.getSimpleName());
        C13758h c13758h = new C13758h(c13752b, m19322a);
        AbstractC11909p<A, C14186i<Void>> abstractC11909p = new AbstractC11909p(c13752b, c13758h, abstractC13754d, null, zza, m19322a) { // from class: com.google.android.gms.location.g

            /* renamed from: a */
            private final C13752b f51101a;

            /* renamed from: b */
            private final AbstractC13763m f51102b;

            /* renamed from: c */
            private final AbstractC13754d f51103c;

            /* renamed from: d */
            private final AbstractC13761k f51104d;

            /* renamed from: e */
            private final zzba f51105e;

            /* renamed from: f */
            private final C11899i f51106f;

            {
                this.f51101a = c13752b;
                this.f51102b = c13758h;
                this.f51103c = abstractC13754d;
                this.f51104d = r7;
                this.f51105e = zza;
                this.f51106f = m19322a;
            }

            @Override // com.google.android.gms.common.api.internal.AbstractC11909p
            /* renamed from: a */
            public final void mo12270a(Object obj, Object obj2) {
                this.f51101a.m12274a(this.f51102b, this.f51103c, this.f51104d, this.f51105e, this.f51106f, (C13341p) obj, (C14186i) obj2);
            }
        };
        C11907o.C11908a c11908a = new C11907o.C11908a(null);
        c11908a.f39391a = abstractC11909p;
        c11908a.f39392b = c13758h;
        c11908a.f39394d = m19322a;
        c11908a.f39397g = 2436;
        C12045o.m19153b(c11908a.f39391a != null, "Must set register function");
        C12045o.m19153b(c11908a.f39392b != null, "Must set unregister function");
        boolean z = false;
        if (c11908a.f39394d != null) {
            z = true;
        }
        C12045o.m19153b(z, "Must set holder");
        c13752b.m19455a(new C11907o(new C11854av(c11908a, c11908a.f39394d, c11908a.f39395e, c11908a.f39396f, c11908a.f39397g), new C11855aw(c11908a, (C11899i.C11900a) C12045o.m19161a(c11908a.f39394d.f39366b, "Key must not be null")), c11908a.f39393c, null));
        return true;
    }

    /* renamed from: b */
    private void m28645b(final LocationResult locationResult) {
        this.f25703a.m12277a().mo11487a(new AbstractC14183f<Location>() { // from class: com.callapp.contacts.manager.LocationManager.4
            @Override // com.google.android.gms.tasks.AbstractC14183f
            public /* synthetic */ void onSuccess(Location location) {
                locationResult.mo28644a(location);
            }
        }).mo11488a(new AbstractC14182e() { // from class: com.callapp.contacts.manager.LocationManager.3
            @Override // com.google.android.gms.tasks.AbstractC14182e
            public void onFailure(Exception exc) {
                CLog.m27609a(LocationManager.class, exc);
                locationResult.mo28644a(null);
            }
        });
    }

    public static LocationManager get() {
        return new LocationManager();
    }

    /* renamed from: a */
    public final void m28649a(final LocationResult locationResult) {
        CLog.m27606a("LocationManager");
        m28645b(new LocationResult() { // from class: com.callapp.contacts.manager.LocationManager.2
            @Override // com.callapp.contacts.manager.LocationManager.LocationResult
            /* renamed from: a */
            public final void mo28644a(Location location) {
                "Got from last known location: ".concat(String.valueOf(location));
                CLog.m27606a("LocationManager");
                if (location != null) {
                    LocationManager.m28648a(locationResult, location);
                    return;
                }
                Location location2 = LocationPrefs.get().getLocation();
                if (location2 != null) {
                    CLog.m27606a("LocationManager");
                    LocationManager.m28648a(locationResult, location2);
                    return;
                }
                CLog.m27606a("LocationManager");
                LocationManager.m28646a(LocationManager.this, locationResult);
            }
        });
    }
}
