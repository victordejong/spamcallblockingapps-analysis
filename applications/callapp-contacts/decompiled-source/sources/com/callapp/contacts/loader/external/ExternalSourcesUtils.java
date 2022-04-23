package com.callapp.contacts.loader.external;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONCategory;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.common.model.json.JSONFBLocation;
import com.callapp.common.model.json.JSONFBType;
import com.callapp.common.model.json.JSONFBUserOrPage;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.GooglePlacesData;
import com.callapp.contacts.model.contact.HuaweiPlaceData;
import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntity;
import com.callapp.contacts.model.objectbox.JSONExternalSourceContactOBEntity_;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.serializer.string.Serializer;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.JsonMappingException;
import io.objectbox.a;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/ExternalSourcesUtils.class */
public class ExternalSourcesUtils {
    public static JSONExternalSourceContact a(GooglePlacesData googlePlacesData) {
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setIdentifier(googlePlacesData.getGooglePlaceId());
        jSONExternalSourceContact.setName(googlePlacesData.getFullName());
        jSONExternalSourceContact.setLat(googlePlacesData.getLat());
        jSONExternalSourceContact.setLng(googlePlacesData.getLng());
        if (googlePlacesData.getAddress() != null) {
            jSONExternalSourceContact.setAddresses(Collections.singletonList(googlePlacesData.getAddress()));
        }
        jSONExternalSourceContact.setAvgRating(googlePlacesData.getAvgRating());
        if (googlePlacesData.getCategories() != null) {
            jSONExternalSourceContact.setCategories(new ArrayList(googlePlacesData.getCategories()));
        }
        jSONExternalSourceContact.setDescription(googlePlacesData.getDescription());
        jSONExternalSourceContact.setOpeningHours(googlePlacesData.getOpeningHours());
        jSONExternalSourceContact.setPhotoUrl(googlePlacesData.getPhotoUrl());
        jSONExternalSourceContact.setPriceRange(googlePlacesData.getPriceRange());
        if (googlePlacesData.getReviews() != null) {
            jSONExternalSourceContact.setReviews(new ArrayList(googlePlacesData.getReviews()));
        }
        if (googlePlacesData.getWebsite() != null) {
            jSONExternalSourceContact.setWebsites(Collections.singletonList(googlePlacesData.getWebsite()));
        }
        jSONExternalSourceContact.setSeeInsidePanoId(googlePlacesData.getSeeInsidePanoId());
        jSONExternalSourceContact.setUrl(googlePlacesData.getUrl());
        jSONExternalSourceContact.setAtAGlance(googlePlacesData.getAtAGlance());
        jSONExternalSourceContact.setMenuUrl(googlePlacesData.getMenuUrl());
        jSONExternalSourceContact.setReserveUrl(googlePlacesData.getReserveUrl());
        return jSONExternalSourceContact;
    }

    public static JSONExternalSourceContact a(HuaweiPlaceData huaweiPlaceData) {
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setExternalSourceId(1022);
        if (huaweiPlaceData != null) {
            jSONExternalSourceContact.setIdentifier(huaweiPlaceData.getSiteId());
            ArrayList arrayList = new ArrayList();
            arrayList.add(new JSONPhoneNumber(huaweiPlaceData.getKey()));
            jSONExternalSourceContact.setPhoneNumbers(arrayList);
            jSONExternalSourceContact.setName(huaweiPlaceData.getFullName());
            if (huaweiPlaceData.getAddress() != null) {
                jSONExternalSourceContact.setAddresses(Collections.singletonList(huaweiPlaceData.getAddress()));
            }
            jSONExternalSourceContact.setAvgRating(huaweiPlaceData.getAvgRating());
            jSONExternalSourceContact.setType(2);
            jSONExternalSourceContact.setOpeningHours(huaweiPlaceData.getOpeningHours());
            if (huaweiPlaceData.getWebsite() != null) {
                jSONExternalSourceContact.setWebsites(Collections.singletonList(huaweiPlaceData.getWebsite()));
            }
            jSONExternalSourceContact.setLat(huaweiPlaceData.getLat());
            jSONExternalSourceContact.setLng(huaweiPlaceData.getLng());
            if (huaweiPlaceData.getOpeningHours() != null) {
                jSONExternalSourceContact.setOpeningHours(huaweiPlaceData.getOpeningHours());
            }
            jSONExternalSourceContact.setPhotoUrl(huaweiPlaceData.getPhotoUrl());
        }
        return jSONExternalSourceContact;
    }

