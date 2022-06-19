package com.callapp.contacts.activity.contact.cards;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.ViewGroup;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.cards.framework.ContactCard;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.AddressGeoCodeLatLng;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.AbstractC13826e;
import com.google.android.gms.maps.C13820b;
import com.google.android.gms.maps.C13821c;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.EnumSet;
import java.util.Set;
import okhttp3.HttpUrl;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/GoogleMapsCard.class */
public class GoogleMapsCard extends ContactCard<GoogleMapsViewHolder, C13821c> implements PauseListener, ResumeListener {
    private AddressGeoCodeLatLng addressGeoCodeLatLng;
    private C13821c googleMap;
    private GoogleMapCardListener googleMapsCard;
    private MapView mapView;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener.class */
    public interface GoogleMapCardListener {
        /* renamed from: a */
        void mo31234a();

        /* renamed from: a */
        void mo31233a(GoogleMapsCard googleMapsCard);
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapsViewHolder.class */
    public static class GoogleMapsViewHolder {
        GoogleMapsViewHolder(ViewGroup viewGroup) {
            viewGroup.findViewById(2131363131);
        }
    }

    public GoogleMapsCard(PresentersContainer presentersContainer) {
        super(presentersContainer, 2131558527);
        presentersContainer.addResumeListener(this);
        presentersContainer.addPauseListener(this);
    }

