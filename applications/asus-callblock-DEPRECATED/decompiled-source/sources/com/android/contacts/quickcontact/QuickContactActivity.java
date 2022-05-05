package com.android.contacts.quickcontact;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.LoaderManager;
import android.content.ActivityNotFoundException;
import android.content.ContentUris;
import android.content.Intent;
import android.content.Loader;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.ContactsContract;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.ContactEditorActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.calllog.t;
import com.android.contacts.ezmode.h;
import com.android.contacts.j;
import com.android.contacts.model.a.k;
import com.android.contacts.model.c;
import com.android.contacts.model.d;
import com.android.contacts.model.e;
import com.android.contacts.quickcontact.g;
import com.android.contacts.util.BitmapUtil;
import com.android.contacts.util.CallUtil;
import com.android.contacts.util.Constants;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.DataStatus;
import com.android.contacts.util.DateUtils;
import com.android.contacts.util.ImageViewDrawableSetter;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.contacts.util.StopWatch;
import com.asus.updatesdk.R;
import com.google.a.b.ae;
import com.google.a.b.r;
import com.uservoice.uservoicesdk.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactActivity.class */
public class QuickContactActivity extends Activity {
    private static final List<String> p = r.a("vnd.android.cursor.item/phone_v2", "vnd.android.cursor.item/sip_address", "vnd.android.cursor.item/email_v2");
    private static final List<String> q = r.a("vnd.android.cursor.item/postal-address_v2", "vnd.android.cursor.item/website");

    /* renamed from: a  reason: collision with root package name */
    private Uri f2073a;