    private static Set<Phone> a(JSONFBUserOrPage jSONFBUserOrPage) {
        String phone = jSONFBUserOrPage.getPhone();
        HashSet hashSet = new HashSet();
        if (StringUtils.b((CharSequence) phone)) {
            Phone a2 = PhoneManager.get().a(phone);
            if (a2.isValidForSearch()) {
                hashSet.add(a2);
            } else {
                String[] split = phone.split("/");
                if (split.length > 1) {
                    for (String str : split) {
                        Phone a3 = PhoneManager.get().a(str);
                        if (a3.isValidForSearch()) {
                            hashSet.add(a3);
                        }
                    }
                }
                String[] split2 = phone.split(",");
                if (split2.length > 1) {
                    for (String str2 : split2) {
                        Phone a4 = PhoneManager.get().a(str2);
                        if (a4.isValidForSearch()) {
                            hashSet.add(a4);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public static void a() {
        CallAppApplication.get().getObjectBoxStore().d(JSONExternalSourceContactOBEntity.class).d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(JSONExternalSourceContact jSONExternalSourceContact) throws IOException {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(JSONExternalSourceContactOBEntity.class);
        StringWriter stringWriter = new StringWriter();
        Serializer.getJSONObjectMapper().writeValue(stringWriter, jSONExternalSourceContact);
        String stringWriter2 = stringWriter.toString();
        JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity = (JSONExternalSourceContactOBEntity) d2.e().a(JSONExternalSourceContactOBEntity_.key, jSONExternalSourceContact.getKey()).a(JSONExternalSourceContactOBEntity_.externalSourceId, jSONExternalSourceContact.getExternalSourceId()).a().a();
        JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity2 = jSONExternalSourceContactOBEntity;
        if (jSONExternalSourceContactOBEntity == null) {
            jSONExternalSourceContactOBEntity2 = new JSONExternalSourceContactOBEntity();
            jSONExternalSourceContactOBEntity2.setKey(jSONExternalSourceContact.getKey());
            jSONExternalSourceContactOBEntity2.setExternalSourceId(jSONExternalSourceContact.getExternalSourceId());
        }
        jSONExternalSourceContactOBEntity2.setJsonDoc(stringWriter2);
        d2.a((a) jSONExternalSourceContactOBEntity2);
    }

    public static void a(List<JSONFBUserOrPage> list) {
        if (CollectionUtils.b(list)) {
            for (JSONFBUserOrPage jSONFBUserOrPage : list) {
                if (StringUtils.b((CharSequence) jSONFBUserOrPage.getPhone())) {
                    JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
                    jSONExternalSourceContact.setExternalSourceId(1011);
                    if (jSONFBUserOrPage != null) {
                        jSONExternalSourceContact.setIdentifier(jSONFBUserOrPage.getId());
                        Set<Phone> a2 = a(jSONFBUserOrPage);
                        if (CollectionUtils.b(a2)) {
                            ArrayList arrayList = new ArrayList();
                            for (Phone phone : a2) {
                                arrayList.add(new JSONPhoneNumber(phone));
                            }
                            jSONExternalSourceContact.setPhoneNumbers(arrayList);
                        }
                        jSONExternalSourceContact.setName(jSONFBUserOrPage.getName());
                        jSONExternalSourceContact.setFacebookID(new JSONSocialNetworkID(jSONFBUserOrPage.getId(), true));
                        JSONFBLocation locationObject = jSONFBUserOrPage.getLocationObject();
                        if (StringUtils.b((CharSequence) (locationObject != null ? StringUtils.e(", ", locationObject.getStreet(), locationObject.getCity(), locationObject.getState(), locationObject.getCountry(), locationObject.getZip()) : ""))) {
                            JSONAddress jSONAddress = new JSONAddress();
                            jSONAddress.setCity(locationObject.getCity());
                            jSONAddress.setCountry(locationObject.getCountry());
                            jSONAddress.setState(locationObject.getState());
                            jSONAddress.setStreet(locationObject.getStreet());
                            jSONExternalSourceContact.setAddresses(Collections.singletonList(jSONAddress));
                        }
                        jSONExternalSourceContact.setPriceRange(jSONFBUserOrPage.getTranslatedPriceRange());
                        jSONExternalSourceContact.setAvgRating(jSONFBUserOrPage.getAvgRating());
                        jSONExternalSourceContact.setType(2);
                        jSONExternalSourceContact.setOpeningHours(jSONFBUserOrPage.getOpeningHours());
                        jSONExternalSourceContact.setDescription(StringUtils.b((CharSequence) jSONFBUserOrPage.getDescription()) ? jSONFBUserOrPage.getDescription() : jSONFBUserOrPage.getAbout());
                        if (StringUtils.b((CharSequence) jSONFBUserOrPage.getWebsite())) {
                            jSONExternalSourceContact.setWebsites(Collections.singletonList(new JSONWebsite(jSONFBUserOrPage.getWebsite())));
                        }
                        HashSet hashSet = new HashSet();
                        if (StringUtils.b((CharSequence) jSONFBUserOrPage.getCategory()) && !"Local business".equalsIgnoreCase(jSONFBUserOrPage.getCategory())) {
                            hashSet.add(new JSONCategory(jSONFBUserOrPage.getCategory(), ""));
                        }
                        if (CollectionUtils.b(jSONFBUserOrPage.getCategoriesList())) {
                            for (JSONFBType jSONFBType : jSONFBUserOrPage.getCategoriesList()) {
                                if (StringUtils.b((CharSequence) jSONFBType.getName()) && !"Local business".equalsIgnoreCase(jSONFBType.getName())) {
                                    hashSet.add(new JSONCategory(jSONFBType.getName(), ""));
                                }
                            }
                        }
                        if (CollectionUtils.b(hashSet)) {
                            jSONExternalSourceContact.setCategories(new ArrayList(hashSet));
                        }
                    }
                    for (Phone phone2 : a(jSONFBUserOrPage)) {
                        jSONExternalSourceContact.setKey(phone2.a());
                        try {
                            a(jSONExternalSourceContact);
                        } catch (JsonMappingException | IOException e) {
                        }
                    }
                }
            }
        }
    }

    public static List<JSONExternalSourceContact> getExternalSourcesNumbers() {
        ArrayList arrayList;
        List c2 = CallAppApplication.get().getObjectBoxStore().d(JSONExternalSourceContactOBEntity.class).e().a().c();
        if (CollectionUtils.b(c2)) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = c2.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList2.add(Parser.a(((JSONExternalSourceContactOBEntity) it2.next()).getJsonDoc(), JSONExternalSourceContact.class));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }
}
