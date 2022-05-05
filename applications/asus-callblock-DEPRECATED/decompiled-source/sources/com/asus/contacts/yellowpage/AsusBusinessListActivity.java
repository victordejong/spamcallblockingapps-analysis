package com.asus.contacts.yellowpage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.Toast;
import com.android.contacts.activities.RequestFineLocationPermissionsAcitvity;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.volley.u;
import com.asus.contacts.yellowpage.promotion.a;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.contacts.yellowpage.utils.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusBusinessListActivity.class */
public class AsusBusinessListActivity extends Activity implements f {
    private Location A;

    /* renamed from: b  reason: collision with root package name */
    b f2764b;
    private String g;
    private String h;
    private String i;
    private String j;
    private boolean l;
    private int m;
    private SearchView v;
    private ListView w;
    private View x;
    private ProgressDialog y;
    private LocationManager z;

    /* renamed from: a  reason: collision with root package name */
    public final String f2763a = AsusBusinessListActivity.class.getSimpleName();
    private final int c = 20;
    private int d = 0;
    private int e = 0;
    private int f = 1;
    private boolean k = false;
    private boolean n = false;
    private boolean o = false;
    private boolean p = true;
    private ArrayList<String> q = new ArrayList<>();
    private ArrayList<a> r = new ArrayList<>();
    private ArrayList<a> s = new ArrayList<>();
    private ArrayList<a> t = new ArrayList<>();
    private ArrayList<a> u = new ArrayList<>();
    private LocationListener B = new LocationListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.2
        @Override // android.location.LocationListener
        public final void onLocationChanged(Location location) {
            AsusBusinessListActivity.this.A = location;
            Log.d(AsusBusinessListActivity.this.f2763a, "[onLocationChanged] Longitude: " + AsusBusinessListActivity.this.A.getLongitude() + ", Latitude: " + AsusBusinessListActivity.this.A.getLatitude());
        }

        @Override // android.location.LocationListener
        public final void onProviderDisabled(String str) {
            Log.d(AsusBusinessListActivity.this.f2763a, "[onProviderDisabled] Provider: " + str + " was disabled");
        }

        @Override // android.location.LocationListener
        public final void onProviderEnabled(String str) {
            Log.d(AsusBusinessListActivity.this.f2763a, "[onProviderEnabled] Provider: " + str + " was enabled");
        }

