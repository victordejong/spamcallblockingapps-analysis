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
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import java.util.EnumSet;
import java.util.Set;
import okhttp3.HttpUrl;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/GoogleMapsCard.class */
public class GoogleMapsCard extends ContactCard<GoogleMapsViewHolder, c> implements PauseListener, ResumeListener {
    private AddressGeoCodeLatLng addressGeoCodeLatLng;
    private c googleMap;
    private GoogleMapCardListener googleMapsCard;
    private MapView mapView;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/contact/cards/GoogleMapsCard$GoogleMapCardListener.class */
    public interface GoogleMapCardListener {
        void a();

        void a(GoogleMapsCard googleMapsCard);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
        if (Activities.a(intent)) {
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.a(context, intent);
            return;
        }
        Activities.a(context, "http://maps.google.com/maps?daddr=".concat(String.valueOf(charSequence)));
    }

    public static void openViewLocationActivity(Context context, double d2, double d3) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + d2 + "," + d3));
        if (Activities.a(intent)) {
            intent.addFlags(Activities.getIntentFlagForNewDocument());
            Activities.a(context, intent);
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

    public /* synthetic */ void lambda$onCreateViewHolder$1$GoogleMapsCard(c cVar) {
        this.googleMap = cVar;
        updateCardData(cVar, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onBindViewHolder(GoogleMapsViewHolder googleMapsViewHolder) {
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (this.presentersContainer.a(contactData) || contactData.isVoiceMail()) {
            GoogleMapCardListener googleMapCardListener = this.googleMapsCard;
            if (googleMapCardListener != null) {
                googleMapCardListener.a();
                return;
            }
            return;
        }
        if (CollectionUtils.a(set, ContactField.newContact)) {
            this.addressGeoCodeLatLng = new AddressGeoCodeLatLng(0.0d, 0.0d, BitmapDescriptorFactory.HUE_RED);
        }
        AddressGeoCodeLatLng googleMapsLatLng = contactData.getGoogleMapsLatLng();
        if (googleMapsLatLng != null) {
            GoogleMapCardListener googleMapCardListener2 = this.googleMapsCard;
            if (googleMapCardListener2 != null) {
                googleMapCardListener2.a(this);
            }
            AddressGeoCodeLatLng addressGeoCodeLatLng = this.addressGeoCodeLatLng;
            if (addressGeoCodeLatLng != null && !addressGeoCodeLatLng.equals(googleMapsLatLng)) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$GoogleMapsCard$EN53z9oAjAZZ1mD5iqLiVtO1ZRs
                    @Override // java.lang.Runnable
                    public final void run() {
                        GoogleMapsCard.this.lambda$onContactChanged$0$GoogleMapsCard();
                    }
                });
                return;
            }
            return;
        }
        GoogleMapCardListener googleMapCardListener3 = this.googleMapsCard;
        if (googleMapCardListener3 != null) {
            googleMapCardListener3.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public GoogleMapsViewHolder onCreateViewHolder(ViewGroup viewGroup) {
        MapView mapView = (MapView) viewGroup.findViewById(2131363236);
        this.mapView = mapView;
        mapView.a();
        this.mapView.f29344a.b();
        this.mapView.a(new e() { // from class: com.callapp.contacts.activity.contact.cards._$$Lambda$GoogleMapsCard$FZ4eoRZL6HBzNA0vSkJwdNH_7yI
            @Override // com.google.android.gms.maps.e
            public final void onMapReady(c cVar) {
                GoogleMapsCard.this.lambda$onCreateViewHolder$1$GoogleMapsCard(cVar);
            }
        });
        return new GoogleMapsViewHolder(viewGroup);
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard, com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        super.onDestroy();
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f29344a.f();
        }
    }

    @Override // com.callapp.contacts.event.listener.PauseListener
    public void onPause() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f29344a.c();
        }
    }

    @Override // com.callapp.contacts.event.listener.ResumeListener
    public void onResume() {
        MapView mapView = this.mapView;
        if (mapView != null) {
            mapView.f29344a.b();
        }
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public void onThemeChangedInner() {
        if (this.googleMap == null) {
            return;
        }
        if (!ThemeUtils.isThemeLight()) {
            this.googleMap.a(MapStyleOptions.loadRawResourceStyle(getContext(), 2131820583));
        } else {
            this.googleMap.a(new MapStyleOptions(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI));
        }
    }

    public void setGoogleMapsCard(GoogleMapCardListener googleMapCardListener) {
        this.googleMapsCard = googleMapCardListener;
    }

    @Override // com.callapp.contacts.activity.contact.cards.framework.ContactCard
    public boolean showShouldExpandButton() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateCardData(final c cVar, boolean z) {
        if (cVar != null) {
            final String fullAddress = (this.presentersContainer.getContact() == null || this.presentersContainer.getContact().getAddress() == null) ? "" : this.presentersContainer.getContact().getAddress().getFullAddress();
            AddressGeoCodeLatLng googleMapsLatLng = this.presentersContainer.getContact().getGoogleMapsLatLng();
            this.addressGeoCodeLatLng = googleMapsLatLng;
            if (googleMapsLatLng != null) {
                final LatLng latLng = new LatLng(googleMapsLatLng.lat, this.addressGeoCodeLatLng.lng);
                cVar.a().b();
                cVar.a().c();
                cVar.a().a();
                cVar.b();
                if (!ThemeUtils.isThemeLight()) {
                    cVar.a(MapStyleOptions.loadRawResourceStyle(getContext(), 2131820583));
                }
                cVar.a(new MarkerOptions().position(latLng));
                cVar.a(new c.a() { // from class: com.callapp.contacts.activity.contact.cards.GoogleMapsCard.1
                    @Override // com.google.android.gms.maps.c.a
                    public final void a(LatLng latLng2) {
                        AndroidUtils.a(GoogleMapsCard.this.mapView, 1);
                        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Map card clicked");
                        if (!HttpUtils.a()) {
                            FeedbackManager.a(GoogleMapsCard.this.presentersContainer.getRealContext());
                        } else if (StringUtils.b((CharSequence) fullAddress)) {
                            GoogleMapsCard.openNavigationDirections(GoogleMapsCard.this.presentersContainer.getRealContext(), fullAddress);
                        } else {
                            GoogleMapsCard.openViewLocationActivity(GoogleMapsCard.this.presentersContainer.getRealContext(), latLng2.latitude, latLng2.longitude);
                        }
                    }
                });
                cVar.a(b.a(latLng, this.addressGeoCodeLatLng.zoom));
                this.mapView.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.contact.cards.GoogleMapsCard.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (GoogleMapsCard.this.addressGeoCodeLatLng != null) {
                            cVar.a(b.a(latLng, GoogleMapsCard.this.addressGeoCodeLatLng.zoom));
                        }
                    }
                }, 1000L);
                return;
            }
            hideCard();
        }
    }
}
