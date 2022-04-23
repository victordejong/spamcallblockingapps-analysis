package com.callapp.contacts.popup;

import android.app.Activity;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.b;
import com.bumptech.glide.e.h;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.GoogleMapsCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.AddressGeoCodeLatLng;
import com.callapp.contacts.model.contact.ContactDataUtils;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserCorrectedPositiveData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.relation.ToMany;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/PhotoPopup.class */
public class PhotoPopup extends DialogPopup {

    /* renamed from: a  reason: collision with root package name */
    private String f15335a;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f15336b;

    /* renamed from: c  reason: collision with root package name */
    private final DataSource f15337c;

    /* renamed from: d  reason: collision with root package name */
    private final String f15338d;
    private final int e;
    private final int f;
    private final PresentersContainer g;
    private ImageView h;
    private ImageView i;
    private TextView j;
    private ImageView k;
    private int l = 0;
    private JSONSocialNetworkID m = null;
    private AddressGeoCodeLatLng n;

    public PhotoPopup(PresentersContainer presentersContainer, String str, DataSource dataSource, int i, int i2) {
        super(1);
        this.f15335a = str;
        this.f15337c = dataSource;
        this.e = i;
        this.f = i2;
        this.g = presentersContainer;
        this.f15338d = StringUtils.j(presentersContainer.getContact().getNameOrNumber());
        setCancelable(true);
        shouldCanceledOnTouchOutside();
    }

    private void a() {
        this.k.setVisibility(0);
        this.h.setVisibility(8);
        this.i.setVisibility(8);
    }