    /* renamed from: b  reason: collision with root package name */
    private String[] f2074b;
    private FloatingChildLayout d;
    private View e;
    private ViewGroup f;
    private HorizontalScrollView g;
    private View h;
    private View i;
    private ImageButton j;
    private ViewPager k;
    private d l;
    private b s;
    private ImageButton v;
    private List<String> c = new ArrayList();
    private final ImageViewDrawableSetter m = new ImageViewDrawableSetter();
    private HashMap<String, com.android.contacts.quickcontact.a> n = new HashMap<>();
    private com.android.contacts.quickcontact.b o = new com.android.contacts.quickcontact.b();
    private boolean r = false;
    private int t = 0;
    private StopWatch u = StopWatch.getNullStopWatch();
    private final String w = "android.provider.extra.MODE";
    private LoaderManager.LoaderCallbacks<c> x = new AnonymousClass6();
    private final View.OnClickListener y = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.7
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            QuickContactActivity.this.k.setCurrentItem(QuickContactActivity.this.c.indexOf((String) ((CheckableImageView) view).getTag()), true);
        }
    };
    private final g.a z = new g.a() { // from class: com.android.contacts.quickcontact.QuickContactActivity.8
        @Override // com.android.contacts.quickcontact.g.a
        public final void a() {
            if (QuickContactActivity.this.k.getBackground() == null) {
                QuickContactActivity.a(QuickContactActivity.this);
            }
        }

        @Override // com.android.contacts.quickcontact.g.a
        public final void a(final com.android.contacts.quickcontact.a aVar) {
            new Handler().post(new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.8.2

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ boolean f2089a = false;
                final /* synthetic */ boolean c = true;

                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent g = this.f2089a ? aVar.g() : aVar.f();
                        g.putExtra("hide_number", com.android.contacts.dialpad.b.e);
                        if (this.c) {
                            g.putExtra("android.telecom.extra.START_CALL_WITH_VIDEO_STATE", 3);
                        }
                        com.android.contacts.dialpad.b.e = false;
                        if (!"vnd.android.cursor.item/phone_v2".equals(aVar.c()) || !"android.intent.action.SENDTO".equals(g.getAction()) || TextUtils.isEmpty(aVar.i()) || !t.e(aVar.i())) {
                            CallUtil.startDialActivity(QuickContactActivity.this, g);
                        } else {
                            Toast.makeText(QuickContactActivity.this, 2131756091, 0).show();
                        }
                    } catch (ActivityNotFoundException e) {
                        Toast.makeText(QuickContactActivity.this, 2131756042, 0).show();
                    }
                    QuickContactActivity.this.a(false);
                }
            });
        }

        @Override // com.android.contacts.quickcontact.g.a
        public final void a(final com.android.contacts.quickcontact.a aVar, final boolean z) {
            new Handler().post(new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.8.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Intent g = z ? aVar.g() : aVar.f();
                        g.putExtra("hide_number", com.android.contacts.dialpad.b.e);
                        com.android.contacts.dialpad.b.e = false;
                        if (!"vnd.android.cursor.item/phone_v2".equals(aVar.c()) || !"android.intent.action.SENDTO".equals(g.getAction()) || TextUtils.isEmpty(aVar.i()) || !t.e(aVar.i())) {
                            CallUtil.startDialActivity(QuickContactActivity.this, g);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(5, QuickContactActivity.this, "Contacts", "Quick Contact", "Quick Contact: press phone number", null);
                            com.android.contacts.a.b.a();
                            com.android.contacts.a.b.a(18, (Activity) QuickContactActivity.this, "Make a Call", true);
                        } else {
                            Toast.makeText(QuickContactActivity.this, 2131756091, 0).show();
                        }
                    } catch (ActivityNotFoundException e) {
                        Toast.makeText(QuickContactActivity.this, 2131756042, 0).show();
                    }
                    QuickContactActivity.this.a(false);
                }
            });
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.contacts.quickcontact.QuickContactActivity$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactActivity$5.class */
    public final class AnonymousClass5 implements Runnable {
        AnonymousClass5() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SchedulingUtils.doAfterDraw(QuickContactActivity.this.d, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.5.1
                @Override // java.lang.Runnable
                public final void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.5.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickContactActivity.this.finish();
                            QuickContactActivity.this.overridePendingTransition(0, 0);
                        }
                    }, 60L);
                }
            });
        }
    }

    /* renamed from: com.android.contacts.quickcontact.QuickContactActivity$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactActivity$6.class */
    final class AnonymousClass6 implements LoaderManager.LoaderCallbacks<c> {
        AnonymousClass6() {
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final Loader<c> onCreateLoader(int i, Bundle bundle) {
            if (QuickContactActivity.this.f2073a == null) {
                Log.wtf("QuickContact", "Lookup uri wasn't initialized. Loader was started too early");
            }
            return new d(QuickContactActivity.this.getApplicationContext(), QuickContactActivity.this.f2073a, false, false, false, false, true);
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final /* synthetic */ void onLoadFinished(Loader<c> loader, c cVar) {
            c cVar2 = cVar;
            QuickContactActivity.this.u.lap("lf");
            if (QuickContactActivity.this.isFinishing()) {
                return;
            }
            if (cVar2.b()) {
                Log.w("QuickContact", "Failed to load contact" + cVar2.C);
                QuickContactActivity.this.a(false);
            } else if (cVar2.c()) {
                Log.i("QuickContact", "No contact found: " + ((d) loader).c);
                if (loader == null || ((d) loader).c == null || ((d) loader).c.getLastPathSegment() == null || !((d) loader).c.getLastPathSegment().equals("profile")) {
                    Toast.makeText(QuickContactActivity.this, 2131755709, 1).show();
                } else {
                    Log.d("QuickContact", "isUserProfile");
                    Toast.makeText(QuickContactActivity.this, 2131756355, 1).show();
                }
                QuickContactActivity.this.a(false);
            } else {
                QuickContactActivity.this.a(cVar2);
                QuickContactActivity.this.u.lap("bd");
                if (Log.isLoggable(Constants.PERFORMANCE_TAG, 3)) {
                    Log.d(Constants.PERFORMANCE_TAG, "QuickContact shown");
                }
                SchedulingUtils.doAfterLayout(QuickContactActivity.this.d, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.6.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickContactActivity.this.d.a(new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.6.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                d dVar = QuickContactActivity.this.l;
                                if (!dVar.d || !dVar.f || !dVar.e || !dVar.g || !dVar.h) {
                                    dVar.d = true;
                                    dVar.f = true;
                                    dVar.e = true;
                                    dVar.g = true;
                                    dVar.h = true;
                                    dVar.b();
                                    dVar.onContentChanged();
                                }
                            }
                        });
                    }
                });
                QuickContactActivity.this.u.stopAndLog("QuickContact", 0);
                QuickContactActivity.this.u = StopWatch.getNullStopWatch();
            }
        }

        @Override // android.app.LoaderManager.LoaderCallbacks
        public final void onLoaderReset(Loader<c> loader) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactActivity$a.class */
    private final class a extends ViewPager.h {
        private a() {
        }

        /* synthetic */ a(QuickContactActivity quickContactActivity, byte b2) {
            this();
        }

        private void a(int i, float f) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) QuickContactActivity.this.h.getLayoutParams();
            layoutParams.leftMargin = (int) (layoutParams.width * (i + f));
            QuickContactActivity.this.h.setLayoutParams(layoutParams);
        }

        @Override // android.support.v4.view.ViewPager.h, android.support.v4.view.ViewPager.e
        public final void onPageScrolled(int i, float f, int i2) {
            a(i, f);
        }

        @Override // android.support.v4.view.ViewPager.h, android.support.v4.view.ViewPager.e
        public final void onPageSelected(int i) {
            CheckableImageView b2 = QuickContactActivity.b(QuickContactActivity.this, i);
            QuickContactActivity.this.g.requestChildRectangleOnScreen(b2, new Rect(0, 0, b2.getWidth(), b2.getHeight()), false);
            a(i, 0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/QuickContactActivity$b.class */
    public final class b extends android.support.v13.app.b {
        public b(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // android.support.v13.app.b
        public final Fragment a(int i) {
            g gVar = new g();
            gVar.f2102a = QuickContactActivity.this.o.get((String) QuickContactActivity.this.c.get(i));
            gVar.a();
            return gVar;
        }

        @Override // android.support.v4.view.p
        public final int getCount() {
            QuickContactActivity.this.t = QuickContactActivity.this.c.size();
            return QuickContactActivity.this.t;
        }
    }

    private void a(int i, CharSequence charSequence) {
        View findViewById = this.e.findViewById(i);
        if ((findViewById instanceof TextView) && !TextUtils.isEmpty(charSequence)) {
            ((TextView) findViewById).setText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(c cVar) {
        String[] strArr;
        CharSequence charSequence;
        boolean z;
        com.android.contacts.model.a.d dVar;
        synchronized (this) {
            Log.d("QuickContact", "QuickContact, bindData");
            h a2 = h.a(this);
            int i = -1;
            new com.android.contacts.c.a(getContentResolver());
            this.n.clear();
            this.u.lap("sph");
            if (cVar != null) {
                this.r = cVar.F <= 0 && cVar.i > 0;
            }
            if (this.r) {
                this.e.findViewById(2131297156).setVisibility(0);
                this.e.findViewById(2131297149).setVisibility(0);
                this.e.findViewById(2131297153).setVisibility(8);
                this.e.findViewById(2131296377).setVisibility(8);
                this.e.findViewById(2131297240).setVisibility(8);
            } else {
                this.e.findViewById(2131297156).setVisibility(8);
                this.e.findViewById(2131297149).setVisibility(8);
                this.e.findViewById(2131297153).setVisibility(0);
                this.e.findViewById(2131296377).setVisibility(0);
                this.e.findViewById(2131297240).setVisibility(0);
            }
            b(cVar);
            this.u.lap("ph");
            ae<e> b2 = cVar.o.iterator();
            com.android.contacts.model.a.c cVar2 = null;
            k kVar = null;
            while (b2.hasNext()) {
                e next = b2.next();
                for (com.android.contacts.model.a.a aVar : next.h()) {
                    String b3 = aVar.b();
                    if (this.f2074b != null) {
                        for (String str : this.f2074b) {
                            if (TextUtils.equals(str, b3)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    if (!z) {
                        long a3 = aVar.a();
                        boolean c = aVar.c();
                        boolean d = aVar.d();
                        aVar.f1994a.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, Long.valueOf(next.f()));
                        if (aVar.e() != null) {
                            aVar.c = cVar.B;
                            com.android.contacts.quickcontact.a cVar3 = new c(this, aVar);
                            if (a(cVar3, a2, d) && (d || (c && this.n.get(b3) == null))) {
                                this.n.put(b3, cVar3);
                            }
                        }
                        DataStatus dataStatus = cVar.q.get(Long.valueOf(a3));
                        if (dataStatus != null && (aVar instanceof com.android.contacts.model.a.c)) {
                            com.android.contacts.model.a.g a4 = com.android.contacts.model.a.g.a((com.android.contacts.model.a.c) aVar);
                            if (a4.e() != null) {
                                c cVar4 = new c(this, a4);
                                cVar4.f2093a = dataStatus.getPresence();
                                a(cVar4, a2, d);
                            }
                        }
                        kVar = kVar;
                        if (aVar instanceof k) {
                            kVar = kVar;
                            if (kVar == null) {
                                kVar = (k) aVar;
                            }
                        }
                        cVar2 = cVar2;
                        if (aVar instanceof com.android.contacts.model.a.c) {
                            cVar2 = cVar2;
                            if (cVar2 == null) {
                                cVar2 = (com.android.contacts.model.a.c) aVar;
                            }
                        }
                        if ((aVar instanceof com.android.contacts.model.a.d) && DateUtils.getAsInteger(((com.android.contacts.model.a.d) aVar).f1994a, CoverUtils.CoverData.COVER_TYPE) == 3 && (dVar = (com.android.contacts.model.a.d) aVar) != null && com.android.contacts.c.a.a(dVar.h()) != -1) {
                            i = com.android.contacts.c.a.a(dVar.h());
                        }
                    }
                }
            }
            this.u.lap("e");
            for (ArrayList<com.android.contacts.quickcontact.a> arrayList : this.o.values()) {
                j.a(arrayList);
            }
            this.u.lap("c");
            a(this.r ? 2131297098 : d.b.g, cVar.k);
            int i2 = this.r ? 2131297148 : 2131297147;
            int i3 = this.r ? 2131296785 : R.id.email;
            if (kVar != null) {
                View findViewById = this.e.findViewById(i2);
                if ((findViewById instanceof TextView) && !TextUtils.isEmpty(kVar.k())) {
                    ((TextView) findViewById).setText(kVar.k());
                }
            }
            if (cVar2 != null) {
                View findViewById2 = this.e.findViewById(i3);
                if ((findViewById2 instanceof TextView) && !TextUtils.isEmpty(cVar2.k())) {
                    ((TextView) findViewById2).setText(cVar2.k());
                }
            }
            if (cVar.B) {
                i = -1;
            }
            View findViewById3 = this.e.findViewById(this.r ? 2131296378 : 2131296377);
            if (findViewById3 instanceof ImageView) {
                new com.android.contacts.c.a(getContentResolver());
                if (i >= 0) {
                    findViewById3.setVisibility(0);
                    ((ImageView) findViewById3).setImageResource(this.r ? com.android.contacts.c.a.b(i) : com.android.contacts.c.a.a(i));
                } else {
                    findViewById3.setVisibility(8);
                }
            }
            if (this.r) {
                View findViewById4 = this.e.findViewById(2131296378);
                View findViewById5 = this.e.findViewById(2131297098);
                if (findViewById4.getVisibility() == 0) {
                    findViewById5.setPadding(0, 0, 0, 0);
                }
            }
            HashSet hashSet = new HashSet(this.o.keySet());
            this.c.clear();
            for (String str2 : p) {
                if (hashSet.contains(str2)) {
                    this.c.add(str2);
                    hashSet.remove(str2);
                }
            }
            for (String str3 : (String[]) hashSet.toArray(new String[hashSet.size()])) {
                if (!q.contains(str3)) {
                    this.c.add(str3);
                    hashSet.remove(str3);
                }
            }
            for (String str4 : q) {
                if (hashSet.contains(str4)) {
                    hashSet.remove(str4);
                    this.c.add(str4);
                }
            }
            this.u.lap("mt");
            this.f.removeAllViews();
            for (String str5 : this.c) {
                CheckableImageView checkableImageView = (CheckableImageView) getLayoutInflater().inflate(2131427646, this.f, false);
                checkableImageView.setTag(str5);
                com.android.contacts.quickcontact.a aVar2 = this.o.get(str5).get(0);
                CharSequence b4 = aVar2.b();
                ResolveInfo resolveInfo = a2.a(aVar2).f2112a;
                if (resolveInfo != null) {
                    charSequence = resolveInfo.loadLabel(a2.f2109a);
                } else {
                    charSequence = b4;
                    if (TextUtils.isEmpty(b4)) {
                        charSequence = null;
                    }
                }
                Drawable drawable = a2.a(aVar2).f2113b;
                checkableImageView.setChecked(false);
                checkableImageView.setContentDescription(charSequence);
                checkableImageView.setImageDrawable(drawable);
                checkableImageView.setOnClickListener(this.y);
                this.f.addView(checkableImageView);
            }
            this.u.lap("mt");
            boolean z2 = !this.c.isEmpty();
            this.g.setVisibility(z2 ? 0 : 8);
            this.i.setVisibility(z2 ? 0 : 8);
            this.h.setVisibility(z2 ? 0 : 8);
            this.k.setVisibility(z2 ? 0 : 8);
            if (!(!z2 || this.s == null || this.t == this.c.size())) {
                this.s.notifyDataSetChanged();
            }
        }
    }

    static /* synthetic */ void a(QuickContactActivity quickContactActivity) {
        if (quickContactActivity.d.c()) {
            quickContactActivity.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        getLoaderManager().destroyLoader(0);
        if (z) {
            this.d.b();
            if (!this.d.b(new AnonymousClass5())) {
                finish();
                overridePendingTransition(0, 0);
                return;
            }
            return;
        }
        finish();
        overridePendingTransition(0, 0);
    }

    private boolean a(com.android.contacts.quickcontact.a aVar, h hVar, boolean z) {
        boolean z2;
        if (hVar.a(aVar).f2112a != null) {
            com.android.contacts.quickcontact.b bVar = this.o;
            String c = aVar.c();
            ArrayList<com.android.contacts.quickcontact.a> arrayList = bVar.get(c);
            ArrayList<com.android.contacts.quickcontact.a> arrayList2 = arrayList;
            if (arrayList == null) {
                arrayList2 = new ArrayList<>();
                bVar.put(c, arrayList2);
            }
            if (z) {
                arrayList2.add(0, aVar);
            } else {
                arrayList2.add(aVar);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        return z2;
    }

    static /* synthetic */ CheckableImageView b(QuickContactActivity quickContactActivity, int i) {
        return (CheckableImageView) quickContactActivity.f.getChildAt(i);
    }

    private void b(c cVar) {
        synchronized (this) {
            ImageView imageView = (ImageView) this.e.findViewById(this.r ? 2131297154 : 2131297153);
            imageView.setTag(true);
            this.m.setupContactPhoto(cVar, imageView, com.android.contacts.simcardmanage.b.a(this));
            if (this.r) {
                Bitmap loadBitmapFromView = BitmapUtil.loadBitmapFromView(imageView);
                Bitmap createBitmap = Bitmap.createBitmap(loadBitmapFromView.getWidth(), loadBitmapFromView.getHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                Paint paint = new Paint();
                Rect rect = new Rect(0, 0, loadBitmapFromView.getWidth(), loadBitmapFromView.getHeight());
                paint.setAntiAlias(true);
                canvas.drawARGB(0, 0, 0, 0);
                paint.setColor(-12434878);
                canvas.drawCircle(loadBitmapFromView.getWidth() / 2, loadBitmapFromView.getHeight() / 2, loadBitmapFromView.getWidth() / 2, paint);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(loadBitmapFromView, rect, rect, paint);
                imageView.setImageBitmap(createBitmap);
                if (!PhoneCapabilityTester.IsAsusDevice()) {
                    int dimensionPixelSize = (getResources().getDimensionPixelSize(2131100273) - getResources().getDimensionPixelSize(2131100274)) / 2;
                    imageView.setPadding(dimensionPixelSize, dimensionPixelSize, 0, 0);
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onAttachFragment(Fragment fragment) {
        ((g) fragment).f2103b = this.z;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a(true);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d("QuickContact", "QuickContact, onCreate");
        this.u.lap("c");
        super.onCreate(bundle);
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            this.u.lap("sc");
            Intent intent = getIntent();
            Uri data = intent.getData();
            Uri uri = data;
            if (data != null) {
                uri = data;
                if ("contacts".equals(data.getAuthority())) {
                    uri = ContactsContract.RawContacts.getContactLookupUri(getContentResolver(), ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, ContentUris.parseId(data)));
                }
            }
            if (uri != null) {
                this.f2073a = (Uri) com.google.a.a.d.a(uri, "missing lookupUri");
            } else {
                Log.d("QuickContact", "lookupUri is null");
                finish();
            }
            if (intent.getIntExtra("android.provider.extra.MODE", 0) == 4) {
                CallUtil.startActivityWithErrorToast(this, new Intent("android.intent.action.VIEW", this.f2073a));
                finish();
            }
            this.f2074b = intent.getStringArrayExtra("android.provider.extra.EXCLUDE_MIMES");
            this.u.lap("i");
            this.l = (com.android.contacts.model.d) getLoaderManager().initLoader(0, null, this.x);
            this.u.lap("ld");
            getWindow().setFlags(131072, 131072);
            setContentView(2131427638);
            this.u.lap("l");
            try {
                this.d = (FloatingChildLayout) findViewById(2131296865);
                this.f = (ViewGroup) findViewById(2131297416);
                this.g = (HorizontalScrollView) findViewById(2131297417);
                this.j = (ImageButton) findViewById(2131297135);
                try {
                    this.k = (ViewPager) findViewById(2131296975);
                    this.h = findViewById(2131297271);
                    this.i = findViewById(2131297418);
                    this.d.setOnOutsideTouchListener(new View.OnTouchListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.1
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view, MotionEvent motionEvent) {
                            QuickContactActivity.a(QuickContactActivity.this);
                            return true;
                        }
                    });
                    View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Intent intent2 = new Intent("android.intent.action.VIEW", QuickContactActivity.this.f2073a);
                            QuickContactActivity.this.l.b();
                            CallUtil.startActivityWithErrorToast(QuickContactActivity.this, intent2);
                            QuickContactActivity.this.a(false);
                        }
                    };
                    boolean a2 = h.a(this);
                    if (!a2) {
                        this.j.setOnClickListener(onClickListener);
                    } else {
                        this.j.setOnClickListener(null);
                        this.j.setClickable(false);
                    }
                    this.v = (ImageButton) findViewById(2131297136);
                    View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.android.contacts.quickcontact.QuickContactActivity.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            Intent intent2 = new Intent("android.intent.action.EDIT", QuickContactActivity.this.f2073a);
                            intent2.putExtra(ContactEditorActivity.INTENT_KEY_FINISH_ACTIVITY_ON_SAVE_COMPLETED, true);
                            CallUtil.startActivityWithErrorToast(QuickContactActivity.this, intent2);
                        }
                    };
                    if (!a2) {
                        this.v.setOnClickListener(onClickListener2);
                    } else {
                        this.v.setVisibility(8);
                        this.v.setOnClickListener(null);
                    }
                    this.s = new b(getFragmentManager());
                    this.k.setAdapter(this.s);
                    this.k.setOnPageChangeListener(new a(this, (byte) 0));
                    Rect sourceBounds = intent.getSourceBounds();
                    if (sourceBounds != null) {
                        this.d.setChildTargetScreen(sourceBounds);
                    }
                    this.e = findViewById(2131297155);
                    a(d.b.g, getText(2131755855));
                    this.u.lap("v");
                    SchedulingUtils.doAfterLayout(this.d, new Runnable() { // from class: com.android.contacts.quickcontact.QuickContactActivity.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickContactActivity.this.d.a();
                        }
                    });
                    this.u.lap("cf");
                    ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", 0, 2130706432);
                    ofInt.setDuration(getResources().getInteger(17694720));
                    ofInt.setEvaluator(new ArgbEvaluator());
                    ofInt.start();
                    if (PhoneCapabilityTester.IsSystemApp()) {
                        com.android.contacts.a.b.a();
                        com.android.contacts.a.b.a(18, (Activity) this, "Quick contact", true);
                        return;
                    }
                    com.android.contacts.a.b.a();
                    com.android.contacts.a.b.a(10, (Activity) this, "Quick contact", true);
                } catch (Exception e) {
                    Log.w("QuickContact", e.toString());
                    finish();
                }
            } catch (Exception e2) {
                Log.w("QuickContact", e2.toString());
                finish();
            }
        }
    }
}
