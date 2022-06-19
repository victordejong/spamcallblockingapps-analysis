package com.callapp.contacts.activity.contact.details.presenter.simple;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import com.bumptech.glide.load.AbstractC3826l;
import com.bumptech.glide.p112e.C3605h;
import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.util.HashUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.contact.cards.GoogleMapsCard;
import com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter;
import com.callapp.contacts.activity.contact.header.ThemeState;
import com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.api.helper.common.ActivityWithContact;
import com.callapp.contacts.loader.IMExtractedPhotoDataManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.IncognitoCallManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.model.contact.AddressGeoCodeLatLng;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.popup.PhotoPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.CallAppRequestListener;
import com.callapp.contacts.util.glide.CircleBackgroundCrop;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.AbstractC13826e;
import com.google.android.gms.maps.BinderC13847u;
import com.google.android.gms.maps.C13820b;
import com.google.android.gms.maps.C13821c;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.pnikosis.materialishprogress.ProgressWheel;
import java.io.File;
import java.util.EnumSet;
import java.util.Set;
import okhttp3.HttpUrl;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter.class */
public class PhotoPresenter extends ProgressWheelWrapperPresenter implements OnIncognitoCallStartedListener, ThemeChangedListener, CallStateListener, ContactDataChangeListener, AbstractC13826e {
    private static final int PROGRESS_WHEEL_BAR_WIDTH = 8;
    private static final float PROGRESS_WHEEL_SPIN_SPEED = 0.256f;
    private int circleBorderColor;
    private int circleBorderWidth;
    private boolean contactHasProfilePictureUrl;
    private int fullImageBackgroundColor;
    private ViewSwitcher fullImageViewSwitcher;
    private C13821c googleMap;
    private Bitmap googleMapScreenShot;
    private boolean isBlur = true;
    private boolean isIncognito;
    private boolean isSpam;
    private MapView mapView;
    private String photoUrl;
    private int profileImageViewsBackgroundColor;
    private int profileImageViewsInnerColor;
    private ViewSwitcher profilePictureViewSwitcher;

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter$12 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$12.class */
    public class C639612 implements C13821c.AbstractC13823b {
        C639612() {
            PhotoPresenter.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m30716a(Bitmap bitmap) {
            PhotoPresenter.this.googleMapScreenShot = bitmap;
            if (PhotoPresenter.this.presentersContainer.getContact() == null || PhotoPresenter.this.contactHasProfilePictureUrl || PhotoPresenter.this.presentersContainer.getContact().getGoogleMapsLatLng() == null || !HttpUtils.m26985a()) {
                return;
            }
            PhotoPresenter.this.loadMapScreenShot();
            PhotoPresenter.this.saveGoogleMapsPhoto(bitmap);
        }

        @Override // com.google.android.gms.maps.C13821c.AbstractC13823b
        /* renamed from: a */
        public final void mo12167a() {
            C13821c c13821c = PhotoPresenter.this.googleMap;
            try {
                c13821c.f51150a.mo12229a(new BinderC13847u(c13821c, new C13821c.AbstractC13824c() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple._$$Lambda$PhotoPresenter$12$tY5o7UVpUK8kYSmy16ZwfiUhSy4
                    @Override // com.google.android.gms.maps.C13821c.AbstractC13824c
                    public final void onSnapshotReady(Bitmap bitmap) {
                        PhotoPresenter.C639612.this.m30716a(bitmap);
                    }
                }), null);
            } catch (RemoteException e) {
                throw new RuntimeRemoteException(e);
            }
        }
    }