    static /* synthetic */ void a(PhotoPopup photoPopup) {
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "Click positive on contact image");
        UserCorrectedInfoLoader.a(photoPopup.g.getContact(), UserCorrectedDataManager.a(photoPopup.g.getContact().getDeviceId(), photoPopup.g.getContact().getPhone().a(), photoPopup.l, photoPopup.m.getId()));
        photoPopup.j.setText(StringUtils.a(photoPopup.f15338d, new char[0]));
        photoPopup.a();
    }

    static /* synthetic */ void a(PhotoPopup photoPopup, final Activity activity) {
        AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "Click negative on contact image");
        DataSource dataSource = photoPopup.g.getContact().getDataSource(ContactField.photoUrl);
        final int i = dataSource.dbCode;
        final JSONSocialNetworkID socialNetworkID = ContactDataUtils.getSocialNetworkID(photoPopup.g.getContact(), i);
        "DataSource: ".concat(String.valueOf(dataSource));
        CLog.a("PhotoPopup");
        StringBuilder sb = new StringBuilder("Declined: socail id=");
        sb.append(i);
        sb.append(", socialNetworkId=");
        sb.append(socialNetworkID);
        CLog.a("PhotoPopup");
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.popup.PhotoPopup.7
            @Override // java.lang.Runnable
            public void run() {
                Singletons.get().getRemoteAccountHelper(i).a(PhotoPopup.this.g.getContact(), socialNetworkID.getId());
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.popup.PhotoPopup.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ChooseSocialProfileActivity.openContactProfile(activity, PhotoPopup.this.g.getContact());
                        PhotoPopup.this.dismiss();
                    }
                });
            }
        });
    }

    private boolean isUserApprovedThisProfile() {
        DataSource dataSource;
        ToMany<UserCorrectedPositiveData> userCorrectedPositive;
        if (!this.g.getContact().hasAnyPhotoUrl() || this.g.getContact().getDataSource(ContactField.photoUrl).dbCode == 0 || (dataSource = this.g.getContact().getDataSource(ContactField.photoUrl)) == DataSource.userMedia) {
            return true;
        }
        UserCorrectedData userCorrectedData = this.g.getContact().getUserCorrectedData();
        if (userCorrectedData == null || (userCorrectedPositive = userCorrectedData.getUserCorrectedPositive()) == null) {
            return false;
        }
        int i = dataSource.dbCode;
        if (i == 5) {
            if (this.g.getContact().getGooglePlacesData() != null) {
                return true;
            }
        } else if (i == 6 && this.g.getContact().getFoursquareData() != null) {
            return true;
        }
        if (ContactDataUtils.getSocialNetworkID(this.g.getContact(), i) == null) {
            return true;
        }
        for (UserCorrectedPositiveData userCorrectedPositiveData : userCorrectedPositive) {
            if (userCorrectedPositiveData.getSocialNetworkId() == i) {
                return true;
            }
        }
        return false;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void onDialogDismissed(DialogInterface dialogInterface) {
        super.onDialogDismissed(dialogInterface);
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public View ovViewCreated(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        JSONSocialNetworkID jSONSocialNetworkID;
        View inflate = layoutInflater.inflate(2131558620, (ViewGroup) null);
        ImageView imageView = (ImageView) inflate.findViewById(2131363013);
        this.h = (ImageView) inflate.findViewById(2131363558);
        this.i = (ImageView) inflate.findViewById(2131363559);
        this.j = (TextView) inflate.findViewById(2131364134);
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362673);
        this.k = imageView2;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView2, 2131231640, this.g.getRealContext());
        glideRequestBuilder.g = Integer.valueOf(ThemeUtils.a(CallAppApplication.get(), 2131099784));
        GlideUtils.GlideRequestBuilder a2 = glideRequestBuilder.a(-1, PorterDuff.Mode.SRC_IN);
        a2.l = true;
        a2.d();
        this.k.setVisibility(8);
        this.j.setTextColor(b.c(CallAppApplication.get(), 2131099918));
        this.j.setText(Activities.a(2131886919, StringUtils.b(this.f15338d)));
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoPopup.a(PhotoPopup.this);
            }
        });
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoPopup photoPopup = PhotoPopup.this;
                PhotoPopup.a(photoPopup, photoPopup.getActivity());
            }
        });
        this.k.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.USER_CORRECTED_INFO, "Click edit image ");
                ChooseSocialProfileActivity.openContactProfile(PhotoPopup.this.getActivity(), PhotoPopup.this.g.getContact());
                PhotoPopup.this.dismiss();
            }
        });
        if (this.n != null) {
            GlideUtils.b(CallAppApplication.get()).a(this.f15336b).b(new h().a(Bitmap.CompressFormat.PNG).c(100)).a(imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Map from photo popup clicked");
                    if (!HttpUtils.a()) {
                        FeedbackManager.a(PhotoPopup.this.g.getRealContext());
                    } else if (StringUtils.b((CharSequence) PhotoPopup.this.f15338d)) {
                        GoogleMapsCard.openNavigationDirections(PhotoPopup.this.g.getRealContext(), PhotoPopup.this.f15338d);
                    } else {
                        GoogleMapsCard.openViewLocationActivity(PhotoPopup.this.g.getRealContext(), PhotoPopup.this.n.lat, PhotoPopup.this.n.lng);
                    }
                    PhotoPopup.this.dismiss();
                }
            });
        } else {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.a(view, 1);
                    PhotoPopup.this.dismiss();
                }
            });
            if (StringUtils.c(this.f15335a)) {
                GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(imageView, this.f15335a, getActivity()).a(this.f15337c).a(this.f, PorterDuff.Mode.SRC_IN);
                a3.g = Integer.valueOf(this.e);
                a3.d();
            } else {
                imageView.setBackgroundColor(this.e);
                GlideUtils.GlideRequestBuilder a4 = new GlideUtils.GlideRequestBuilder(imageView, this.f15335a, getActivity()).a(this.f15337c);
                a4.q = true;
                a4.d();
            }
        }
        inflate.findViewById(2131363705).setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.popup.PhotoPopup.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                PhotoPopup.this.dismiss();
                return true;
            }
        });
        this.l = this.g.getContact().getDataSource(ContactField.photoUrl).dbCode;
        this.m = ContactDataUtils.getSocialNetworkID(this.g.getContact(), this.l);
        PresentersContainer presentersContainer = this.g;
        boolean a5 = presentersContainer.a(presentersContainer.getContact());
        if (!a5 && (isUserApprovedThisProfile() || this.l == 0 || (jSONSocialNetworkID = this.m) == null || StringUtils.a((CharSequence) jSONSocialNetworkID.getId()))) {
            a();
            this.j.setText(StringUtils.a(this.f15338d, new char[0]));
        } else if (a5) {
            this.j.setVisibility(8);
            this.h.setVisibility(8);
            this.i.setVisibility(8);
            this.k.setVisibility(8);
        } else {
            this.j.setText(Activities.a(2131886919, StringUtils.b(this.f15338d)));
            this.k.setVisibility(8);
            this.h.setVisibility(0);
            this.i.setVisibility(0);
        }
        return inflate;
    }

    @Override // com.callapp.contacts.manager.popup.DialogPopup
    public void setDialogWindowSize(Window window) {
        window.setLayout(-1, -2);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setDimAmount(ThemeUtils.getFloatValue(2131165547));
        window.addFlags(2);
        window.getAttributes().windowAnimations = 2131952010;
        window.setGravity(48);
    }
}