        @Override // android.location.LocationListener
        public final void onStatusChanged(String str, int i, Bundle bundle) {
            switch (i) {
                case 0:
                    Log.d(AsusBusinessListActivity.this.f2763a, "[onStatusChanged] OUT_OF_SERVICE");
                    return;
                case 1:
                    Log.d(AsusBusinessListActivity.this.f2763a, "[onStatusChanged] TEMPORARILY_UNAVAILABLE");
                    return;
                case 2:
                    Log.d(AsusBusinessListActivity.this.f2763a, "[onStatusChanged] Provider: " + str);
                    return;
                default:
                    return;
            }
        }
    };
    private SearchView.OnQueryTextListener C = new SearchView.OnQueryTextListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.3
        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextChange(String str) {
            AsusBusinessListActivity.this.h = str;
            if (AsusBusinessListActivity.this.k) {
                int a2 = c.a(AsusBusinessListActivity.this.getApplication(), "key_distance_filter_level");
                int i = a2;
                if (a2 == -1) {
                    AsusDistanceFilterActivity.a(AsusBusinessListActivity.this.getApplication());
                    i = c.a(AsusBusinessListActivity.this.getApplication(), "key_distance_filter_level");
                }
                AsusBusinessListActivity.this.t = b.a(AsusDistanceFilterActivity.a(i), AsusBusinessListActivity.this.u);
                AsusBusinessListActivity.this.t = b.a(str.toLowerCase(), AsusBusinessListActivity.this.t);
            } else {
                AsusBusinessListActivity.this.t = b.a(str.toLowerCase(), AsusBusinessListActivity.this.u);
            }
            AsusBusinessListActivity.this.r.clear();
            AsusBusinessListActivity.this.r.addAll(AsusBusinessListActivity.this.t);
            AsusBusinessListActivity.this.f2764b.notifyDataSetChanged();
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public final boolean onQueryTextSubmit(String str) {
            return true;
        }
    };

    private void a(Intent intent) {
        if ("android.intent.action.SEARCH".equals(intent.getAction())) {
            this.d = 1;
            this.g = intent.getStringExtra("query");
            this.k = intent.getBooleanExtra("extra_is_near_by", this.k);
            this.l = intent.getBooleanExtra("extra_is_promotion", false);
            this.m = intent.getIntExtra("extra_promotion_type", -1);
            this.q.clear();
            c.a(this.g, this.q);
            setTitle(this.g);
            if (!(this.g == null || this.g.isEmpty() || this.v == null)) {
                this.v.setQuery(this.g, true);
                this.v.setQuery(BuildConfig.FLAVOR, false);
                this.v.clearFocus();
            }
            if (!this.l) {
                b.a((Activity) this, "Search Result List");
                b.b((Activity) this, "Search Result List");
            } else if (this.m == 0) {
                a.c(this, 0);
                a.b(this, 0);
                b.a(this, "Promotion (Lunch Notify)", "Click promotion", (String) null);
                b.b((Activity) this, "Search Result List");
            } else if (this.m == 2) {
                a.c(this, 2);
                a.b(this, 2);
                b.a(this, "Promotion (Lunch Notify for hot weather)", "Click promotion", (String) null);
                b.b((Activity) this, "Search Result List");
            } else if (this.m == 3) {
                a.c(this, 3);
                a.b(this, 3);
                b.a(this, "Promotion (Coffee break)", "Click promotion", (String) null);
                b.b((Activity) this, "Search Result List");
            } else if (this.m == 5) {
                a.c(this, 5);
                a.b(this, 5);
                b.a(this, "Promotion (Valentines day)", "Click promotion", (String) null);
                b.b((Activity) this, "Search Result List");
            }
        } else if ("action.asus.yellowpage.search_by_category".equals(intent.getAction())) {
            this.d = 0;
            this.i = intent.getExtras().getString("extra_category");
            this.j = intent.getExtras().getString("extra_parent_code");
            this.k = intent.getBooleanExtra("extra_is_near_by", this.k);
            this.l = intent.getBooleanExtra("extra_is_promotion", false);
            this.m = intent.getIntExtra("extra_promotion_type", -1);
            if (this.j == null || TextUtils.isEmpty(this.j)) {
                Log.e(this.f2763a, "mCategoryCode is null or an empty value...");
                finish();
                return;
            }
            setTitle(this.i);
            if (!this.l) {
                b.a((Activity) this, this.i);
                b.b((Activity) this, "Business List");
            } else if (this.m == 1) {
                a.c(this, 1);
                a.b(this, 1);
                b.a(this, "Promotion (Lunch Notify for cold weather)", "Click promotion", (String) null);
                b.b((Activity) this, "Business List");
            } else if (this.m == 4) {
                a.c(this, 4);
                a.b(this, 4);
                b.a(this, "Promotion (Coffee break)", "Click promotion", (String) null);
                b.b((Activity) this, "Business List");
            } else if (this.m == 5) {
                a.c(this, 5);
                a.b(this, 5);
                b.a(this, "Promotion (Valentines day)", "Click promotion", (String) null);
                b.b((Activity) this, "Business List");
            }
        } else {
            Log.e(this.f2763a, "Not matched action by the given intent...");
            finish();
        }
    }

    @Override // com.asus.contacts.yellowpage.f
    public final void a(int i, ArrayList<a> arrayList, u uVar) {
        switch (i) {
            case 1:
                Log.d(this.f2763a, "onQueryComplete: RESULT_CODE_SUCCESS");
                this.y.dismiss();
                this.f++;
                this.n = false;
                this.x.setVisibility(4);
                if (arrayList != null) {
                    if (this.k) {
                        this.s.addAll(arrayList);
                        if (this.s.size() == 0) {
                            this.r.clear();
                            this.f2764b.notifyDataSetChanged();
                            Toast.makeText(getApplication(), getString(2131755906), 0).show();
                        } else {
                            this.u = this.f2764b.a(this.s);
                            Collections.sort(this.u, new Comparator<a>() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.4
                                @Override // java.util.Comparator
                                public final /* bridge */ /* synthetic */ int compare(a aVar, a aVar2) {
                                    return (int) (aVar.k - aVar2.k);
                                }
                            });
                            int a2 = c.a(getApplication(), "key_distance_filter_level");
                            int i2 = a2;
                            if (a2 == -1) {
                                AsusDistanceFilterActivity.a(getApplication());
                                i2 = c.a(getApplication(), "key_distance_filter_level");
                            }
                            this.t = b.a(AsusDistanceFilterActivity.a(i2), this.u);
                            this.r.clear();
                            this.r.addAll(this.t);
                            this.f2764b.notifyDataSetChanged();
                            if (this.r.size() == 0) {
                                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                                builder.setMessage(2131756077);
                                builder.setPositiveButton(getResources().getString(17039370), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.5
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i3) {
                                        dialogInterface.dismiss();
                                        int a3 = c.a(AsusBusinessListActivity.this.getApplication(), "key_distance_filter_level");
                                        do {
                                            a3++;
                                            AsusBusinessListActivity.this.t = b.a(AsusDistanceFilterActivity.a(a3), AsusBusinessListActivity.this.u);
                                            AsusBusinessListActivity.this.r.addAll(AsusBusinessListActivity.this.t);
                                            AsusBusinessListActivity.this.f2764b.notifyDataSetChanged();
                                        } while (AsusBusinessListActivity.this.r.size() == 0);
                                    }
                                });
                                builder.setNegativeButton(getResources().getString(17039360), new DialogInterface.OnClickListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.6
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public final void onClick(DialogInterface dialogInterface, int i3) {
                                        dialogInterface.cancel();
                                    }
                                });
                                builder.show();
                            }
                        }
                    } else if (arrayList.size() == 0) {
                        Toast.makeText(getApplication(), getString(2131755906), 0).show();
                    } else {
                        this.r.clear();
                        this.r.addAll(arrayList);
                        this.f2764b.notifyDataSetChanged();
                    }
                    Log.d(this.f2763a, "onQueryComplete: Total size of businessList = " + this.r.size());
                    return;
                }
                return;
            case 2:
                Log.d(this.f2763a, "onQueryComplete: RESULT_CODE_ERROR");
                this.y.dismiss();
                this.n = false;
                this.x.setVisibility(4);
                if (uVar == null || uVar.f2342a == null) {
                    Log.d(this.f2763a, "onQueryComplete: No network connection.");
                    Toast.makeText(getApplication(), getString(2131755899), 0).show();
                    return;
                }
                Log.d(this.f2763a, "onQueryComplete: Error code: " + uVar.f2342a.f2300a + ", info: " + new String(uVar.f2342a.f2301b));
                if (uVar.f2342a.f2300a == 503) {
                    Toast.makeText(getApplication(), getString(2131756097), 0).show();
                    return;
                } else if (uVar.f2342a.f2300a == 400) {
                    Toast.makeText(getApplication(), getString(2131756097), 0).show();
                    return;
                } else {
                    Toast.makeText(getApplication(), getString(2131755899), 0).show();
                    return;
                }
            case 3:
                Log.d(this.f2763a, "onQueryComplete: RESULT_CODE_SERVICE_TEMPORARY_DISABLE");
                this.y.dismiss();
                this.n = false;
                this.x.setVisibility(4);
                Toast.makeText(getApplication(), getString(2131756099), 1).show();
                return;
            default:
                Log.e(this.f2763a, "onQueryComplete: resultcode = " + i);
                return;
        }
    }

    @Override // com.asus.contacts.yellowpage.f
    public final void a(ArrayList<a> arrayList) {
        if (arrayList != null) {
            if (arrayList.size() != 0) {
                this.s.addAll(arrayList);
                this.u = this.f2764b.a(this.s);
                if (this.u.size() < this.f * 20) {
                    this.e = this.s.size();
                    e.a().a(this, this.d, this.j, this.q, this.k, this.e);
                    return;
                }
            }
            a(1, this.u, null);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!com.asus.a.a.h(this)) {
            finishAndRemoveTask();
            return;
        }
        setContentView(2131427734);
        boolean isCarMode = PhoneCapabilityTester.isCarMode(getApplicationContext());
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            if (isCarMode) {
                setRequestedOrientation(-1);
            } else {
                setRequestedOrientation(1);
            }
        }
        AsusActionBarUtils.initActionbarDisplayOptions(getActionBar());
        if (bundle != null) {
            this.d = bundle.getInt("extra_action_mode");
            this.g = bundle.getString("query");
            this.i = bundle.getString("extra_category");
            this.j = bundle.getString("extra_parent_code");
            this.k = bundle.getBoolean("extra_is_near_by");
            this.l = bundle.getBoolean("extra_is_promotion");
            this.m = bundle.getInt("extra_promotion_type");
            c.a(this.g, this.q);
        } else {
            a(getIntent());
        }
        this.v = (SearchView) findViewById(2131297252);
        this.v.setFocusable(false);
        this.v.setOnQueryTextListener(this.C);
        this.v.setSearchableInfo(((SearchManager) getSystemService("search")).getSearchableInfo(getComponentName()));
        this.f2764b = new b(this, this.r);
        b bVar = this.f2764b;
        String str = this.i;
        String str2 = this.j;
        bVar.f2801b = str;
        bVar.c = str2;
        this.f2764b.f2800a = this.k;
        this.w = (ListView) findViewById(2131296995);
        this.x = LayoutInflater.from(this).inflate(2131427735, (ViewGroup) null);
        this.w.addFooterView(this.x, null, false);
        this.x.setVisibility(4);
        this.w.setAdapter((ListAdapter) this.f2764b);
        this.w.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessListActivity.1
            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
                AsusBusinessListActivity.this.o = false;
                if (i + i2 == i3 && i3 > 1) {
                    AsusBusinessListActivity.this.e = AsusBusinessListActivity.this.s.size();
                    AsusBusinessListActivity.this.o = true;
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public final void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 0 && AsusBusinessListActivity.this.o && !AsusBusinessListActivity.this.n && !AsusBusinessListActivity.this.k && TextUtils.isEmpty(AsusBusinessListActivity.this.h)) {
                    AsusBusinessListActivity.this.n = true;
                    AsusBusinessListActivity.this.x.setVisibility(0);
                    e.a().a(AsusBusinessListActivity.this, AsusBusinessListActivity.this.d, AsusBusinessListActivity.this.j, AsusBusinessListActivity.this.q, AsusBusinessListActivity.this.k, AsusBusinessListActivity.this.e);
                }
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater menuInflater = getMenuInflater();
        if (!this.k) {
            return true;
        }
        menuInflater.inflate(2131492910, menu);
        return true;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        e a2 = e.a();
        if (a2.f2815b != null && !a2.f2815b.i) {
            a2.f2815b.i = true;
            a2.f2815b = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        a(intent);
        this.e = 0;
        this.f = 1;
        this.p = true;
        this.s.clear();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z = true;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                break;
            case 2131297106:
                ImplicitIntentsUtil.startActivityInApp(this, new Intent("android.intent.action.DISTANCE_FILTER"));
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    public void onPause() {
        if (this.k && this.z != null) {
            this.z.removeUpdates(this.B);
            this.z = null;
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        if (this.k) {
            if (Build.VERSION.SDK_INT < 23 || !RequestFineLocationPermissionsAcitvity.startPermissionActivity(this, true)) {
                if (!this.u.isEmpty()) {
                    int i = AsusDistanceFilterActivity.f2774a;
                    int i2 = i;
                    if (i == -1) {
                        AsusDistanceFilterActivity.a(getApplication());
                        i2 = AsusDistanceFilterActivity.f2774a;
                    }
                    this.t = b.a(AsusDistanceFilterActivity.a(i2), this.u);
                    this.r.clear();
                    this.r.addAll(this.t);
                    this.f2764b.notifyDataSetChanged();
                    if (this.r.size() == 0) {
                        getFragmentManager().beginTransaction();
                        if (getFragmentManager().findFragmentByTag(getResources().getString(2131755612)) == null) {
                            m.a("event_no_data_nearby").show(getFragmentManager(), getResources().getString(2131755612));
                        }
                    }
                }
                if (this.z == null) {
                    this.z = (LocationManager) getSystemService("location");
                }
                boolean isProviderEnabled = this.z.isProviderEnabled("gps");
                boolean isProviderEnabled2 = this.z.isProviderEnabled("network");
                if (isProviderEnabled || isProviderEnabled2) {
                    if (isProviderEnabled) {
                        Log.d(this.f2763a, "GPS is enabled...");
                        this.z.requestLocationUpdates("gps", 500L, 0.0f, this.B);
                    } else {
                        Log.d(this.f2763a, "GPS is disabled...");
                    }
                    if (isProviderEnabled2) {
                        Log.d(this.f2763a, "NETWORK is enabled...");
                        this.z.requestLocationUpdates("network", 500L, 0.0f, this.B);
                    } else {
                        Log.d(this.f2763a, "NETWORK is disabled...");
                    }
                    this.A = null;
                    Location lastKnownLocation = this.z.getLastKnownLocation("gps");
                    Location lastKnownLocation2 = this.z.getLastKnownLocation("network");
                    if (lastKnownLocation != null) {
                        Log.d(this.f2763a, "Last GPS location: " + lastKnownLocation.getLongitude() + ", " + lastKnownLocation.getLatitude());
                    }
                    if (lastKnownLocation2 != null) {
                        Log.d(this.f2763a, "Last Network location: " + lastKnownLocation2.getLongitude() + ", " + lastKnownLocation2.getLatitude());
                    }
                    if (lastKnownLocation == null || lastKnownLocation2 == null) {
                        if (lastKnownLocation != null) {
                            this.A = lastKnownLocation;
                        }
                        if (lastKnownLocation2 != null) {
                            this.A = lastKnownLocation2;
                        }
                    } else {
                        if (lastKnownLocation.getTime() > lastKnownLocation2.getTime()) {
                            lastKnownLocation2 = lastKnownLocation;
                        }
                        this.A = lastKnownLocation2;
                    }
                    if (this.A != null) {
                        c.a(this, "extra_user_latitude", String.valueOf(this.A.getLatitude()));
                        c.a(this, "extra_user_longitude", String.valueOf(this.A.getLongitude()));
                    } else {
                        c.a(this, "extra_user_latitude", (String) null);
                        c.a(this, "extra_user_longitude", (String) null);
                        getFragmentManager().beginTransaction();
                        if (getFragmentManager().findFragmentByTag(getResources().getString(2131755612)) == null) {
                            m.a("event_position_unknown").show(getFragmentManager(), getResources().getString(2131755612));
                        }
                    }
                    if (this.p) {
                        this.p = false;
                        this.y = ProgressDialog.show(this, null, getString(2131755507), true, true);
                        this.y.setCanceledOnTouchOutside(false);
                        this.r.clear();
                        e.a().a(this, this.d, this.j, this.q, this.k, this.e);
                    }
                    if (this.A == null) {
                        this.p = true;
                    }
                } else {
                    getFragmentManager().beginTransaction();
                    if (getFragmentManager().findFragmentByTag(getResources().getString(2131755612)) == null) {
                        m.a("event_location_service_unavailable").show(getFragmentManager(), getResources().getString(2131755612));
                    }
                }
            }
        } else if (this.p) {
            this.p = false;
            this.y = ProgressDialog.show(this, null, getString(2131755507), true, true);
            this.y.setCanceledOnTouchOutside(false);
            this.r.clear();
            e.a().a(this, this.d, this.j, this.q, this.k, this.e);
        }
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putInt("extra_action_mode", this.d);
            bundle.putString("query", this.g);
            bundle.putString("extra_category", this.i);
            bundle.putString("extra_parent_code", this.j);
            bundle.putBoolean("extra_is_near_by", this.k);
        }
    }
}