    /* renamed from: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter$14 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/simple/PhotoPresenter$14.class */
    static /* synthetic */ class C639814 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22327a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallState.values().length];
            f22327a = iArr;
            try {
                iArr[CallState.RINGING_INCOMING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22327a[CallState.TALKING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f22327a[CallState.RINGING_OUTGOING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f22327a[CallState.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f22327a[CallState.PRE_CALL.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f22327a[CallState.POST_CALL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private void calcColors() {
        if (this.isIncognito) {
            this.fullImageBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);
            this.profileImageViewsBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099786);
            this.profileImageViewsInnerColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131100145);
        } else if (this.isSpam) {
            this.fullImageBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099675);
            this.profileImageViewsBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099677);
            this.profileImageViewsInnerColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099676);
        } else {
            this.fullImageBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);
            this.profileImageViewsBackgroundColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099786);
            this.profileImageViewsInnerColor = ThemeUtils.m27386a(CallAppApplication.get(), 2131099785);
        }
    }

    private int getIncognitoResourceUri() {
        return PhoneStateManager.get().isAnyCallActive() ? 2131232149 : 2131232150;
    }

    private int getProfilePicPlaceHolder() {
        if (((ThemeState) Prefs.f26417di.get()).equals(ThemeState.WHITE)) {
            return Prefs.f26396dN.isNotNull() ? 2131231743 : 2131231742;
        }
        return 2131231741;
    }

    private void handlePhotoChange(ContactData contactData, Set<ContactField> set) {
        String str;
        if (CollectionUtils.m26073a(set, ContactField.photoUrl, ContactField.hasSuggestions, ContactField.phone, ContactField.isIncognito, ContactField.googleMap, ContactField.spamScore)) {
            this.contactHasProfilePictureUrl = false;
            if (this.presentersContainer.mo30920a(contactData)) {
                str = ImageUtils.getResourceUri(getIncognitoResourceUri());
            } else if (contactData.isVoiceMail()) {
                str = ImageUtils.getResourceUri(2131231612);
            } else if (contactData.isUnknownNumber() && !CollectionUtils.m26073a(set, ContactField.newContact)) {
                str = ImageUtils.getResourceUri(2131231610);
            } else if (StringUtils.m26045b((CharSequence) contactData.getPhotoUrl())) {
                str = contactData.getPhotoUrl();
                this.contactHasProfilePictureUrl = true;
            } else {
                str = ImageUtils.getResourceUri(2131232143);
            }
            if (this.contactHasProfilePictureUrl) {
                setPhotoUrl(str, false);
            } else {
                setPhotoResource(str, false);
            }
            if (this.presentersContainer.getContainerMode() != PresentersContainer.MODE.EDIT_USER_PROFILE_ACTIVITY || !contactData.hasAnyPhotoUrl()) {
                return;
            }
            UserProfileManager.get().m28464a(contactData.getCurrentPhotoDataSource(), contactData.getPhotoUrl());
        }
    }

    public void loadMapScreenShot() {
        this.photoUrl = null;
        this.contactHasProfilePictureUrl = false;
        GlideUtils.m27035b(CallAppApplication.get()).mo27056a(this.googleMapScreenShot).mo27083b(new C3605h().mo27103a(Bitmap.CompressFormat.PNG).mo27074c(100).mo27093a((AbstractC3826l<Bitmap>) new CircleBackgroundCrop(null, null, this.circleBorderWidth, this.circleBorderColor, BitmapDescriptorFactory.HUE_RED, true, true))).m37562a((ImageView) this.profilePictureViewSwitcher.getNextView());
    }

    public void openMap(double d, double d2, String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            GoogleMapsCard.openNavigationDirections(this.presentersContainer.getRealContext(), str);
        } else {
            GoogleMapsCard.openViewLocationActivity(this.presentersContainer.getRealContext(), d, d2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    public void saveGoogleMapsPhoto(Bitmap bitmap) {
        File m28929b;
        if (this.presentersContainer.getContact() == null || bitmap == null) {
            return;
        }
        Phone phone = this.presentersContainer.getContact().getPhone();
        if (!phone.isNotEmpty()) {
            return;
        }
        char c = 0;
        try {
            c = DeviceIdLoader.m28854a(phone, 500);
        } catch (DeviceIdLoader.OperationFailedException e) {
        }
        if (IMExtractedPhotoDataManager.m28930b(c, phone) != null || (m28929b = IMExtractedPhotoDataManager.m28929b(bitmap, HashUtils.m31921a(phone.m26101a()))) == null || !StringUtils.m26045b((CharSequence) m28929b.getAbsolutePath())) {
            return;
        }
        this.presentersContainer.getContact().setImExtractedPhotoData(IMExtractedPhotoDataManager.m28934a(c, phone, DataSource.googleMaps, m28929b.getAbsolutePath()));
        this.presentersContainer.getContact().updatePhoto();
    }

    public void setFullImage(final String str) {
        this.fullImageViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.10
            @Override // java.lang.Runnable
            public void run() {
                PhotoPresenter.this.fullImageViewSwitcher.setBackgroundColor(PhotoPresenter.this.presentersContainer.getContact().getPhotoBGColor() != null ? PhotoPresenter.this.presentersContainer.getContact().getPhotoBGColor().intValue() : ThemeUtils.getColor(2131100228));
                GlideUtils.GlideRequestBuilder m27023a = new GlideUtils.GlideRequestBuilder((ImageView) PhotoPresenter.this.fullImageViewSwitcher.getNextView(), str, PhotoPresenter.this.presentersContainer.getRealContext()).m27023a(PhotoPresenter.this.presentersContainer.getContact() != null ? PhotoPresenter.this.presentersContainer.getContact().getPhotoDataSource() : null);
                m27023a.f28238d = PhotoPresenter.this.fullImageViewSwitcher;
                m27023a.f28248n = new CallAppRequestListener(str, PhotoPresenter.this.presentersContainer.getContact());
                if (PhotoPresenter.this.isBlur) {
                    m27023a.f28247m = true;
                } else {
                    m27023a.f28251q = true;
                }
                m27023a.m27013d();
            }
        });
    }

    public void setGoogleMap() {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.11
            @Override // java.lang.Runnable
            public void run() {
                AddressGeoCodeLatLng googleMapsLatLng = PhotoPresenter.this.presentersContainer.getContact().getGoogleMapsLatLng();
                if (PhotoPresenter.this.googleMap == null || googleMapsLatLng == null) {
                    return;
                }
                LatLng latLng = new LatLng(googleMapsLatLng.lat, googleMapsLatLng.lng);
                PhotoPresenter.this.googleMap.m12175a().m12146b();
                PhotoPresenter.this.googleMap.m12175a().m12145c();
                PhotoPresenter.this.googleMap.m12175a().m12147a();
                PhotoPresenter.this.googleMap.m12169b();
                PhotoPresenter.this.setGoogleMapTheme(false, true);
                PhotoPresenter.this.googleMap.m12170a(new MarkerOptions().position(latLng));
                PhotoPresenter.this.googleMap.m12174a(C13820b.m12176a(latLng, googleMapsLatLng.zoom));
                PhotoPresenter.this.googleMap.m12173a(new C13821c.AbstractC13822a() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.11.1
                    @Override // com.google.android.gms.maps.C13821c.AbstractC13822a
                    /* renamed from: a */
                    public final void mo12168a(LatLng latLng2) {
                        AndroidUtils.m27630a(PhotoPresenter.this.mapView, 1);
                        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Map clicked from photo presenter");
                        if (!HttpUtils.m26985a()) {
                            FeedbackManager.m28675a(PhotoPresenter.this.presentersContainer.getRealContext());
                            return;
                        }
                        String str = null;
                        JSONAddress address = PhotoPresenter.this.presentersContainer.getContact().getAddress();
                        if (address != null) {
                            str = address.getFullAddress();
                        }
                        PhotoPresenter.this.openMap(latLng2.latitude, latLng2.longitude, str);
                    }
                });
            }
        });
    }

    public void setGoogleMapTheme(boolean z, boolean z2) {
        if (this.googleMap != null) {
            if (z2) {
                if (!ThemeUtils.isThemeLight()) {
                    this.googleMap.m12171a(MapStyleOptions.loadRawResourceStyle(this.presentersContainer.getRealContext(), 2131820583));
                } else {
                    this.googleMap.m12171a(new MapStyleOptions(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
                }
            }
            if (!z) {
                return;
            }
            this.googleMap.m12172a(new C639612());
        }
    }

    private void setPhotoResource(final String str, final boolean z) {
        if (this.presentersContainer.getContact() != null && GooglePlayUtils.isGooglePlayServicesAvailable() && this.presentersContainer.getContact().getGoogleMapsLatLng() != null && StringUtils.m26042b(str, this.presentersContainer.getDefaultContactResourceUri()) && HttpUtils.m26985a() && !Prefs.f26643hw.get().booleanValue()) {
            ViewUtils.m27314a((View) this.fullImageViewSwitcher, false);
            this.profilePictureViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.5
                @Override // java.lang.Runnable
                public void run() {
                    if (ViewUtils.m27329a(PhotoPresenter.this.mapView)) {
                        PhotoPresenter.this.mapView.invalidate();
                        PhotoPresenter.this.setGoogleMap();
                        PhotoPresenter.this.loadMapScreenShot();
                        return;
                    }
                    ViewStub viewStub = (ViewStub) PhotoPresenter.this.presentersContainer.findViewById(2131363235);
                    PhotoPresenter.this.mapView = (MapView) viewStub.inflate();
                    PhotoPresenter.this.mapView.m12256a();
                    PhotoPresenter.this.mapView.f51120a.m18988b();
                    PhotoPresenter.this.mapView.m12255a(PhotoPresenter.this);
                }
            });
            return;
        }
        this.photoUrl = str;
        this.profilePictureViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.6
            @Override // java.lang.Runnable
            public void run() {
                GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder((ImageView) PhotoPresenter.this.profilePictureViewSwitcher.getNextView(), str, PhotoPresenter.this.presentersContainer.getRealContext());
                glideRequestBuilder.f28241g = Integer.valueOf(PhotoPresenter.this.profileImageViewsBackgroundColor);
                glideRequestBuilder.f28238d = PhotoPresenter.this.profilePictureViewSwitcher;
                GlideUtils.GlideRequestBuilder m27025a = glideRequestBuilder.m27025a(PhotoPresenter.this.profileImageViewsInnerColor, PorterDuff.Mode.SRC_IN);
                m27025a.f28246l = true;
                m27025a.f28250p = z;
                m27025a.m27018b(PhotoPresenter.this.circleBorderWidth, PhotoPresenter.this.circleBorderColor).m27013d();
            }
        });
        this.fullImageViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.7
            @Override // java.lang.Runnable
            public void run() {
                ViewUtils.m27314a((View) PhotoPresenter.this.fullImageViewSwitcher, true);
                GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder((ImageView) PhotoPresenter.this.fullImageViewSwitcher.getNextView(), str, PhotoPresenter.this.presentersContainer.getRealContext()).m27025a(PhotoPresenter.this.profileImageViewsInnerColor, PorterDuff.Mode.SRC_IN);
                m27025a.f28241g = Integer.valueOf(PhotoPresenter.this.fullImageBackgroundColor);
                m27025a.f28239e = PhotoPresenter.this.presentersContainer.getRealContext();
                m27025a.f28238d = PhotoPresenter.this.fullImageViewSwitcher;
                m27025a.m27013d();
            }
        });
    }

    private void setPhotoUrl(final String str, final boolean z) {
        if (!StringUtils.m26042b(this.photoUrl, str) || z) {
            this.photoUrl = str;
            this.fullImageViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.8
                @Override // java.lang.Runnable
                public void run() {
                    ViewUtils.m27314a((View) PhotoPresenter.this.fullImageViewSwitcher, true);
                    if (!z) {
                        PhotoPresenter.this.setFullImage(str);
                    }
                }
            });
            this.profilePictureViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.9
                @Override // java.lang.Runnable
                public void run() {
                    if (StringUtils.m26045b((CharSequence) str)) {
                        PhotoPresenter.this.setProfilePhoto(z, str);
                    }
                }
            });
        }
    }

    public void setProfilePhoto(boolean z, String str) {
        ContactData contact = this.presentersContainer.getContact();
        GlideUtils.GlideRequestBuilder m27018b = new GlideUtils.GlideRequestBuilder((ImageView) this.profilePictureViewSwitcher.getNextView(), str, this.presentersContainer.getRealContext()).m27018b(this.circleBorderWidth, this.circleBorderColor);
        m27018b.f28238d = this.profilePictureViewSwitcher;
        GlideUtils.GlideRequestBuilder m27023a = m27018b.m27023a(this.presentersContainer.getContact() != null ? this.presentersContainer.getContact().getPhotoDataSource() : null);
        m27023a.f28241g = Integer.valueOf(contact.getPhotoBGColor() != null ? contact.getPhotoBGColor().intValue() : ThemeUtils.getColor(2131100228));
        m27023a.f28246l = true;
        m27023a.f28250p = z;
        m27023a.m27013d();
    }

    private void setProgressWheelBarWidth(int i) {
        ProgressWheel progressWheel = getProgressWheel();
        if (progressWheel != null) {
            progressWheel.setBarWidth(i);
        }
    }

    private void setProgressWheelSpinSpeed(float f) {
        ProgressWheel progressWheel = getProgressWheel();
        if (progressWheel != null) {
            progressWheel.setSpinSpeed(f);
        }
    }

    public void startPhotoPopup(ActivityWithContact activityWithContact, ContactData contactData) {
        String defaultContactResourceUri = this.presentersContainer.getDefaultContactResourceUri();
        if (this.presentersContainer.mo30920a(contactData)) {
            defaultContactResourceUri = ImageUtils.getResourceUri(getIncognitoResourceUri());
        } else if (contactData.hasAnyPhotoUrl()) {
            defaultContactResourceUri = contactData.getPhotoUrl();
        }
        if (contactData.getDataSource(ContactField.photoUrl) == DataSource.googleMaps && contactData.getGoogleMapsLatLng() != null && HttpUtils.m26985a()) {
            AddressGeoCodeLatLng googleMapsLatLng = contactData.getGoogleMapsLatLng();
            openMap(googleMapsLatLng.lat, googleMapsLatLng.lng, contactData.getAddress() != null ? contactData.getAddress().getFullAddress() : null);
        } else if (StringUtils.m26042b(defaultContactResourceUri, this.presentersContainer.getDefaultContactResourceUri())) {
            PopupManager.get().m28209a(activityWithContact, new PhotoPopup(this.presentersContainer, defaultContactResourceUri, contactData.getPhotoDataSource(), this.profileImageViewsBackgroundColor, this.profileImageViewsInnerColor));
        } else {
            PopupManager.get().m28209a(activityWithContact, new PhotoPopup(this.presentersContainer, defaultContactResourceUri, contactData.getPhotoDataSource(), contactData.getPhotoBGColor() != null ? contactData.getPhotoBGColor().intValue() : ThemeUtils.getColor(2131100228), this.profileImageViewsInnerColor));
        }
        FeedbackManager.get().m28667a(contactData.getPhotoUrl(), (Integer) 80, (Integer) 1);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter
    protected ProgressWheel getProgressWheel() {
        ProfilePictureView profilePictureView = (ProfilePictureView) getPresentersContainer().findViewById(2131363560);
        if (profilePictureView != null) {
            return profilePictureView.getProgressWheel();
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(CallData callData) {
        String str;
        Phone number = callData.getNumber();
        switch (C639814.f22327a[callData.getState().ordinal()]) {
            case 1:
                if (this.presentersContainer.getContact() != null && this.presentersContainer.getContact().getPhones().contains(number) && this.presentersContainer.mo30920a(this.presentersContainer.getContact())) {
                    str = ImageUtils.getResourceUri(2131232149);
                    break;
                }
                str = null;
                break;
            case 2:
            case 3:
                if (this.presentersContainer.getContact() != null && this.presentersContainer.mo30920a(this.presentersContainer.getContact())) {
                    str = ImageUtils.getResourceUri(2131232149);
                    break;
                }
                str = null;
                break;
            case 4:
            case 5:
                if (this.presentersContainer.mo30920a(this.presentersContainer.getContact())) {
                    str = ImageUtils.getResourceUri(2131232150);
                    break;
                }
                str = null;
                break;
            case 6:
                if (this.isIncognito) {
                    setPhotoResource(ImageUtils.getResourceUri(getIncognitoResourceUri()), false);
                }
                str = null;
                break;
            default:
                str = null;
                break;
        }
        if (StringUtils.m26045b((CharSequence) str)) {
            setPhotoResource(str, false);
        }
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        super.onContactChanged(contactData, set);
        CLog.m27611a(getClass(), set.toString());
        if (CollectionUtils.m26073a(set, ContactField.spamScore, ContactField.deviceId)) {
            this.isSpam = UserCorrectedInfoUtil.m27345a(contactData);
        }
        if (CollectionUtils.m26073a(set, ContactField.isIncognito)) {
            this.isIncognito = this.presentersContainer.mo30920a(contactData) || IncognitoCallManager.get().isIncognito(contactData.getPhone());
        }
        if (CollectionUtils.m26073a(set, ContactField.newContact)) {
            this.googleMapScreenShot = null;
        }
        calcColors();
        if (contactData.isVoiceMail()) {
            setPhotoClickedListener(null);
            setPhotoLongClickedListener(null);
        }
        handlePhotoChange(contactData, set);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(final PresentersContainer presentersContainer) {
        super.onCreate(presentersContainer);
        this.photoUrl = ImageUtils.getResourceUri(getProfilePicPlaceHolder());
        EnumSet of = EnumSet.of(ContactField.isIncognito, ContactField.photoUrl, ContactField.spamScore, ContactField.deviceId, ContactField.genomeData, ContactField.newContact, ContactField.hasSuggestions, ContactField.phone, ContactField.googleMap);
        of.addAll(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS);
        presentersContainer.addContactChangedListener(this, of);
        presentersContainer.addCallStateListener(this);
        presentersContainer.getEventBus().m29048a(OnIncognitoCallStartedListener.f23126a, this);
        presentersContainer.getEventBus().m29048a(ThemeChangedListener.f23141i, this);
        this.circleBorderWidth = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165556);
        this.circleBorderColor = (!((ThemeState) Prefs.f26417di.get()).equals(ThemeState.WHITE) || !Prefs.f26396dN.isNull()) ? -1 : ThemeUtils.getColor(2131099918);
        calcColors();
        ViewSwitcher viewSwitcher = (ViewSwitcher) presentersContainer.findViewById(2131363567);
        this.profilePictureViewSwitcher = viewSwitcher;
        viewSwitcher.setOutAnimation(null);
        this.profilePictureViewSwitcher.setInAnimation(null);
        ViewSwitcher viewSwitcher2 = (ViewSwitcher) presentersContainer.findViewById(2131362883);
        this.fullImageViewSwitcher = viewSwitcher2;
        ViewUtils.m27286h(viewSwitcher2.findViewById(2131362882), Activities.getScreenWidth(1));
        ViewUtils.m27286h(this.fullImageViewSwitcher.findViewById(2131362880), Activities.getScreenWidth(1));
        this.fullImageViewSwitcher.setOutAnimation(null);
        this.fullImageViewSwitcher.setInAnimation(null);
        ((ImageView) this.profilePictureViewSwitcher.getCurrentView()).setImageResource(getProfilePicPlaceHolder());
        ContactData contact = presentersContainer.getContact();
        if (contact != null) {
            final String photoUrl = contact.getPhotoUrl();
            if (StringUtils.m26045b((CharSequence) photoUrl)) {
                this.photoUrl = photoUrl;
                this.profilePictureViewSwitcher.post(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PhotoPresenter.this.setProfilePhoto(false, photoUrl);
                    }
                });
                setFullImage(photoUrl);
            }
        }
        this.profilePictureViewSwitcher.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                ContactData contact2;
                if (!(presentersContainer.getRealContext() instanceof ActivityWithContact) || !presentersContainer.isClickValid(view) || (contact2 = presentersContainer.getContact()) == null) {
                    return;
                }
                ActivityWithContact activityWithContact = (ActivityWithContact) presentersContainer.getRealContext();
                if (contact2.hasAnyPhotoUrl()) {
                    AndroidUtils.m27630a(view, 1);
                    AnalyticsManager.get().m28442a("Picture", false, presentersContainer);
                    if (presentersContainer.getContainerMode() == PresentersContainer.MODE.CONTACT_DETAILS_SCREEN) {
                        AnalyticsManager.get().m28450a(Constants.USER_CORRECTED_INFO, "Click on contact image");
                        AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Profile picture clicked");
                    }
                }
                PhotoPresenter.this.startPhotoPopup(activityWithContact, contact2);
            }
        });
        this.profilePictureViewSwitcher.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (!(presentersContainer.getRealContext() instanceof Activity) || !presentersContainer.isClickValid(view)) {
                    return false;
                }
                PresentersContainer presentersContainer2 = presentersContainer;
                if (presentersContainer2.mo30920a(presentersContainer2.getContact())) {
                    return false;
                }
                Activity activity = (Activity) presentersContainer.getRealContext();
                AndroidUtils.m27635a(activity);
                ChooseSocialProfileActivity.openContactProfile(activity, presentersContainer.getContact());
                return true;
            }
        });
        setProgressWheelBarWidth(8);
        setProgressWheelSpinSpeed(PROGRESS_WHEEL_SPIN_SPEED);
        presentersContainer.addContactDetailsParallaxPositionChanged(new BaseContactDetailsParallaxImpl.PositionChangedListener() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.4
            @Override // com.callapp.contacts.activity.contact.details.BaseContactDetailsParallaxImpl.PositionChangedListener
            /* renamed from: a */
            public final void mo30715a(BaseContactDetailsParallaxImpl.Position position) {
                boolean z = position != BaseContactDetailsParallaxImpl.Position.OPEN;
                if (!PhotoPresenter.this.contactHasProfilePictureUrl || PhotoPresenter.this.isBlur == z) {
                    return;
                }
                PhotoPresenter.this.isBlur = z;
                if (!StringUtils.m26045b((CharSequence) PhotoPresenter.this.photoUrl)) {
                    return;
                }
                PhotoPresenter photoPresenter = PhotoPresenter.this;
                photoPresenter.setFullImage(photoPresenter.photoUrl);
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.simple.ProgressWheelWrapperPresenter, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f51120a.m18983f();
        }
        this.googleMapScreenShot = null;
        this.presentersContainer.getEventBus().m29045b(OnIncognitoCallStartedListener.f23126a, this);
        this.presentersContainer.getEventBus().m29045b(ThemeChangedListener.f23141i, this);
        this.presentersContainer.removeCallStateListener(this);
    }

    @Override // com.callapp.contacts.activity.interfaces.OnIncognitoCallStartedListener
    public void onIncognitoCallStarted(ContactData contactData) {
        this.isIncognito = true;
        calcColors();
        setPhotoResource(ImageUtils.getResourceUri(getIncognitoResourceUri()), false);
    }

    @Override // com.google.android.gms.maps.AbstractC13826e
    public void onMapReady(C13821c c13821c) {
        this.googleMap = c13821c;
        setGoogleMap();
        c13821c.m12172a(new C13821c.AbstractC13823b() { // from class: com.callapp.contacts.activity.contact.details.presenter.simple.PhotoPresenter.13
            @Override // com.google.android.gms.maps.C13821c.AbstractC13823b
            /* renamed from: a */
            public final void mo12167a() {
                PhotoPresenter.this.setGoogleMapTheme(true, false);
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        int color = (!((ThemeState) Prefs.f26417di.get()).equals(ThemeState.WHITE) || !Prefs.f26396dN.isNull()) ? -1 : ThemeUtils.getColor(2131099918);
        if (this.circleBorderColor != color) {
            this.circleBorderColor = color;
            if (!this.contactHasProfilePictureUrl || !StringUtils.m26045b((CharSequence) this.photoUrl)) {
                if (this.presentersContainer.mo30920a(this.presentersContainer.getContact())) {
                    this.photoUrl = ImageUtils.getResourceUri(ThemeUtils.isThemeLight() ? 2131232150 : 2131232149);
                }
                calcColors();
                setPhotoResource(this.photoUrl, true);
            } else {
                setPhotoUrl(this.photoUrl, true);
            }
        }
        setGoogleMapTheme(true, true);
    }

    public void setPhotoClickedListener(View.OnClickListener onClickListener) {
        this.profilePictureViewSwitcher.setOnClickListener(onClickListener);
    }

    public void setPhotoLongClickedListener(View.OnLongClickListener onLongClickListener) {
        this.profilePictureViewSwitcher.setOnLongClickListener(onLongClickListener);
    }
}
