package com.asus.contacts.yellowpage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.android.contacts.activities.RequestCallPhonePermissionsAcitvity;
import com.android.contacts.util.AsusActionBarUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.a.a;
import com.asus.contacts.yellowpage.ads.BrowseDetailActivity;
import com.asus.contacts.yellowpage.utils.b;
import com.uservoice.uservoicesdk.d;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/AsusBusinessDetailActivity.class */
public class AsusBusinessDetailActivity extends Activity {
    private String A;
    private String B;

    /* renamed from: b  reason: collision with root package name */
    private TextView f2760b;
    private TextView c;
    private TextView d;
    private View e;
    private View f;
    private View g;
    private Spinner h;
    private ImageView i;
    private TextView j;
    private View k;
    private ImageView l;
    private TextView m;
    private TextView n;
    private RatingBar o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String[] w;
    private float x;
    private double y;
    private double z;

    /* renamed from: a  reason: collision with root package name */
    public final String f2759a = AsusBusinessDetailActivity.class.getSimpleName();
    private View.OnClickListener C = new View.OnClickListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessDetailActivity.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int id = view.getId();
            switch (id) {
                case 2131296404:
                    Intent intent = new Intent(view.getContext(), BrowseDetailActivity.class);
                    Bundle bundle = new Bundle();
                    bundle.putString("KEY_TITLE", AsusBusinessDetailActivity.this.p);
                    if (!TextUtils.isEmpty(AsusBusinessDetailActivity.this.A) && AsusBusinessDetailActivity.this.A.equalsIgnoreCase("CHYP") && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.v)) {
                        bundle.putString("KEY_URL", "https://m.iyp.com.tw/" + PhoneNumberUtils.stripSeparators(AsusBusinessDetailActivity.this.v) + "/");
                    } else if (!TextUtils.isEmpty(AsusBusinessDetailActivity.this.A) && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.B)) {
                        bundle.putString("KEY_URL", AsusBusinessDetailActivity.this.B);
                    }
                    intent.putExtras(bundle);
                    view.getContext().startActivity(intent);
                    b.a(view.getContext(), b.EnumC0081b.g, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                    return;
                case 2131296678:
                    if (AsusBusinessDetailActivity.this.v != null && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.v) && !RequestCallPhonePermissionsAcitvity.startPermissionActivity(AsusBusinessDetailActivity.this)) {
                        Intent intent2 = new Intent("android.intent.action.CALL");
                        AsusBusinessDetailActivity.this.v = PhoneNumberUtils.stripSeparators(AsusBusinessDetailActivity.this.v);
                        intent2.setData(Uri.parse("tel:" + AsusBusinessDetailActivity.this.v));
                        view.getContext().startActivity(intent2);
                        b.a(view.getContext(), b.EnumC0081b.e, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                        return;
                    }
                    return;
                case 2131296679:
                    if (AsusBusinessDetailActivity.this.w[2] != null && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.w[2])) {
                        Intent intent3 = new Intent("android.intent.action.CALL");
                        AsusBusinessDetailActivity.this.w[2] = PhoneNumberUtils.stripSeparators(AsusBusinessDetailActivity.this.w[2]);
                        intent3.setData(Uri.parse("tel:" + AsusBusinessDetailActivity.this.w[2]));
                        view.getContext().startActivity(intent3);
                        b.a(view.getContext(), b.EnumC0081b.e, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                        return;
                    }
                    return;
                case 2131296680:
                    if (AsusBusinessDetailActivity.this.w[3] != null && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.w[3])) {
                        Intent intent4 = new Intent("android.intent.action.CALL");
                        AsusBusinessDetailActivity.this.w[3] = PhoneNumberUtils.stripSeparators(AsusBusinessDetailActivity.this.w[3]);
                        intent4.setData(Uri.parse("tel:" + AsusBusinessDetailActivity.this.w[3]));
                        view.getContext().startActivity(intent4);
                        b.a(view.getContext(), b.EnumC0081b.e, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                        return;
                    }
                    return;
                case 2131297105:
                    if (AsusBusinessDetailActivity.this.y != 0.0d && AsusBusinessDetailActivity.this.z != 0.0d) {
                        view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:" + AsusBusinessDetailActivity.this.z + "," + AsusBusinessDetailActivity.this.y + "?z=16&q=" + AsusBusinessDetailActivity.this.r)));
                        b.a(view.getContext(), b.EnumC0081b.f, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                        return;
                    } else if (AsusBusinessDetailActivity.this.r != null && !TextUtils.isEmpty(AsusBusinessDetailActivity.this.r)) {
                        view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + AsusBusinessDetailActivity.this.r)));
                        b.a(view.getContext(), b.EnumC0081b.f, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
                        return;
                    } else {
                        return;
                    }
                default:
                    Log.e(AsusBusinessDetailActivity.this.f2759a, "No matched view for id: " + id);
                    return;
            }
        }
    };
    private AdapterView.OnItemSelectedListener D = new AdapterView.OnItemSelectedListener() { // from class: com.asus.contacts.yellowpage.AsusBusinessDetailActivity.2
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            adapterView.setSelection(i);
            if (i > 0) {
                Intent intent = new Intent("android.intent.action.CALL");
                intent.setData(Uri.parse("tel:" + AsusBusinessDetailActivity.this.w[i]));
                adapterView.getContext().startActivity(intent);
                b.a(adapterView.getContext(), b.EnumC0081b.e, AsusBusinessDetailActivity.this.s, AsusBusinessDetailActivity.this.p);
            }
            if (AsusBusinessDetailActivity.this.h != null) {
                AsusBusinessDetailActivity.this.h.setSelection(0);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    };

    private boolean a() {
        boolean z = false;
        try {
            z = getPackageManager().getPackageInfo("com.google.android.apps.maps", 0).applicationInfo.enabled;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!a.h(this)) {
            finishAndRemoveTask();
            return;
        }
        setContentView(2131427732);
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
            this.p = bundle.getString("extra_company_name");
            this.q = bundle.getString("extra_branch_name");
            this.r = bundle.getString("extra_address");
            this.s = bundle.getString("extra_smlclass");
            this.t = bundle.getString("extra_category");
            this.u = bundle.getString("extra_parent_code");
            this.A = bundle.getString("extra_source");
            this.v = bundle.getString("extra_phone");
            this.w = bundle.getStringArray("extra_merge_phone");
            this.x = bundle.getFloat("extra_rating");
            this.y = bundle.getDouble("extra_longitude");
            this.z = bundle.getDouble("extra_latitude");
            this.A = bundle.getString("extra_source");
            this.B = bundle.getString("extra_url");
        } else {
            Intent intent = getIntent();
            this.p = intent.getExtras().getString("extra_company_name");
            this.q = intent.getExtras().getString("extra_branch_name");
            this.r = intent.getExtras().getString("extra_address");
            this.s = intent.getExtras().getString("extra_smlclass");
            this.t = intent.getExtras().getString("extra_category");
            this.u = intent.getExtras().getString("extra_parent_code");
            this.A = intent.getExtras().getString("extra_source");
            this.v = intent.getExtras().getString("extra_phone");
            this.w = intent.getExtras().getStringArray("extra_merge_phone");
            this.x = intent.getExtras().getFloat("extra_rating");
            this.y = intent.getExtras().getDouble("extra_longitude");
            this.z = intent.getExtras().getDouble("extra_latitude");
            this.A = intent.getExtras().getString("extra_source");
            this.B = intent.getExtras().getString("extra_url");
        }
        this.f2760b = (TextView) findViewById(2131296663);
        this.c = (TextView) findViewById(d.b.f4619b);
        this.d = (TextView) findViewById(2131296633);
        this.h = (Spinner) findViewById(2131296681);
        this.g = (LinearLayout) findViewById(2131296678);
        this.e = (LinearLayout) findViewById(2131296679);
        this.f = (LinearLayout) findViewById(2131296680);
        switch (this.w.length) {
            case 1:
                this.h.setVisibility(8);
                this.e.setVisibility(8);
                this.f.setVisibility(8);
                if (!TextUtils.isEmpty(this.w[0])) {
                    this.i = (ImageView) this.g.findViewById(2131296278);
                    this.i.setImageResource(2131165907);
                    this.j = (TextView) this.g.findViewById(2131296284);
                    this.j.setText(this.w[0]);
                    this.g.setOnClickListener(this.C);
                    break;
                } else {
                    this.g.setVisibility(8);
                    break;
                }
            case 2:
            default:
                this.g.setVisibility(8);
                this.e.setVisibility(8);
                this.f.setVisibility(8);
                if (!TextUtils.isEmpty(this.w[1])) {
                    this.h.setAdapter((SpinnerAdapter) new p(this, this.w));
                    this.h.setOnItemSelectedListener(this.D);
                    break;
                } else {
                    this.h.setVisibility(8);
                    break;
                }
            case 3:
                this.h.setVisibility(8);
                this.f.setVisibility(8);
                if (!TextUtils.isEmpty(this.w[1])) {
                    if (!TextUtils.isEmpty(this.w[2])) {
                        this.i = (ImageView) this.g.findViewById(2131296278);
                        this.i.setImageResource(2131165907);
                        this.j = (TextView) this.g.findViewById(2131296284);
                        this.j.setText(this.w[1]);
                        this.g.setOnClickListener(this.C);
                        this.i = (ImageView) this.e.findViewById(2131296278);
                        this.i.setImageResource(2131165907);
                        this.j = (TextView) this.e.findViewById(2131296284);
                        this.j.setText(this.w[2]);
                        this.e.setOnClickListener(this.C);
                        break;
                    } else {
                        this.e.setVisibility(8);
                        break;
                    }
                } else {
                    this.g.setVisibility(8);
                    break;
                }
            case 4:
                this.h.setVisibility(8);
                if (!TextUtils.isEmpty(this.w[1])) {
                    if (!TextUtils.isEmpty(this.w[2])) {
                        if (!TextUtils.isEmpty(this.w[3])) {
                            this.i = (ImageView) this.g.findViewById(2131296278);
                            this.i.setImageResource(2131165907);
                            this.j = (TextView) this.g.findViewById(2131296284);
                            this.j.setText(this.w[1]);
                            this.g.setOnClickListener(this.C);
                            this.i = (ImageView) this.e.findViewById(2131296278);
                            this.i.setImageResource(2131165907);
                            this.j = (TextView) this.e.findViewById(2131296284);
                            this.j.setText(this.w[2]);
                            this.e.setOnClickListener(this.C);
                            this.i = (ImageView) this.f.findViewById(2131296278);
                            this.i.setImageResource(2131165907);
                            this.j = (TextView) this.f.findViewById(2131296284);
                            this.j.setText(this.w[3]);
                            this.f.setOnClickListener(this.C);
                            break;
                        } else {
                            this.f.setVisibility(8);
                            break;
                        }
                    } else {
                        this.e.setVisibility(8);
                        break;
                    }
                } else {
                    this.g.setVisibility(8);
                    break;
                }
        }
        this.k = (LinearLayout) findViewById(2131297105);
        this.l = (ImageView) this.k.findViewById(2131296278);
        this.m = (TextView) this.k.findViewById(2131296284);
        this.l.setImageResource(2131165901);
        this.n = (TextView) findViewById(2131296404);
        SpannableString spannableString = new SpannableString(getString(2131755116));
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        spannableString.setSpan(new ForegroundColorSpan(-16776961), 0, spannableString.length(), 33);
        this.n.setText(spannableString);
        this.o = (RatingBar) findViewById(2131297214);
        this.o.setRating(this.x);
        if (this.x > 0.0f) {
            this.o.setVisibility(0);
        } else {
            this.o.setVisibility(4);
        }
        this.f2760b.setText(this.r);
        this.c.setText(this.t);
        this.m.setText(getString(2131755117));
        this.k.setOnClickListener(this.C);
        this.n.setOnClickListener(this.C);
        String str = this.A;
        char c = 65535;
        switch (str.hashCode()) {
            case 2068028:
                if (str.equals("CHYP")) {
                    c = 0;
                    break;
                }
                break;
            case 99453287:
                if (str.equals("iPeen")) {
                    c = 1;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.d.setText(getString(2131755508) + " " + getString(2131755379));
                break;
            case 1:
                this.d.setText(getString(2131755508) + " " + getString(2131755716));
                break;
        }
        if (TextUtils.isEmpty(this.q)) {
            setTitle(this.p);
        } else {
            setTitle(this.p + " - " + this.q);
        }
        b.a((Activity) this, this.p);
        b.b((Activity) this, "Detail Page");
        b.a(this, b.EnumC0081b.f2883b, this.s, this.p);
        b.a((Context) this, "Browse Detail Page");
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        boolean z;
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                z = true;
                break;
            default:
                z = super.onOptionsItemSelected(menuItem);
                break;
        }
        return z;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!a()) {
            this.k.setVisibility(8);
        } else {
            this.k.setVisibility(0);
        }
        Log.d(this.f2759a, "mSource=" + this.A + ", mPhoneNumber=" + this.v + ", mUrl=" + this.B);
        if (!TextUtils.isEmpty(this.A) && this.A.equalsIgnoreCase("CHYP") && !TextUtils.isEmpty(this.v)) {
            this.n.setVisibility(0);
        } else if (TextUtils.isEmpty(this.A) || TextUtils.isEmpty(this.B)) {
            this.n.setVisibility(8);
        } else {
            this.n.setVisibility(0);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle != null) {
            bundle.putString("extra_company_name", this.p);
            bundle.putString("extra_branch_name", this.q);
            bundle.putString("extra_address", this.r);
            bundle.putString("extra_smlclass", this.s);
            bundle.putString("extra_category", this.t);
            bundle.putString("extra_parent_code", this.u);
            bundle.putString("extra_source", this.A);
            bundle.putString("extra_phone", this.v);
            bundle.putStringArray("extra_merge_phone", this.w);
            bundle.putFloat("extra_rating", this.x);
            bundle.putDouble("extra_longitude", this.y);
            bundle.putDouble("extra_latitude", this.z);
            bundle.putString("extra_source", this.A);
            bundle.putString("extra_url", this.B);
        }
    }
}
