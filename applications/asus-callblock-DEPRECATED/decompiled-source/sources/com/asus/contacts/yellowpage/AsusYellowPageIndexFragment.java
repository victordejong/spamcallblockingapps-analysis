package com.asus.contacts.yellowpage;

import android.app.Fragment;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.android.contacts.activities.RequestFineLocationPermissionsAcitvity;
import com.android.contacts.util.PermissionsUtil;
import com.asus.contacts.yellowpage.provider.a;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.contacts.yellowpage.utils.d;
import com.asus.contacts.yellowpage.utils.e;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusYellowPageIndexFragment.class */
public class AsusYellowPageIndexFragment extends Fragment implements d.a {
    ProgressDialog c;
    k d;
    SearchView h;
    private int i;
    private boolean j;
    private boolean k;
    private Spinner l;
    private ListView m;
    private LocationManager o;
    private Location p;

    /* renamed from: a  reason: collision with root package name */
    public final String f2780a = AsusYellowPageIndexFragment.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public final int f2781b = 10001;
    ArrayList<com.asus.contacts.yellowpage.c> e = new ArrayList<>();
    q[] f = new q[com.asus.contacts.yellowpage.utils.c.f2884a.length];
    q[] g = new q[com.asus.contacts.yellowpage.utils.c.c.length];
    private AdapterView.OnItemSelectedListener n = new AdapterView.OnItemSelectedListener() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.1
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            adapterView.setSelection(i);
            com.asus.contacts.yellowpage.utils.c.a(AsusYellowPageIndexFragment.this.getActivity(), "key_yellow_page_location_index", i);
            AsusYellowPageIndexFragment.this.i = com.asus.contacts.yellowpage.utils.c.a(AsusYellowPageIndexFragment.this.getActivity(), "key_yellow_page_location_index");
            AsusYellowPageIndexFragment.this.d.f2826b = AsusYellowPageIndexFragment.this.i;
            if (i > 0) {
                com.asus.contacts.yellowpage.utils.c.a(AsusYellowPageIndexFragment.this.getActivity(), "key_yellow_page_location", adapterView.getSelectedItem().toString());
            } else {
                com.asus.contacts.yellowpage.utils.c.b(AsusYellowPageIndexFragment.this.getActivity(), "key_yellow_page_location");
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    };
    private LocationListener q = new LocationListener() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.2
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            AsusYellowPageIndexFragment.this.p = location;
            Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onLocationChanged] Longitude: " + AsusYellowPageIndexFragment.this.p.getLongitude() + ", Latitude: " + AsusYellowPageIndexFragment.this.p.getLatitude());
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onProviderDisabled] Provider: " + str + " was disabled");
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
            Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onProviderEnabled] Provider: " + str + " was enabled");
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
            switch (i) {
                case 0:
                    Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onStatusChanged] OUT_OF_SERVICE");
                    return;
                case 1:
                    Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onStatusChanged] TEMPORARILY_UNAVAILABLE");
                    return;
                case 2:
                    Log.d(AsusYellowPageIndexFragment.this.f2780a, "[onStatusChanged] Provider: " + str);
                    return;
                default:
                    return;
            }
        }
    };
    private SearchView.OnQueryTextListener r = new SearchView.OnQueryTextListener() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.3
        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            if (AsusYellowPageIndexFragment.this.i != 0 && AsusYellowPageIndexFragment.this.i != 1) {
                if (AsusYellowPageIndexFragment.this.h != null) {
                    AsusYellowPageIndexFragment.this.h.setQuery(BuildConfig.FLAVOR, false);
                    AsusYellowPageIndexFragment.this.h.clearFocus();
                }
                Intent intent = new Intent(AsusYellowPageIndexFragment.this.getActivity(), AsusBusinessListActivity.class);
                intent.setAction("android.intent.action.SEARCH");
                intent.putExtra("query", str);
                intent.putExtra("extra_is_near_by", false);
                AsusYellowPageIndexFragment.this.startActivity(intent);
            } else if (AsusYellowPageIndexFragment.this.j || AsusYellowPageIndexFragment.this.k) {
                if (AsusYellowPageIndexFragment.this.h != null) {
                    AsusYellowPageIndexFragment.this.h.setQuery(BuildConfig.FLAVOR, false);
                    AsusYellowPageIndexFragment.this.h.clearFocus();
                }
                Intent intent2 = new Intent(AsusYellowPageIndexFragment.this.getActivity(), AsusBusinessListActivity.class);
                intent2.setAction("android.intent.action.SEARCH");
                intent2.putExtra("query", str);
                intent2.putExtra("extra_is_near_by", true);
                AsusYellowPageIndexFragment.this.startActivity(intent2);
            } else if (!RequestFineLocationPermissionsAcitvity.startPermissionActivity(AsusYellowPageIndexFragment.this.getActivity(), false)) {
                AsusYellowPageIndexFragment.this.getFragmentManager().beginTransaction();
                if (AsusYellowPageIndexFragment.this.getFragmentManager().findFragmentByTag(AsusYellowPageIndexFragment.this.getResources().getString(2131755612)) == null) {
                    m.a("event_location_service_unavailable").show(AsusYellowPageIndexFragment.this.getFragmentManager(), AsusYellowPageIndexFragment.this.getResources().getString(2131755612));
                }
            }
            com.asus.contacts.yellowpage.utils.b.a(AsusYellowPageIndexFragment.this.getActivity(), b.EnumC0081b.f2882a, (String) null, str);
            return true;
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusYellowPageIndexFragment$a.class */
    final class a extends AsyncQueryHandler {
        public a(ContentResolver contentResolver) {
            super(contentResolver);
        }

        @Override // android.content.AsyncQueryHandler
        protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
            if (cursor != null && cursor.moveToFirst()) {
                AsusYellowPageIndexFragment.this.e.clear();
                do {
                    AsusYellowPageIndexFragment.this.e.add(new com.asus.contacts.yellowpage.c(cursor.getString(cursor.getColumnIndex("category_name")), null, null, null, cursor.getString(cursor.getColumnIndex("code")).substring(0, 2)));
                } while (cursor.moveToNext());
                cursor.close();
                Collections.sort(AsusYellowPageIndexFragment.this.e, new Comparator<com.asus.contacts.yellowpage.c>() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.a.1
                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(com.asus.contacts.yellowpage.c cVar, com.asus.contacts.yellowpage.c cVar2) {
                        return new e(cVar.e).f2888a - new e(cVar2.e).f2888a;
                    }
                });
                try {
                    new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusYellowPageIndexFragment$b.class */
    final class b extends AsyncTask<String, Void, Void> {
        b() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(String[] strArr) {
            String str = strArr[0];
            AsusYellowPageIndexFragment.this.e.clear();
            d.a(AsusYellowPageIndexFragment.this.getActivity(), str, new ArrayList());
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r10) {
            Log.d(AsusYellowPageIndexFragment.this.f2780a, "Import finished...");
            try {
                if (AsusYellowPageIndexFragment.this.getActivity() != null && !AsusYellowPageIndexFragment.this.getActivity().isDestroyed()) {
                    new a(AsusYellowPageIndexFragment.this.getActivity().getContentResolver()).startQuery(10001, null, a.C0080a.f2861b, null, null, null, null);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusYellowPageIndexFragment$c.class */
    final class c extends AsyncTask<Void, Void, Boolean> {
        c() {
        }

        /* JADX WARN: Removed duplicated region for block: B:75:0x0176  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Boolean a() {
            /*
                Method dump skipped, instructions count: 401
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.c.a():java.lang.Boolean");
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            int length;
            if (bool.booleanValue() && !isCancelled()) {
                try {
                    AsusYellowPageIndexFragment asusYellowPageIndexFragment = AsusYellowPageIndexFragment.this;
                    ArrayList<l> arrayList = asusYellowPageIndexFragment.d.e;
                    arrayList.clear();
                    h hVar = new h();
                    hVar.f2820a = asusYellowPageIndexFragment.getString(2131755118);
                    arrayList.add(hVar);
                    i iVar = new i();
                    iVar.f2821a = 4;
                    for (int i = 0; i < 4; i++) {
                        iVar.a(i, com.asus.contacts.yellowpage.utils.c.f2885b[i]);
                        iVar.a(i, asusYellowPageIndexFragment.f[i].e);
                        iVar.b(i, asusYellowPageIndexFragment.f[i].d);
                        iVar.d = true;
                    }
                    arrayList.add(iVar);
                    int length2 = asusYellowPageIndexFragment.g.length % 4 == 0 ? asusYellowPageIndexFragment.g.length / 4 : (asusYellowPageIndexFragment.g.length / 4) + 1;
                    if (length2 > 0) {
                        h hVar2 = new h();
                        hVar2.f2820a = asusYellowPageIndexFragment.getString(2131755124);
                        arrayList.add(hVar2);
                        for (int i2 = 0; i2 < length2; i2++) {
                            i iVar2 = new i();
                            if (i2 != length2 - 1) {
                                length = 4;
                            } else {
                                length = asusYellowPageIndexFragment.g.length % 4;
                                if (length == 0) {
                                    length = 4;
                                }
                            }
                            iVar2.f2821a = length;
                            for (int i3 = 0; i3 < iVar2.f2821a; i3++) {
                                int i4 = (i2 * 4) + i3;
                                iVar2.a(i3, com.asus.contacts.yellowpage.utils.c.d[i4]);
                                iVar2.a(i3, asusYellowPageIndexFragment.g[i4].e);
                                iVar2.b(i3, asusYellowPageIndexFragment.g[i4].d);
                            }
                            arrayList.add(iVar2);
                        }
                    }
                    h hVar3 = new h();
                    hVar3.f2820a = asusYellowPageIndexFragment.getString(2131755121);
                    arrayList.add(hVar3);
                    int size = asusYellowPageIndexFragment.e.size();
                    for (int i5 = 0; i5 < size; i5 += 2) {
                        com.asus.contacts.yellowpage.c cVar = asusYellowPageIndexFragment.e.get(i5);
                        j jVar = new j();
                        jVar.f2823a = cVar.f2807a;
                        jVar.f2824b = cVar.e;
                        if (i5 + 1 < size) {
                            com.asus.contacts.yellowpage.c cVar2 = asusYellowPageIndexFragment.e.get(i5 + 1);
                            jVar.c = cVar2.f2807a;
                            jVar.d = cVar2.e;
                        }
                        arrayList.add(jVar);
                    }
                    asusYellowPageIndexFragment.d.notifyDataSetChanged();
                    if (asusYellowPageIndexFragment.c != null && asusYellowPageIndexFragment.c.isShowing()) {
                        asusYellowPageIndexFragment.c.dismiss();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static boolean a(String[] strArr, String str, q[] qVarArr, String[] strArr2) {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= strArr.length) {
                break;
            } else if (qVarArr[i] != null || !str.startsWith(strArr[i])) {
                i++;
            } else {
                int length = strArr[i].length() / 2;
                qVarArr[i] = new q();
                if (length == 1) {
                    qVarArr[i].f2866a = strArr2[0];
                    qVarArr[i].e = qVarArr[i].f2866a;
                } else if (length == 2) {
                    qVarArr[i].f2866a = strArr2[0];
                    qVarArr[i].f2867b = strArr2[1];
                    qVarArr[i].e = qVarArr[i].f2867b;
                } else {
                    qVarArr[i].f2866a = strArr2[0];
                    qVarArr[i].f2867b = strArr2[1];
                    qVarArr[i].c = strArr2[2];
                    qVarArr[i].e = qVarArr[i].c;
                }
                qVarArr[i].d = strArr[i];
                z = true;
            }
        }
        return z;
    }

    @Override // com.asus.contacts.yellowpage.utils.d.a
    public final void a() {
        if (d.a() == 0) {
            Log.d(this.f2780a, "onStatusChanged: IDLE");
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.asus.contacts.yellowpage.AsusYellowPageIndexFragment.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (AsusYellowPageIndexFragment.this.getActivity() != null && !AsusYellowPageIndexFragment.this.getActivity().isDestroyed()) {
                            new a(AsusYellowPageIndexFragment.this.getActivity().getContentResolver()).startQuery(10001, null, a.C0080a.f2861b, null, null, null, null);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        } else if (d.a() == 1) {
            Log.d(this.f2780a, "onStatusChanged: Running");
        } else {
            Log.e(this.f2780a, "onStatusChanged: Undefined");
        }
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131427743, viewGroup, false);
        this.h = (SearchView) inflate.findViewById(2131297252);
        this.h.setFocusable(false);
        this.h.setOnQueryTextListener(this.r);
        this.h.setSearchableInfo(((SearchManager) getActivity().getSystemService("search")).getSearchableInfo(getActivity().getComponentName()));
        this.l = (Spinner) inflate.findViewById(2131297008);
        this.m = (ListView) inflate.findViewById(2131296995);
        this.l.setAdapter((SpinnerAdapter) new n(getActivity(), getActivity().getResources().getStringArray(2130837542)));
        this.l.setOnItemSelectedListener(this.n);
        this.d = new k(getActivity(), this, layoutInflater);
        this.m.setAdapter((ListAdapter) this.d);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onPause() {
        if (this.o != null) {
            this.o.removeUpdates(this.q);
            this.o = null;
        }
        d.b(this);
        if (this.c != null && this.c.isShowing()) {
            this.c.dismiss();
        }
        super.onPause();
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        int a2 = com.asus.contacts.yellowpage.utils.c.a(getActivity(), "key_category_table_version");
        boolean a3 = d.a(getActivity());
        if (d.a() == 1) {
            Log.d(this.f2780a, "CategoryCsvImportEngine isRunning...");
            d.a(this);
            this.c = ProgressDialog.show(getActivity(), null, getString(2131755506), true, true);
            this.c.setCanceledOnTouchOutside(false);
        } else if (a2 == -1 || a3) {
            new b().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, "FromAssets");
            this.c = ProgressDialog.show(getActivity(), null, getString(2131755506), true, true);
            this.c.setCanceledOnTouchOutside(false);
        } else {
            new a(getActivity().getContentResolver()).startQuery(10001, null, a.C0080a.f2861b, null, null, null, null);
        }
        if (PermissionsUtil.hasLocationPermissions(getActivity())) {
            Log.d(this.f2780a, "Location permission granted.");
            if (this.o == null) {
                this.o = (LocationManager) getActivity().getSystemService("location");
            }
            this.j = this.o.isProviderEnabled("gps");
            this.k = this.o.isProviderEnabled("network");
            k kVar = this.d;
            boolean z = this.j;
            boolean z2 = this.k;
            kVar.c = z;
            kVar.d = z2;
            if (this.j || this.k) {
                boolean z3 = this.j;
                boolean z4 = this.k;
                if (z3) {
                    Log.d(this.f2780a, "GPS is enabled...");
                    this.o.requestLocationUpdates("gps", 500L, 0.0f, this.q);
                } else {
                    Log.d(this.f2780a, "GPS is disabled...");
                }
                if (z4) {
                    Log.d(this.f2780a, "NETWORK is enabled...");
                    this.o.requestLocationUpdates("network", 500L, 0.0f, this.q);
                } else {
                    Log.d(this.f2780a, "NETWORK is disabled...");
                }
            }
            this.p = null;
            Location lastKnownLocation = this.o.getLastKnownLocation("gps");
            Location lastKnownLocation2 = this.o.getLastKnownLocation("network");
            if (lastKnownLocation != null) {
                Log.d(this.f2780a, "Last GPS location: " + lastKnownLocation.getLongitude() + ", " + lastKnownLocation.getLatitude());
            }
            if (lastKnownLocation2 != null) {
                Log.d(this.f2780a, "Last Network location: " + lastKnownLocation2.getLongitude() + ", " + lastKnownLocation2.getLatitude());
            }
            if (lastKnownLocation == null || lastKnownLocation2 == null) {
                if (lastKnownLocation != null) {
                    this.p = lastKnownLocation;
                }
                if (lastKnownLocation2 != null) {
                    this.p = lastKnownLocation2;
                }
            } else {
                if (lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
                    lastKnownLocation2 = lastKnownLocation;
                }
                this.p = lastKnownLocation2;
            }
            if (this.p != null) {
                com.asus.contacts.yellowpage.utils.c.a(getActivity(), "extra_user_latitude", String.valueOf(this.p.getLatitude()));
                com.asus.contacts.yellowpage.utils.c.a(getActivity(), "extra_user_longitude", String.valueOf(this.p.getLongitude()));
            } else {
                com.asus.contacts.yellowpage.utils.c.a(getActivity(), "extra_user_latitude", (String) null);
                com.asus.contacts.yellowpage.utils.c.a(getActivity(), "extra_user_longitude", (String) null);
            }
        } else {
            Log.d(this.f2780a, "Location permission not granted.");
        }
        this.i = com.asus.contacts.yellowpage.utils.c.a(getActivity(), "key_yellow_page_location_index");
        if (this.i != -1) {
            this.l.setSelection(this.i);
        }
    }
}
