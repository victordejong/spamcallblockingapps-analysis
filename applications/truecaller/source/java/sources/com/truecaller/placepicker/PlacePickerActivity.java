package com.truecaller.placepicker;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.maps.CameraUpdate;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.libraries.places.api.Places;
import com.google.android.libraries.places.api.model.Place;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.google.android.libraries.places.widget.Autocomplete;
import com.google.android.libraries.places.widget.model.AutocompleteActivityMode;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.updatesdk.service.otaupdate.UpdateDialogStatusCode;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.placepicker.data.GeocodedPlace;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1002k4.AbstractC16505b;
import p193e.p194a.p1002k4.AbstractC16510g;
import p193e.p194a.p1002k4.AbstractC16511h;
import p193e.p194a.p1002k4.C16506c;
import p193e.p194a.p1002k4.C16512i;
import p193e.p194a.p1002k4.C16521l;
import p193e.p194a.p1002k4.C16522m;
import p193e.p194a.p1002k4.p1009p.C16549a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.u.i;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bL\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ)\u0010\u0010\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010!\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u000bH\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\nJ\u001f\u0010.\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0006H\u0017¢\u0006\u0004\b0\u0010\nJ\u0017\u00101\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u000bH\u0016¢\u0006\u0004\b1\u0010)J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\nJ\u0017\u00108\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u0014H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0006H\u0016¢\u0006\u0004\b:\u0010\nJ\u000f\u0010;\u001a\u00020\u0006H\u0016¢\u0006\u0004\b;\u0010\nR\"\u0010C\u001a\u00020<8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\u001d\u0010I\u001a\u00020D8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010J¨\u0006M"}, d2 = {"Lcom/truecaller/placepicker/PlacePickerActivity;", "Ln3/b/a/h;", "Lcom/google/android/gms/maps/OnMapReadyCallback;", "Le/a/k4/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/view/Menu;", "menu", "", "onCreateOptionsMenu", "(Landroid/view/Menu;)Z", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Lcom/google/android/gms/maps/GoogleMap;", "googleMap", "O3", "(Lcom/google/android/gms/maps/GoogleMap;)V", "", "placeName", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "(Ljava/lang/String;)V", "Lcom/truecaller/placepicker/data/GeocodedPlace;", "geocodedPlace", "R7", "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V", "errorMessage", "F1", "(I)V", "D2", "", "latitude", "longitude", "S3", "(DD)V", "Z6", "i4", "Lcom/google/android/gms/common/api/ResolvableApiException;", "e", "j7", "(Lcom/google/android/gms/common/api/ResolvableApiException;)V", "D1", AnalyticsConstants.SHOW, "t2", "(Z)V", "P1", "y5", "Le/a/k4/g;", "d", "Le/a/k4/g;", "qa", "()Le/a/k4/g;", "setPresenter", "(Le/a/k4/g;)V", "presenter", "Le/a/k4/p/a;", "f", "Ls1/g;", "pa", "()Le/a/k4/p/a;", "binding", "Lcom/google/android/gms/maps/GoogleMap;", "map", "<init>", "placepicker_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/PlacePickerActivity.class */
public final class PlacePickerActivity extends AbstractC16505b implements OnMapReadyCallback, AbstractC16511h {
    @Inject

    /* renamed from: d */
    public AbstractC16510g f14154d;

    /* renamed from: e */
    public GoogleMap f14155e;

    /* renamed from: f */
    public final g f14156f = C25225a.m3982O1(h.c, new C4325a(this));

    /* renamed from: com.truecaller.placepicker.PlacePickerActivity$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/PlacePickerActivity$a.class */
    public static final class C4325a extends m implements a<C16549a> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f14157b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4325a(n3.b.a.h hVar) {
            super(0);
            this.f14157b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f14157b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4327R.layout.activity_place_picker, (ViewGroup) null, false);
            int i = C4327R.C4329id.abl;
            AppBarLayout findViewById = inflate.findViewById(i);
            if (findViewById != null) {
                i = C4327R.C4329id.containerAddress;
                View findViewById2 = inflate.findViewById(i);
                if (findViewById2 != null) {
                    i = C4327R.C4329id.cvCurrentLoc;
                    CardView cardView = (CardView) inflate.findViewById(i);
                    if (cardView != null) {
                        i = C4327R.C4329id.marker;
                        ImageView imageView = (ImageView) inflate.findViewById(i);
                        if (imageView != null) {
                            i = C4327R.C4329id.pbLoading;
                            ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                            if (progressBar != null) {
                                i = C4327R.C4329id.textView;
                                TextView textView = (TextView) inflate.findViewById(i);
                                if (textView != null) {
                                    i = C4327R.C4329id.toolbar;
                                    MaterialToolbar findViewById3 = inflate.findViewById(i);
                                    if (findViewById3 != null) {
                                        i = C4327R.C4329id.tvAddress;
                                        TextView textView2 = (TextView) inflate.findViewById(i);
                                        if (textView2 != null) {
                                            i = C4327R.C4329id.tvChangeAddress;
                                            TextView textView3 = (TextView) inflate.findViewById(i);
                                            if (textView3 != null) {
                                                return new C16549a((ConstraintLayout) inflate, findViewById, findViewById2, cardView, imageView, progressBar, textView, findViewById3, textView2, textView3);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.placepicker.PlacePickerActivity$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/PlacePickerActivity$b.class */
    public static final class C4326b implements GoogleMap.OnCameraIdleListener {

        /* renamed from: a */
        public final /* synthetic */ GoogleMap f14158a;

        /* renamed from: b */
        public final /* synthetic */ PlacePickerActivity f14159b;

        public C4326b(GoogleMap googleMap, PlacePickerActivity placePickerActivity) {
            this.f14158a = googleMap;
            this.f14159b = placePickerActivity;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x008d, code lost:
            if ((!s1.z.c.l.a(r0.format(r0.f46417e != null ? r0.f14184e : null), r0.f46416d.format(r0.b))) != false) goto L15;
         */
        @Override // com.google.android.gms.maps.GoogleMap.OnCameraIdleListener
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo29255a() {
            /*
                Method dump skipped, instructions count: 217
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.placepicker.PlacePickerActivity.C4326b.mo29255a():void");
        }
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: D1 */
    public void mo17313D1() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: D2 */
    public void mo17312D2() {
        Intent build = new Autocomplete.IntentBuilder(AutocompleteActivityMode.FULLSCREEN, i.T(new Place.Field[]{Place.Field.ID, Place.Field.NAME, Place.Field.ADDRESS, Place.Field.ADDRESS_COMPONENTS, Place.Field.LAT_LNG})).build(this);
        l.d(build, "Autocomplete.IntentBuild…REEN, fields).build(this)");
        startActivityForResult(build, 10001);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: F1 */
    public void mo17311F1(int i) {
        C19291g.m13589S1(this, 0, getString(i), 0, 5);
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: G */
    public void mo17310G(String str) {
        TextView textView = m34828pa().f46508f;
        l.d(textView, "binding.tvAddress");
        textView.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.maps.OnMapReadyCallback
    /* renamed from: O3 */
    public void mo29248O3(GoogleMap googleMap) {
        l.e(googleMap, "googleMap");
        this.f14155e = googleMap;
        int i = C4327R.raw.placepicker_map_style;
        Parcelable.Creator creator = MapStyleOptions.CREATOR;
        InputStream openRawResource = getResources().openRawResource(i);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IOUtils.m38779a(openRawResource, byteArrayOutputStream, true, 1024);
            try {
                googleMap.f6237a.m38692d1(new MapStyleOptions(new String(byteArrayOutputStream.toByteArray(), StringConstant.UTF8)));
                googleMap.m38705d(new C4326b(googleMap, this));
                double doubleExtra = getIntent().getDoubleExtra("latitude", PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                double doubleExtra2 = getIntent().getDoubleExtra("longitude", PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                AbstractC16510g abstractC16510g = this.f14154d;
                if (abstractC16510g == null) {
                    l.l("presenter");
                    throw null;
                }
                C16512i c16512i = (C16512i) abstractC16510g;
                if (doubleExtra == PlaceLikelihood.LIKELIHOOD_MIN_VALUE || doubleExtra2 == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                    d.w2(c16512i, (f) null, (j0) null, new C16522m(c16512i, null), 3, (Object) null);
                    return;
                }
                AbstractC16511h abstractC16511h = (AbstractC16511h) c16512i.f57683a;
                if (abstractC16511h == null) {
                    return;
                }
                abstractC16511h.mo17307S3(doubleExtra, doubleExtra2);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        } catch (IOException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(valueOf.length() + 37);
            sb.append("Failed to read resource ");
            sb.append(i);
            sb.append(": ");
            sb.append(valueOf);
            throw new Resources.NotFoundException(sb.toString());
        }
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: P1 */
    public void mo17309P1() {
        TextView textView = m34828pa().f46509g;
        l.d(textView, "binding.tvChangeAddress");
        C19286f.m13684T(textView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: R7 */
    public void mo17308R7(GeocodedPlace geocodedPlace) {
        l.e(geocodedPlace, "geocodedPlace");
        Intent intent = new Intent();
        intent.putExtra("selected_location", geocodedPlace);
        setResult(-1, intent);
        finish();
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: S3 */
    public void mo17307S3(double d, double d2) {
        GoogleMap googleMap = this.f14155e;
        if (googleMap != null) {
            try {
                try {
                    googleMap.f6237a.m38687w(new CameraUpdate(CameraUpdateFactory.m38709b().m38697Q0(new LatLng(d, d2), 18.0f)).f6235a);
                } catch (RemoteException e) {
                    throw new RuntimeRemoteException(e);
                }
            } catch (RemoteException e2) {
                throw new RuntimeRemoteException(e2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: Z6 */
    public void mo17306Z6() {
        C19291g.m13589S1(this, 0, getString(C4327R.string.placepicker_error_device_location_unavailable), 0, 5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: i4 */
    public void mo17305i4(int i) {
        Toast.makeText((Context) this, (CharSequence) getString(i), 0).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: j7 */
    public void mo17304j7(ResolvableApiException resolvableApiException) {
        l.e(resolvableApiException, "e");
        try {
            resolvableApiException.f5693a.m39041r2(this, UpdateDialogStatusCode.SHOW);
        } catch (IntentSender.SendIntentException e) {
            C10480a.m26061I1(e);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC16511h abstractC16511h;
        PlacePickerActivity.super.onActivityResult(i, i2, intent);
        if (i == 10001) {
            if (i2 != -1 || intent == null) {
                return;
            }
            try {
                Place placeFromIntent = Autocomplete.getPlaceFromIntent(intent);
                l.d(placeFromIntent, "Autocomplete.getPlaceFromIntent(data)");
                AbstractC16510g abstractC16510g = this.f14154d;
                if (abstractC16510g != null) {
                    ((C16512i) abstractC16510g).m17298Lj(placeFromIntent);
                } else {
                    l.l("presenter");
                    throw null;
                }
            } catch (IllegalArgumentException e) {
                C10480a.m26057J1(e, "invalid autocomplete search result.");
            }
        } else if (i != 10002) {
        } else {
            AbstractC16510g abstractC16510g2 = this.f14154d;
            if (abstractC16510g2 == null) {
                l.l("presenter");
                throw null;
            }
            boolean z = i2 == -1;
            C16512i c16512i = (C16512i) abstractC16510g2;
            Objects.requireNonNull(c16512i);
            if (z) {
                d.w2(c16512i, (f) null, (j0) null, new C16521l(c16512i, null), 3, (Object) null);
            } else if (z || (abstractC16511h = (AbstractC16511h) c16512i.f57683a) == null) {
            } else {
                abstractC16511h.mo17306Z6();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        String stringExtra;
        AbstractC25393a supportActionBar;
        PlacePickerActivity.super.onCreate(bundle);
        C16549a m34828pa = m34828pa();
        l.d(m34828pa, "binding");
        setContentView(m34828pa.f46503a);
        AbstractC16510g abstractC16510g = this.f14154d;
        Boolean bool = null;
        if (abstractC16510g == null) {
            l.l("presenter");
            throw null;
        }
        ((C16512i) abstractC16510g).mo9029Y0(this);
        if (!Places.isInitialized() || (!l.a(C16506c.f46414b, C16506c.f46413a))) {
            try {
                Places.initialize(getApplicationContext(), C16506c.f46413a);
            } catch (IllegalArgumentException e) {
                C10480a.m26061I1(new AssertionError("Api key is invalid"));
            }
        }
        SupportMapFragment m42943J = getSupportFragmentManager().m42943J(C4327R.C4329id.map);
        Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.google.android.gms.maps.SupportMapFragment");
        m42943J.OA(this);
        setSupportActionBar(m34828pa().f46507e);
        AbstractC25393a supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.mo3553n(true);
        }
        AbstractC25393a supportActionBar3 = getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.mo3548s(C4327R.C4328drawable.ic_toolbar_close);
        }
        Intent intent = getIntent();
        if (intent != null && (stringExtra = intent.getStringExtra("toolbarTitle")) != null && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.mo3542y(stringExtra);
        }
        m34828pa().f46505c.setOnClickListener(new i1(0, this));
        m34828pa().f46509g.setOnClickListener(new i1(1, this));
        AbstractC16510g abstractC16510g2 = this.f14154d;
        if (abstractC16510g2 == null) {
            l.l("presenter");
            throw null;
        }
        Intent intent2 = getIntent();
        if (intent2 != null) {
            bool = Boolean.valueOf(intent2.getBooleanExtra("showAutocomplete", false));
        }
        C16512i c16512i = (C16512i) abstractC16510g2;
        if (C12864a2.m22540r(bool)) {
            AbstractC16511h abstractC16511h = (AbstractC16511h) c16512i.f57683a;
            if (abstractC16511h == null) {
                return;
            }
            abstractC16511h.mo17309P1();
            return;
        }
        AbstractC16511h abstractC16511h2 = (AbstractC16511h) c16512i.f57683a;
        if (abstractC16511h2 == null) {
            return;
        }
        abstractC16511h2.mo17302y5();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C4327R.C4331menu.menu_placepicker, menu);
        return PlacePickerActivity.super.onCreateOptionsMenu(menu);
    }

    public void onDestroy() {
        PlacePickerActivity.super.onDestroy();
        AbstractC16510g abstractC16510g = this.f14154d;
        if (abstractC16510g != null) {
            ((C16512i) abstractC16510g).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0063, code lost:
        if (r9 != null) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onOptionsItemSelected(android.view.MenuItem r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "item"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            int r0 = r0.getItemId()
            r7 = r0
            r0 = r7
            int r1 = com.truecaller.placepicker.C4327R.C4329id.action_done
            if (r0 != r1) goto L8c
            r0 = r5
            e.a.k4.g r0 = r0.f14154d
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L84
            r0 = r8
            e.a.k4.i r0 = (p193e.p194a.p1002k4.C16512i) r0
            r8 = r0
            r0 = r8
            e.a.k4.n.a r0 = r0.f46426n
            e.a.k4.n.f$a r1 = new e.a.k4.n.f$a
            r2 = r1
            r3 = r8
            int r3 = r3.f46419g
            r2.<init>(r3)
            r0.mo17273a(r1)
            r0 = r8
            com.truecaller.placepicker.data.GeocodedPlace r0 = r0.f46417e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L69
            r0 = r8
            PV r0 = r0.f57683a
            e.a.k4.h r0 = (p193e.p194a.p1002k4.AbstractC16511h) r0
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L61
            r0 = r11
            r1 = r10
            r0.mo17308R7(r1)
            s1.s r0 = s1.s.a
            r9 = r0
        L61:
            r0 = r9
            if (r0 == 0) goto L69
            goto L9c
        L69:
            r0 = r8
            PV r0 = r0.f57683a
            e.a.k4.h r0 = (p193e.p194a.p1002k4.AbstractC16511h) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L9c
            r0 = r9
            int r1 = com.truecaller.placepicker.C4327R.string.placepicker_error_no_location_selected
            r0.mo17311F1(r1)
            goto L9c
        L84:
            java.lang.String r0 = "presenter"
            s1.z.c.l.l(r0)
            r0 = 0
            throw r0
        L8c:
            r0 = r7
            r1 = 16908332(0x102002c, float:2.3877352E-38)
            if (r0 != r1) goto L9c
            r0 = r5
            r1 = 0
            r0.setResult(r1)
            r0 = r5
            r0.finish()
        L9c:
            r0 = r5
            r1 = r6
            boolean r0 = com.truecaller.placepicker.PlacePickerActivity.super.onOptionsItemSelected(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.placepicker.PlacePickerActivity.onOptionsItemSelected(android.view.MenuItem):boolean");
    }

    /* renamed from: pa */
    public final C16549a m34828pa() {
        return (C16549a) this.f14156f.getValue();
    }

    /* renamed from: qa */
    public final AbstractC16510g m34827qa() {
        AbstractC16510g abstractC16510g = this.f14154d;
        if (abstractC16510g != null) {
            return abstractC16510g;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: t2 */
    public void mo17303t2(boolean z) {
        ProgressBar progressBar = m34828pa().f46506d;
        l.d(progressBar, "binding.pbLoading");
        C19286f.m13683U(progressBar, z);
    }

    @Override // p193e.p194a.p1002k4.AbstractC16511h
    /* renamed from: y5 */
    public void mo17302y5() {
        TextView textView = m34828pa().f46509g;
        l.d(textView, "binding.tvChangeAddress");
        C19286f.m13689O(textView);
    }
}
