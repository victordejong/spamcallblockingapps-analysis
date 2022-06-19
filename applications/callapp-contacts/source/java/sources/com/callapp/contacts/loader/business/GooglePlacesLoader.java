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

    /* renamed from: a */
    private static final String f25348a = new String(Base64.m26006a("aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9tYXBzL3NlYXJjaC8/YXBpPTEmcXVlcnk9YSZxdWVyeV9wbGFjZV9pZD0="));

    static {
        Base64Utils.getInstance();
    }

    /* renamed from: a */
    public void mo28808a(LoadContext loadContext, GooglePlacesData googlePlacesData) {
        Set<ContactField> set = loadContext.f25323b;
        final ContactData contactData = loadContext.f25322a;
        contactData.setGooglePlacesData(googlePlacesData);
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (CollectionUtils.m26073a(set, ContactField.fullName, ContactField.names)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhoto();
                }
            });
        }
        if (set.contains(ContactField.rating)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateRating();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        if (set.contains(ContactField.latLng)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateLatLng();
                }
            });
        }
        if (set.contains(ContactField.websites)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.6
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebsites();
                }
            });
        }
        if (set.contains(ContactField.openingHours)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.7
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOpeningHours();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.priceRange)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.8
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePriceRange();
                }
            });
        }
        if (set.contains(ContactField.googlePlaces)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.business.GooglePlacesLoader.9
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateGooglePlacesData();
                }
            });
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    /* renamed from: a */
    public static boolean m28860a(Context context, GooglePlacesData googlePlacesData) {
        if (googlePlacesData != null) {
            if (isGooogleMapsAppInstalled() && StringUtils.m26045b((CharSequence) googlePlacesData.getGooglePlaceId())) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(f25348a + googlePlacesData.getGooglePlaceId()));
                intent.setPackage(Constants.GOOGLEMAPS_APPINFO_PACKAGENAME);
                if (Activities.m27672a(intent)) {
                    Activities.m27685a(context, intent);
                    return true;
                }
            }
            String urlOrBuildUrl = googlePlacesData.getUrlOrBuildUrl();
            if (!StringUtils.m26045b((CharSequence) urlOrBuildUrl)) {
                return false;
            }
            if (HttpUtils.m26985a()) {
                Activities.m27646c(context, urlOrBuildUrl);
                return true;
            }
            FeedbackManager.m28675a(context);
            return false;
        }
        return false;
    }

    private static boolean isGooogleMapsAppInstalled() {
        return PackageUtils.m27437a(CallAppApplication.get(), Constants.GOOGLEMAPS_APPINFO_PACKAGENAME);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ JSONExternalSourceContact mo28805a(GooglePlacesData googlePlacesData) {
        return ExternalSourcesUtils.m28827a(googlePlacesData);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    public final List<GooglePlacesData> mo28800c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        synchronized (contactData.getLock(GooglePlacesLoader.class)) {
            GooglePlacesData googlePlacesData = contactData.getGooglePlacesData();
            if (googlePlacesData == null) {
                return null;
            }
            mo28808a(loadContext, googlePlacesData);
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
