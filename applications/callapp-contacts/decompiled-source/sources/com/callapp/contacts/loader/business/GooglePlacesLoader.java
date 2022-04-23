package com.callapp.contacts.loader.business;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.external.ExternalSourcesLoader;
import com.callapp.contacts.loader.external.ExternalSourcesUtils;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.GooglePlacesData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.PackageUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import com.facebook.ads.AdError;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/business/GooglePlacesLoader.class */
public class GooglePlacesLoader extends ExternalSourcesLoader<GooglePlacesData> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14559a = new String(Base64.a("aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9tYXBzL3NlYXJjaC8/YXBpPTEmcXVlcnk9YSZxdWVyeV9wbGFjZV9pZD0="));

    static {
        Base64Utils.getInstance();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(LoadContext loadContext, GooglePlacesData googlePlacesData) {
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        contactData.setGooglePlacesData(googlePlacesData);
        MultiTaskRunner b2 = loadContext.b();
        if (CollectionUtils.a(set, ContactField.fullName, ContactField.names)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhoto();
                }
            });
        }
        if (set.contains(ContactField.rating)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateRating();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        if (set.contains(ContactField.latLng)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateLatLng();
                }
            });
        }
        if (set.contains(ContactField.websites)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.6
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebsites();
                }
            });
        }
        if (set.contains(ContactField.openingHours)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.7
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOpeningHours();
                }
            });
        }
        if (CollectionUtils.a(set, ContactField.priceRange)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.8
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePriceRange();
                }
            });
        }
        if (set.contains(ContactField.googlePlaces)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.9
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateGooglePlacesData();
                }
            });
        }
        loadContext.a(b2, this.f14493d);
    }

    public static boolean a(Context context, GooglePlacesData googlePlacesData) {
        if (googlePlacesData == null) {
            return false;
        }
        if (isGooogleMapsAppInstalled() && StringUtils.b((CharSequence) googlePlacesData.getGooglePlaceId())) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(f14559a + googlePlacesData.getGooglePlaceId()));
            intent.setPackage(Constants.GOOGLEMAPS_APPINFO_PACKAGENAME);
            if (Activities.a(intent)) {
                Activities.a(context, intent);
                return true;
            }
        }
        String urlOrBuildUrl = googlePlacesData.getUrlOrBuildUrl();
        if (!StringUtils.b((CharSequence) urlOrBuildUrl)) {
            return false;
        }
        if (HttpUtils.a()) {
            Activities.c(context, urlOrBuildUrl);
            return true;
        }
        FeedbackManager.a(context);
        return false;
    }

    private static boolean isGooogleMapsAppInstalled() {
        return PackageUtils.a(CallAppApplication.get(), Constants.GOOGLEMAPS_APPINFO_PACKAGENAME);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final /* bridge */ /* synthetic */ JSONExternalSourceContact a(GooglePlacesData googlePlacesData) {
        return ExternalSourcesUtils.a(googlePlacesData);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final List<GooglePlacesData> c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        synchronized (contactData.getLock(GooglePlacesLoader.class)) {
            GooglePlacesData googlePlacesData = contactData.getGooglePlacesData();
            if (googlePlacesData == null) {
                return null;
            }
            a(loadContext, googlePlacesData);
            return Collections.singletonList(googlePlacesData);
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public Class<GooglePlacesData> getDataClass() {
        return GooglePlacesData.class;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public int getExernalSourceId() {
        return AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