    public static void openNavigationDirections(Context context, CharSequence charSequence) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("google.navigation:q=".concat(String.valueOf(charSequence))));
        if (!Activities.m27672a(intent)) {
            Activities.m27679a(context, "http://maps.google.com/maps?daddr=".concat(String.valueOf(charSequence)));
            return;
        }
        intent.addFlags(Activities.getIntentFlagForNewDocument());
        Activities.m27685a(context, intent);
    }

    public static void openViewLocationActivity(Context context, double d, double d2) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + d + "," + d2));
        if (Activities.m27672a(intent)) {
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.m27685a(context, intent);
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getCardInitHeight() {
        return getContext().getResources().getDimensionPixelSize(2131165670);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public String getHeaderTitle() {
        return null;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.googleMap, ContactField.newContact);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public int getPriority() {
        return 100;
    }

    public /* synthetic */ void lambda$onContactChanged$0$GoogleMapsCard() {
        updateCardData(this.googleMap, true);
    }

    public /* synthetic */ void lambda$onCreateViewHolder$1$GoogleMapsCard(C13821c c13821c) {
        this.googleMap = c13821c;
        updateCardData(c13821c, true);
    }

    public void onBindViewHolder(GoogleMapsViewHolder googleMapsViewHolder) {
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.mo30920a(contactData) || contactData.isVoiceMail()) {
            GoogleMapCardListener googleMapCardListener = this.googleMapsCard;
            if (googleMapCardListener == null) {
                return;
            }
            googleMapCardListener.mo31234a();
            return;
        }
        if (CollectionUtils.m26073a(set, ContactField.newContact)) {
            this.addressGeoCodeLatLng = new AddressGeoCodeLatLng(0.0d, 0.0d, BitmapDescriptorFactory.HUE_RED);
        }
        AddressGeoCodeLatLng googleMapsLatLng = contactData.getGoogleMapsLatLng();
        if (googleMapsLatLng == null) {
            GoogleMapCardListener googleMapCardListener2 = this.googleMapsCard;
            if (googleMapCardListener2 == null) {
                return;
            }
            googleMapCardListener2.mo31234a();
            return;
        }
        GoogleMapCardListener googleMapCardListener3 = this.googleMapsCard;
        if (googleMapCardListener3 != null) {
            googleMapCardListener3.mo31233a(this);
        }
        AddressGeoCodeLatLng addressGeoCodeLatLng = this.addressGeoCodeLatLng;
        if (addressGeoCodeLatLng == null || addressGeoCodeLatLng.equals(googleMapsLatLng)) {
            return;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$GoogleMapsCard$EN53z9oAjAZZ1mD5iqLiVtO1ZRs
            @Override // java.lang.Runnable
            public final void run() {
                GoogleMapsCard.this.lambda$onContactChanged$0$GoogleMapsCard();
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public GoogleMapsViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        MapView mapView = (MapView) viewGroup.findViewById(2131363236);
        this.mapView = mapView;
        mapView.m12256a();
        this.mapView.f51120a.m18988b();
        this.mapView.m12255a(new AbstractC13826e() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$GoogleMapsCard$FZ4eoRZL6HBzNA0vSkJwdNH_7yI
            @Override // com.google.android.gms.maps.AbstractC13826e
            public final void onMapReady(C13821c c13821c) {
                GoogleMapsCard.this.lambda$onCreateViewHolder$1$GoogleMapsCard(c13821c);
            }
        });
        return new GoogleMapsViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f51120a.m18983f();
        }
    }

    @Override // com.callapp.contacts.event.listener.PauseListener
    public void onPause() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f51120a.m18986c();
        }
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f51120a.m18988b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        if (this.googleMap != null) {
            if (!ThemeUtils.isThemeLight()) {
                this.googleMap.m12171a(MapStyleOptions.loadRawResourceStyle(getContext(), 2131820583));
            } else {
                this.googleMap.m12171a(new MapStyleOptions(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
            }
        }
    }

    public void setGoogleMapsCard(GoogleMapCardListener googleMapCardListener) {
        this.googleMapsCard = googleMapCardListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    public void updateCardData(final C13821c c13821c, boolean z) {
        if (c13821c != null) {
            String fullAddress = (this.presentersContainer.getContact() == null || this.presentersContainer.getContact().getAddress() == null) ? "" : this.presentersContainer.getContact().getAddress().getFullAddress();
            AddressGeoCodeLatLng googleMapsLatLng = this.presentersContainer.getContact().getGoogleMapsLatLng();
            this.addressGeoCodeLatLng = googleMapsLatLng;
            if (googleMapsLatLng == null) {
                hideCard();
                return;
            }
            final LatLng latLng = new LatLng(googleMapsLatLng.lat, this.addressGeoCodeLatLng.lng);
            c13821c.m12175a().m12146b();
            c13821c.m12175a().m12145c();
            c13821c.m12175a().m12147a();
            c13821c.m12169b();
            if (!ThemeUtils.isThemeLight()) {
                c13821c.m12171a(MapStyleOptions.loadRawResourceStyle(getContext(), 2131820583));
            }
            c13821c.m12170a(new MarkerOptions().position(latLng));
            final String str = fullAddress;
            c13821c.m12173a(new C13821c.AbstractC13822a() { // from class: com.callapp.contacts.activity.contact.cards.GoogleMapsCard.1
                @Override // com.google.android.gms.maps.C13821c.AbstractC13822a
                /* renamed from: a */
                public final void mo12168a(LatLng latLng2) {
                    AndroidUtils.m27630a(GoogleMapsCard.this.mapView, 1);
                    AnalyticsManager.get().m28450a(Constants.CONTACT_DETAILS, "Map card clicked");
                    if (!HttpUtils.m26985a()) {
                        FeedbackManager.m28675a(GoogleMapsCard.this.presentersContainer.getRealContext());
                    } else if (StringUtils.m26045b((CharSequence) str)) {
                        GoogleMapsCard.openNavigationDirections(GoogleMapsCard.this.presentersContainer.getRealContext(), str);
                    } else {
                        GoogleMapsCard.openViewLocationActivity(GoogleMapsCard.this.presentersContainer.getRealContext(), latLng2.latitude, latLng2.longitude);
                    }
                }
            });
            c13821c.m12174a(C13820b.m12176a(latLng, this.addressGeoCodeLatLng.zoom));
            this.mapView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.GoogleMapsCard.2
                @Override // java.lang.Runnable
                public void run() {
                    if (GoogleMapsCard.this.addressGeoCodeLatLng != null) {
                        c13821c.m12174a(C13820b.m12176a(latLng, GoogleMapsCard.this.addressGeoCodeLatLng.zoom));
                    }
                }
            }, 1000L);
        }
    }
}
