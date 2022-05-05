package com.android.contacts.quickcontact;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.k;
import com.android.contacts.quickcontact.f;
import com.android.contacts.quickcontact.j;
import com.android.contacts.util.Constants;
import com.android.contacts.util.ImplicitIntentsUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.contacts.util.StopWatch;
import com.android.contacts.util.StructuredPostalUtils;
import com.android.vcard.VCardConfig;
import com.asus.a.a;
import com.asus.updatesdk.BuildConfig;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity.class */
public class QuickBusinessActivity extends Activity {
    private FloatingChildLayout j;
    private View k;
    private ViewGroup l;
    private HorizontalScrollView m;
    private View n;
    private View o;
    private ImageButton p;
    private ViewPager q;
    private LinearLayout r;
    private b v;
    private a.c d = new a.c();
    private List<a.e> e = new ArrayList();
    private List<a.f> f = new ArrayList();
    private List<String> g = new ArrayList();
    private boolean h = false;

    /* renamed from: a  reason: collision with root package name */
    boolean f2049a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f2050b = false;
    boolean c = false;
    private List<String> i = new ArrayList();
    private com.android.contacts.quickcontact.e s = new com.android.contacts.quickcontact.e();
    private com.android.contacts.quickcontact.d t = new com.android.contacts.quickcontact.d();
    private HashMap<String, String> u = new HashMap<>();
    private int w = 0;
    private StopWatch x = StopWatch.getNullStopWatch();
    private final View.OnClickListener y = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.7
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            QuickBusinessActivity.this.q.setCurrentItem(QuickBusinessActivity.this.i.indexOf((String) ((CheckableImageView) view).getTag()), true);
        }
    };
    private final f.a z = new f.a() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.8
        @Override // com.android.contacts.quickcontact.f.a
        public final void a() {
            if (QuickBusinessActivity.this.q.getBackground() == null) {
                QuickBusinessActivity.a(QuickBusinessActivity.this);
            }
        }

        @Override // com.android.contacts.quickcontact.f.a
        public final void a(final Intent intent) {
            new Handler().post(new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent intent2 = intent;
                        intent2.putExtra("hide_number", com.android.contacts.dialpad.b.e);
                        com.android.contacts.dialpad.b.e = false;
                        ImplicitIntentsUtil.startActivityOutsideApp(QuickBusinessActivity.this, intent2);
                    } catch (ActivityNotFoundException e2) {
                        Toast.makeText(QuickBusinessActivity.this, 2131756042, 0).show();
                    }
                    QuickBusinessActivity.this.a(false);
                }
            });
        }

        @Override // com.android.contacts.quickcontact.f.a
        public final void b(final Intent intent) {
            new Handler().post(new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.8.2

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ boolean f2064b = true;

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent intent2 = intent;
                        intent2.putExtra("hide_number", com.android.contacts.dialpad.b.e);
                        if (this.f2064b) {
                            intent2.putExtra("android.telecom.extra.START_CALL_WITH_VIDEO_STATE", 3);
                        }
                        com.android.contacts.dialpad.b.e = false;
                        ImplicitIntentsUtil.startActivityOutsideApp(QuickBusinessActivity.this, intent2);
                    } catch (ActivityNotFoundException e2) {
                        Toast.makeText(QuickBusinessActivity.this, 2131756042, 0).show();
                    }
                    QuickBusinessActivity.this.a(false);
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.contacts.quickcontact.QuickBusinessActivity$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$5.class */
    public final class AnonymousClass5 implements Runnable {
        AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SchedulingUtils.doAfterDraw(QuickBusinessActivity.this.j, new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickBusinessActivity.this.finish();
                            QuickBusinessActivity.this.overridePendingTransition(0, 0);
                        }
                    }, 60L);
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$a.class */
    private final class a extends ViewPager.h {
        private a() {
        }

        /* synthetic */ a(QuickBusinessActivity quickBusinessActivity, byte b2) {
            this();
        }

        private void a(int i, float f) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) QuickBusinessActivity.this.n.getLayoutParams();
            layoutParams.leftMargin = (int) (layoutParams.width * (i + f));
            QuickBusinessActivity.this.n.setLayoutParams(layoutParams);
        }

        @Override // android.support.v4.view.ViewPager.h, android.support.v4.view.ViewPager.e
        public final void onPageScrolled(int i, float f, int i2) {
            a(i, f);
        }

        @Override // android.support.v4.view.ViewPager.h, android.support.v4.view.ViewPager.e
        public final void onPageSelected(int i) {
            CheckableImageView b2 = QuickBusinessActivity.b(QuickBusinessActivity.this, i);
            QuickBusinessActivity.this.m.requestChildRectangleOnScreen(b2, new Rect(0, 0, b2.getWidth(), b2.getHeight()), false);
            a(i, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$b.class */
    public final class b extends android.support.v13.app.b {
        public b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v13.app.b
        public final Fragment a(int i) {
            f fVar = new f();
            String str = (String) QuickBusinessActivity.this.i.get(i);
            fVar.f2095a = QuickBusinessActivity.this.s.get(str);
            fVar.f2096b = QuickBusinessActivity.this.t.get(str);
            fVar.c = str;
            fVar.a();
            return fVar;
        }

        @Override // android.support.v4.view.p
        public final int getCount() {
            QuickBusinessActivity.this.w = QuickBusinessActivity.this.i.size();
            return QuickBusinessActivity.this.w;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$c.class */
    private final class c extends AsyncTask<String, Void, String> {
        c() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ String doInBackground(String[] strArr) {
            String str = strArr[0];
            QuickBusinessActivity.this.e.clear();
            QuickBusinessActivity.this.f.clear();
            QuickBusinessActivity.this.e = com.asus.a.a.b(QuickBusinessActivity.this.getApplicationContext(), str);
            QuickBusinessActivity.this.f = com.asus.a.a.c(QuickBusinessActivity.this.getApplicationContext(), str);
            return BuildConfig.FLAVOR;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(String str) {
            if (QuickBusinessActivity.this.e != null || QuickBusinessActivity.this.f != null) {
                Log.d("QuickBusinessContact", "update business card");
                SchedulingUtils.doAfterLayout(QuickBusinessActivity.this.j, new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickBusinessActivity.this.j.a();
                    }
                });
                QuickBusinessActivity.this.a(QuickBusinessActivity.this.d, (List<a.e>) QuickBusinessActivity.this.e, (List<a.f>) QuickBusinessActivity.this.f, true);
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$d.class */
    public final class d extends AsyncTask<a.c, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private ImageView f2070b;
        private Context c;

        d(Context context, ImageView imageView) {
            this.f2070b = imageView;
            this.c = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(a.c[] cVarArr) {
            return com.asus.a.a.a(this.c, cVarArr[0]);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap2 != null) {
                super.onPostExecute(bitmap2);
                if (this.f2070b != null) {
                    this.f2070b.setImageBitmap(bitmap2);
                }
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickBusinessActivity$e.class */
    private final class e extends AsyncTask<String, Void, a.c> {
        e() {
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ a.c doInBackground(String[] strArr) {
            a.c cVar;
            String str = strArr[0];
            Log.d("QuickBusinessContact", "queryTouchpadTask");
            if (!com.asus.a.a.d(QuickBusinessActivity.this.getApplicationContext()) || str == null) {
                cVar = null;
            } else {
                cVar = com.asus.a.a.a(QuickBusinessActivity.this.getApplicationContext(), str, "13");
                Log.d("QuickBusinessContact", "queryTouchpadTask info.tagstatus:" + cVar.l);
            }
            return cVar;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(a.c cVar) {
            a.c cVar2 = cVar;
            if (cVar2 != null) {
                Log.d("QuickBusinessContact", "update UnKnown Contacts card");
                if (!TextUtils.isEmpty(cVar2.f2356b)) {
                    QuickBusinessActivity.this.d.f2356b = cVar2.f2356b;
                }
                QuickBusinessActivity.this.d.d = cVar2.d;
                QuickBusinessActivity.this.d.c = cVar2.c;
                QuickBusinessActivity.this.d.l = cVar2.l;
                QuickBusinessActivity.this.h = QuickBusinessActivity.this.d.l != 4;
                SchedulingUtils.doAfterLayout(QuickBusinessActivity.this.j, new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.e.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickBusinessActivity.this.j.a();
                    }
                });
            }
            QuickBusinessActivity.this.a(QuickBusinessActivity.this.d, (List<a.e>) QuickBusinessActivity.this.e, (List<a.f>) QuickBusinessActivity.this.f, true);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    static /* synthetic */ void a(QuickBusinessActivity quickBusinessActivity) {
        if (quickBusinessActivity.j.c()) {
            quickBusinessActivity.a(true);
        }
    }

    private void a(a.c cVar, List<a.f> list) {
        float f;
        LinearLayout linearLayout = (LinearLayout) this.k.findViewById(2131297215);
        TextView textView = (TextView) this.k.findViewById(2131297147);
        TextView textView2 = (TextView) this.k.findViewById(2131297216);
        TextView textView3 = (TextView) this.k.findViewById(2131296542);
        RatingBar ratingBar = (RatingBar) this.k.findViewById(2131297217);
        ((LayerDrawable) ratingBar.getProgressDrawable()).getDrawable(2).setColorFilter(-30208, PorterDuff.Mode.SRC_ATOP);
        boolean z = false;
        int i = 0;
        this.g.clear();
        if (list == null || list.size() <= 0) {
            f = 0.0f;
        } else {
            float f2 = 0.0f;
            for (a.f fVar : list) {
                float f3 = f2 + fVar.f2362b;
                f2 = f3;
                if (fVar.f2361a != null) {
                    this.g.add(fVar.f2361a);
                    f2 = f3;
                }
            }
            f = f2 / list.size();
            i = this.g.size();
            if (f > 0.0f) {
                z = true;
            }
        }
        if (z) {
            textView.setVisibility(8);
            linearLayout.setVisibility(0);
            textView2.setTextColor(-30208);
            textView2.setText(String.valueOf(f));
            ratingBar.setRating(f);
            textView3.setText(String.format(getString(2131755254), String.valueOf(i)));
            return;
        }
        linearLayout.setVisibility(8);
        if (!this.h && cVar.l != 6) {
            textView.setVisibility(0);
            if (!TextUtils.isEmpty(cVar.f2356b)) {
                textView.setText(cVar.d);
            } else {
                textView.setText(cVar.f2355a);
            }
        } else if (cVar.d != null) {
            textView.setVisibility(0);
            int i2 = 0;
            if (cVar.l == 0) {
                i2 = 2131165777;
            } else if (cVar.l == 1) {
                i2 = 2131165778;
            } else if (cVar.l == 6) {
                i2 = 2131165776;
            }
            textView.setText(cVar.d);
            textView.setBackgroundResource(i2);
            float f4 = getResources().getDisplayMetrics().density;
            int i3 = (int) (8.0f * f4);
            int i4 = (int) (f4 * 2.0f);
            textView.setPadding(i3, i4, i3, i4);
        } else {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.c cVar, List<a.e> list, List<a.f> list2, boolean z) {
        ImageView imageView = (ImageView) this.k.findViewById(2131297153);
        imageView.setTag(true);
        Log.d("QuickBusinessContact", "bindInfo isUnknownCards:" + this.h + ", info._name:" + cVar.f2356b + ", info.tagStatus:" + cVar.l + "info.tagType:" + cVar.c);
        if (this.h) {
            if (TextUtils.isEmpty(cVar.c) || "block".equals(cVar.c)) {
                imageView.setTag(2);
                k.a(this).a(imageView, (Uri) null, imageView.getWidth(), false, false, (k.d) null);
            } else {
                imageView.setImageResource(2131165878);
            }
            if (cVar.l == 6) {
                if (TextUtils.isEmpty(cVar.f2356b)) {
                    a(cVar.d);
                } else {
                    a(cVar.f2356b);
                }
            } else if (cVar.f2355a != null) {
                a(cVar.f2355a);
            } else if (cVar.g != null) {
                a(cVar.g);
            }
        } else {
            if (cVar.l == 4 || cVar.l == 6) {
                imageView.setTag(5);
                k.a(this).a(imageView, (Uri) null, imageView.getWidth(), false, false, (k.d) null);
            }
            if (TextUtils.isEmpty(cVar.f2356b)) {
                a(cVar.d);
            } else {
                a(cVar.f2356b);
            }
        }
        a(cVar, list2);
        i a2 = i.a(this);
        this.i.clear();
        if (cVar.f2355a != null) {
            if (!z) {
                a("action_call", PhoneCapabilityTester.newDialNumberIntent(getApplicationContext(), null, cVar.f2355a, -1), cVar.f2355a, a2);
            }
            this.i.add("action_call");
        }
        if (cVar.g != null) {
            if (!z) {
                a("action_email", new Intent("android.intent.action.SENDTO", Uri.fromParts(Constants.SCHEME_MAILTO, cVar.g, null)), cVar.g, a2);
            }
            this.i.add("action_email");
        }
        if (cVar.h != null) {
            if (!z) {
                a("action_address", StructuredPostalUtils.getViewPostalAddressIntent(cVar.h), cVar.h, a2);
            }
            if (this.s.containsKey("action_address")) {
                this.i.add("action_address");
                this.f2049a = true;
            }
        }
        if (cVar.j != null) {
            if (!z) {
                try {
                    a("action_website", new Intent("android.intent.action.VIEW", Uri.parse(new j(cVar.j).toString())), cVar.i, a2);
                } catch (j.a e2) {
                    e2.printStackTrace();
                }
            }
            this.i.add("action_website");
            this.f2050b = true;
        }
        if (list != null && list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                if ("address".equals(list.get(i).f2359a)) {
                    a("action_address", StructuredPostalUtils.getViewPostalAddressIntent(list.get(i).c), list.get(i).f2360b, a2);
                    if (!this.f2049a) {
                        this.i.add("action_address");
                        this.f2049a = true;
                    }
                } else if ("website".equals(list.get(i).f2359a)) {
                    if (BuildConfig.FLAVOR.equals(list.get(i).f2360b) && BuildConfig.FLAVOR.equals(list.get(i).c)) {
                        try {
                            a("action_website", new Intent("android.intent.action.VIEW", Uri.parse(new j(list.get(i).c).toString())), list.get(i).f2360b, a2);
                            if (!this.f2050b) {
                                this.i.add("action_website");
                                this.f2050b = true;
                            }
                        } catch (j.a e3) {
                            e3.printStackTrace();
                        }
                    }
                } else if ("deal".equals(list.get(i).f2359a) || "coupon".equals(list.get(i).f2359a)) {
                    String str = list.get(i).c;
                    String str2 = list.get(i).d;
                    Intent intent = new Intent();
                    intent.setAction("android.intent.action.ASUS_LAUNCH_COUPON");
                    intent.putExtra("launch_coupon_content_extra", str);
                    intent.putExtra("launch_coupon_trackid_extra", str2);
                    intent.putExtra("launch_coupon_isincallui_extra", false);
                    intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                    a("action_coupon_and_deal", intent, list.get(i).f2360b, a2);
                    if (!this.c) {
                        this.i.add("action_coupon_and_deal");
                        this.c = true;
                    }
                }
            }
        }
        this.l.removeAllViews();
        for (String str3 : this.i) {
            CheckableImageView checkableImageView = (CheckableImageView) getLayoutInflater().inflate(2131427646, this.l, false);
            checkableImageView.setTag(str3);
            Intent intent2 = this.s.get(str3).get(0);
            ResolveInfo resolveInfo = a2.a(intent2).f2117a;
            CharSequence loadLabel = resolveInfo != null ? resolveInfo.loadLabel(a2.f2114a) : null;
            Drawable drawable = a2.a(intent2).f2118b;
            if ("action_coupon_and_deal".equals(str3)) {
                drawable = getResources().getDrawable(2131165768);
            }
            checkableImageView.setChecked(false);
            checkableImageView.setContentDescription(loadLabel);
            checkableImageView.setImageDrawable(drawable);
            checkableImageView.setOnClickListener(this.y);
            this.l.addView(checkableImageView);
        }
        boolean z2 = !this.i.isEmpty();
        this.m.setVisibility(z2 ? 0 : 8);
        this.o.setVisibility(z2 ? 0 : 8);
        this.n.setVisibility(z2 ? 0 : 8);
        this.q.setVisibility(z2 ? 0 : 8);
        if (!(!z2 || this.v == null || this.w == this.i.size())) {
            this.v.notifyDataSetChanged();
        }
        this.j.a(new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.6
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
        if (!this.h) {
            try {
                if (!com.asus.a.a.h(this)) {
                    new d(getApplicationContext(), imageView).execute(this.d);
                }
            } catch (Exception e4) {
                Log.d("CallLogAdapter", "Fail to query company logo Exception = " + e4.toString());
            }
        }
    }

    private void a(CharSequence charSequence) {
        View findViewById = this.k.findViewById(d.b.g);
        if ((findViewById instanceof TextView) && !TextUtils.isEmpty(charSequence)) {
            ((TextView) findViewById).setText(charSequence);
            ((TextView) findViewById).setSelected(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        getLoaderManager().destroyLoader(0);
        if (z) {
            this.j.b();
            if (!this.j.b(new AnonymousClass5())) {
                finish();
                overridePendingTransition(0, 0);
                return;
            }
            return;
        }
        finish();
        overridePendingTransition(0, 0);
    }

    private boolean a(String str, Intent intent, String str2, i iVar) {
        boolean z = false;
        if (iVar.a(intent).f2117a != null) {
            com.android.contacts.quickcontact.e eVar = this.s;
            ArrayList<Intent> arrayList = eVar.get(str);
            ArrayList<Intent> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>();
                eVar.put(str, arrayList2);
            }
            arrayList2.add(intent);
            com.android.contacts.quickcontact.d dVar = this.t;
            ArrayList<String> arrayList3 = dVar.get(str);
            ArrayList<String> arrayList4 = arrayList3;
            if (arrayList3 == null) {
                arrayList4 = new ArrayList<>();
                dVar.put(str, arrayList4);
            }
            arrayList4.add(str2);
            this.u.put(str, str);
            z = true;
        }
        return z;
    }

    static /* synthetic */ CheckableImageView b(QuickBusinessActivity quickBusinessActivity, int i) {
        return (CheckableImageView) quickBusinessActivity.l.getChildAt(i);
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        ((f) fragment).d = this.z;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a(true);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0337 -> B:16:0x021d). Please submit an issue!!! */
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d("QuickBusinessContact", "QuickBusinessContact, onCreate");
        this.x.lap("c");
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        Bundle extras = getIntent().getExtras();
        if (bundle != null) {
            this.h = bundle.getBoolean("extra_isunknown_contacts");
            this.d.f2356b = bundle.getString("extra_business_name");
            this.d.f2355a = bundle.getString("extra_business_number");
            this.d.e = bundle.getString("extra_business_photo_url");
            this.d.o = bundle.getByteArray("extra_business_photo_array");
            this.d.g = bundle.getString("extra_business_email");
            this.d.l = bundle.getInt("extra_tag_status");
            this.d.d = bundle.getString("extra_tag_name");
        } else if (extras != null) {
            Log.d("QuickBusinessContact", "get CallerInfo from bundle");
            this.h = extras.getBoolean("extra_isunknown_contacts");
            this.d.f2356b = extras.getString("extra_business_name");
            this.d.f2355a = extras.getString("extra_business_number");
            this.d.e = extras.getString("extra_business_photo_url");
            this.d.o = extras.getByteArray("extra_business_photo_array");
            this.d.g = extras.getString("extra_business_email");
            this.d.l = extras.getInt("extra_tag_status");
            this.d.d = extras.getString("extra_tag_name");
        } else {
            Log.d("QuickBusinessContact", "info is null");
        }
        this.x.lap("sc");
        Intent intent = getIntent();
        this.x.lap("i");
        this.x.lap("ld");
        getWindow().setFlags(131072, 131072);
        setContentView(2131427636);
        this.x.lap("l");
        this.j = (FloatingChildLayout) findViewById(2131296865);
        this.l = (ViewGroup) findViewById(2131297416);
        this.m = (HorizontalScrollView) findViewById(2131297417);
        this.p = (ImageButton) findViewById(2131297135);
        this.r = (LinearLayout) findViewById(2131296543);
        this.q = (ViewPager) findViewById(2131296975);
        this.n = findViewById(2131297271);
        this.o = findViewById(2131297418);
        this.j.setOnOutsideTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                QuickBusinessActivity.a(QuickBusinessActivity.this);
                return true;
            }
        });
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.asus.a.a.a(QuickBusinessActivity.this, QuickBusinessActivity.this.d.f2355a, QuickBusinessActivity.this.d.f2356b, QuickBusinessActivity.this.d.g);
                QuickBusinessActivity.this.a(false);
            }
        };
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.asus.a.a.a(QuickBusinessActivity.this, QuickBusinessActivity.this.d.f2355a, QuickBusinessActivity.this.d.f2356b, QuickBusinessActivity.this.d.g);
                QuickBusinessActivity.this.a(false);
            }
        };
        this.p.setOnClickListener(onClickListener);
        this.r.setOnClickListener(onClickListener2);
        this.v = new b(getFragmentManager());
        this.q.setAdapter(this.v);
        this.q.setOnPageChangeListener(new a(this, (byte) 0));
        Rect sourceBounds = intent.getSourceBounds();
        if (sourceBounds != null) {
            this.j.setChildTargetScreen(sourceBounds);
        }
        this.k = findViewById(2131297155);
        a(getText(2131755855));
        this.x.lap("v");
        SchedulingUtils.doAfterLayout(this.j, new Runnable() { // from class: com.android.contacts.quickcontact.QuickBusinessActivity.4
            @Override // java.lang.Runnable
            public final void run() {
                QuickBusinessActivity.this.j.a();
            }
        });
        a(this.d, (List<a.e>) null, (List<a.f>) null, false);
        if (!this.h) {
            try {
                if (!com.asus.a.a.h(this)) {
                    new c().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.d.f2355a);
                } else {
                    new e().execute(this.d.f2355a);
                }
            } catch (Exception e2) {
                a(this.d, (List<a.e>) null, (List<a.f>) null, false);
            }
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(1, this, "Action", "BusinessCard", null, null);
        } else {
            try {
                new e().execute(this.d.f2355a);
            } catch (Exception e3) {
                a(this.d, (List<a.e>) null, (List<a.f>) null, false);
            }
        }
        this.x.lap("cf");
        ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", 0, 2130706432);
        ofInt.setDuration(getResources().getInteger(17694720));
        ofInt.setEvaluator(new ArgbEvaluator());
        ofInt.start();
        if (PhoneCapabilityTester.IsSystemApp()) {
            com.android.contacts.a.b.a();
            com.android.contacts.a.b.a(18, (Activity) this, "Unknown quick contact", true);
            return;
        }
        com.android.contacts.a.b.a();
        com.android.contacts.a.b.a(10, (Activity) this, "Unknown quick contact", true);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.d != null) {
            bundle.putString("extra_business_name", this.d.f2356b);
            bundle.putString("extra_business_number", this.d.f2355a);
            bundle.putString("extra_business_photo_url", this.d.e);
            bundle.putByteArray("extra_business_photo_array", this.d.o);
        }
        bundle.putBoolean("extra_isunknown_contacts", this.h);
    }
}
