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
import androidx.core.content.C0790b;
import com.bumptech.glide.p112e.C3605h;
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

    /* renamed from: a */
    private String f26891a;

    /* renamed from: b */
    private Bitmap f26892b;

    /* renamed from: c */
    private final DataSource f26893c;

    /* renamed from: d */
    private final String f26894d;

    /* renamed from: e */
    private final int f26895e;

    /* renamed from: f */
    private final int f26896f;

    /* renamed from: g */
    private final PresentersContainer f26897g;

    /* renamed from: h */
    private ImageView f26898h;

    /* renamed from: i */
    private ImageView f26899i;

    /* renamed from: j */
    private TextView f26900j;

    /* renamed from: k */
    private ImageView f26901k;

    /* renamed from: l */
    private int f26902l = 0;

    /* renamed from: m */
    private JSONSocialNetworkID f26903m = null;

    /* renamed from: n */
    private AddressGeoCodeLatLng f26904n;

    public PhotoPopup(PresentersContainer presentersContainer, String str, DataSource dataSource, int i, int i2) {
        super(1);
        this.f26891a = str;
        this.f26893c = dataSource;
        this.f26895e = i;
        this.f26896f = i2;
        this.f26897g = presentersContainer;
        this.f26894d = StringUtils.m26020j(presentersContainer.getContact().getNameOrNumber());
        setCancelable(true);
        shouldCanceledOnTouchOutside();
    }

    /* renamed from: a */
    private void m28049a() {
        this.f26901k.setVisibility(0);
        this.f26898h.setVisibility(8);
        this.f26899i.setVisibility(8);
    }

    /* renamed from: a */
    static /* synthetic */ void m28048a(PhotoPopup photoPopup) {
        AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click positive on contact image");
        UserCorrectedInfoLoader.m28896a(photoPopup.f26897g.getContact(), UserCorrectedDataManager.m28899a(photoPopup.f26897g.getContact().getDeviceId(), photoPopup.f26897g.getContact().getPhone().m26101a(), photoPopup.f26902l, photoPopup.f26903m.getId()));
        photoPopup.f26900j.setText(StringUtils.m26049a(photoPopup.f26894d, new char[0]));
        photoPopup.m28049a();
    }

    /* renamed from: a */
    static /* synthetic */ void m28047a(PhotoPopup photoPopup, final Activity activity) {
        AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click negative on contact image");
        DataSource dataSource = photoPopup.f26897g.getContact().getDataSource(ContactField.photoUrl);
        final int i = dataSource.dbCode;
        final JSONSocialNetworkID socialNetworkID = ContactDataUtils.getSocialNetworkID(photoPopup.f26897g.getContact(), i);
        "DataSource: ".concat(String.valueOf(dataSource));
        CLog.m27606a("PhotoPopup");
        StringBuilder sb = new StringBuilder("Declined: socail id=");
        sb.append(i);
        sb.append(", socialNetworkId=");
        sb.append(socialNetworkID);
        CLog.m27606a("PhotoPopup");
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.popup.PhotoPopup.7
            @Override // java.lang.Runnable
            public void run() {
                Singletons.get().getRemoteAccountHelper(i).m29246a(PhotoPopup.this.f26897g.getContact(), socialNetworkID.getId());
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.popup.PhotoPopup.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ChooseSocialProfileActivity.openContactProfile(activity, PhotoPopup.this.f26897g.getContact());
                        PhotoPopup.this.dismiss();
                    }
                });
            }
        });
    }

    private boolean isUserApprovedThisProfile() {
        DataSource dataSource;
        ToMany<UserCorrectedPositiveData> userCorrectedPositive;
        if (!this.f26897g.getContact().hasAnyPhotoUrl() || this.f26897g.getContact().getDataSource(ContactField.photoUrl).dbCode == 0 || (dataSource = this.f26897g.getContact().getDataSource(ContactField.photoUrl)) == DataSource.userMedia) {
            return true;
        }
        UserCorrectedData userCorrectedData = this.f26897g.getContact().getUserCorrectedData();
        if (userCorrectedData == null || (userCorrectedPositive = userCorrectedData.getUserCorrectedPositive()) == null) {
            return false;
        }
        int i = dataSource.dbCode;
        if (i == 5) {
            if (this.f26897g.getContact().getGooglePlacesData() != null) {
                return true;
            }
        } else if (i == 6 && this.f26897g.getContact().getFoursquareData() != null) {
            return true;
        }
        if (ContactDataUtils.getSocialNetworkID(this.f26897g.getContact(), i) == null) {
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
        this.f26898h = (ImageView) inflate.findViewById(2131363558);
        this.f26899i = (ImageView) inflate.findViewById(2131363559);
        this.f26900j = (TextView) inflate.findViewById(2131364134);
        ImageView imageView2 = (ImageView) inflate.findViewById(2131362673);
        this.f26901k = imageView2;
        GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(imageView2, 2131231640, this.f26897g.getRealContext());
        glideRequestBuilder.f28241g = Integer.valueOf(ThemeUtils.m27386a(CallAppApplication.get(), 2131099784));
        GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(-1, PorterDuff.Mode.SRC_IN);
        m27025a.f28246l = true;
        m27025a.m27013d();
        this.f26901k.setVisibility(8);
        this.f26900j.setTextColor(C0790b.m44492c(CallAppApplication.get(), 2131099918));
        this.f26900j.setText(Activities.m27697a(2131886919, StringUtils.m26043b(this.f26894d)));
        this.f26898h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoPopup.m28048a(PhotoPopup.this);
            }
        });
        this.f26899i.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhotoPopup photoPopup = PhotoPopup.this;
                PhotoPopup.m28047a(photoPopup, photoPopup.getActivity());
            }
        });
        this.f26901k.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click edit image ");
                ChooseSocialProfileActivity.openContactProfile(PhotoPopup.this.getActivity(), PhotoPopup.this.f26897g.getContact());
                PhotoPopup.this.dismiss();
            }
        });
        if (this.f26904n != null) {
            GlideUtils.m27035b(CallAppApplication.get()).mo27056a(this.f26892b).mo27083b(new C3605h().mo27103a(Bitmap.CompressFormat.PNG).mo27074c(100)).m37562a(imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Map from photo popup clicked");
                    if (!HttpUtils.m26985a()) {
                        FeedbackManager.m28675a(PhotoPopup.this.f26897g.getRealContext());
                    } else if (StringUtils.m26045b((CharSequence) PhotoPopup.this.f26894d)) {
                        GoogleMapsCard.openNavigationDirections(PhotoPopup.this.f26897g.getRealContext(), PhotoPopup.this.f26894d);
                    } else {
                        GoogleMapsCard.openViewLocationActivity(PhotoPopup.this.f26897g.getRealContext(), PhotoPopup.this.f26904n.lat, PhotoPopup.this.f26904n.lng);
                    }
                    PhotoPopup.this.dismiss();
                }
            });
        } else {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.popup.PhotoPopup.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AndroidUtils.m27630a(view, 1);
                    PhotoPopup.this.dismiss();
                }
            });
            if (StringUtils.m26038c(this.f26891a)) {
                GlideUtils.GlideRequestBuilder m27025a2 = new GlideUtils.GlideRequestBuilder(imageView, this.f26891a, getActivity()).m27023a(this.f26893c).m27025a(this.f26896f, PorterDuff.Mode.SRC_IN);
                m27025a2.f28241g = Integer.valueOf(this.f26895e);
                m27025a2.m27013d();
            } else {
                imageView.setBackgroundColor(this.f26895e);
                GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder(imageView, this.f26891a, getActivity()).m27023a(this.f26893c);
                m27023a.f28251q = true;
                m27023a.m27013d();
            }
        }
        inflate.findViewById(2131363705).setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.popup.PhotoPopup.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                PhotoPopup.this.dismiss();
                return true;
            }
        });
        this.f26902l = this.f26897g.getContact().getDataSource(ContactField.photoUrl).dbCode;
        this.f26903m = ContactDataUtils.getSocialNetworkID(this.f26897g.getContact(), this.f26902l);
        PresentersContainer presentersContainer = this.f26897g;
        boolean mo30920a = presentersContainer.mo30920a(presentersContainer.getContact());
        if (!mo30920a && (isUserApprovedThisProfile() || this.f26902l == 0 || (jSONSocialNetworkID = this.f26903m) == null || StringUtils.m26059a((CharSequence) jSONSocialNetworkID.getId()))) {
            m28049a();
            this.f26900j.setText(StringUtils.m26049a(this.f26894d, new char[0]));
        } else if (mo30920a) {
            this.f26900j.setVisibility(8);
            this.f26898h.setVisibility(8);
            this.f26899i.setVisibility(8);
            this.f26901k.setVisibility(8);
        } else {
            this.f26900j.setText(Activities.m27697a(2131886919, StringUtils.m26043b(this.f26894d)));
            this.f26901k.setVisibility(8);
            this.f26898h.setVisibility(0);
            this.f26899i.setVisibility(0);
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
