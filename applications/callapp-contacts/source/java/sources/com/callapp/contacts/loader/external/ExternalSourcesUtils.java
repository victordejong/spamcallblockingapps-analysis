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
import io.objectbox.C17944a;
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
    /* renamed from: a */
    public static JSONExternalSourceContact m28827a(GooglePlacesData googlePlacesData) {
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

    /* renamed from: a */
    public static JSONExternalSourceContact m28826a(HuaweiPlaceData huaweiPlaceData) {
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

    /* renamed from: a */
    private static Set<Phone> m28828a(JSONFBUserOrPage jSONFBUserOrPage) {
        String phone = jSONFBUserOrPage.getPhone();
        HashSet hashSet = new HashSet();
        if (StringUtils.m26045b((CharSequence) phone)) {
            Phone m28239a = PhoneManager.get().m28239a(phone);
            if (m28239a.isValidForSearch()) {
                hashSet.add(m28239a);
            } else {
                String[] split = phone.split("/");
                if (split.length > 1) {
                    for (String str : split) {
                        Phone m28239a2 = PhoneManager.get().m28239a(str);
                        if (m28239a2.isValidForSearch()) {
                            hashSet.add(m28239a2);
                        }
                    }
                }
                String[] split2 = phone.split(",");
                if (split2.length > 1) {
                    for (String str2 : split2) {
                        Phone m28239a3 = PhoneManager.get().m28239a(str2);
                        if (m28239a3.isValidForSearch()) {
                            hashSet.add(m28239a3);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static void m28830a() {
        CallAppApplication.get().getObjectBoxStore().m4727d(JSONExternalSourceContactOBEntity.class).m4701d();
    }

    /* renamed from: a */
    public static void m28829a(JSONExternalSourceContact jSONExternalSourceContact) throws IOException {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(JSONExternalSourceContactOBEntity.class);
        StringWriter stringWriter = new StringWriter();
        Serializer.getJSONObjectMapper().writeValue(stringWriter, jSONExternalSourceContact);
        String stringWriter2 = stringWriter.toString();
        JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity = (JSONExternalSourceContactOBEntity) m4727d.m4700e().m4611a(JSONExternalSourceContactOBEntity_.key, jSONExternalSourceContact.getKey()).m4613a(JSONExternalSourceContactOBEntity_.externalSourceId, jSONExternalSourceContact.getExternalSourceId()).m4618a().m4641a();
        JSONExternalSourceContactOBEntity jSONExternalSourceContactOBEntity2 = jSONExternalSourceContactOBEntity;
        if (jSONExternalSourceContactOBEntity == null) {
            jSONExternalSourceContactOBEntity2 = new JSONExternalSourceContactOBEntity();
            jSONExternalSourceContactOBEntity2.setKey(jSONExternalSourceContact.getKey());
            jSONExternalSourceContactOBEntity2.setExternalSourceId(jSONExternalSourceContact.getExternalSourceId());
        }
        jSONExternalSourceContactOBEntity2.setJsonDoc(stringWriter2);
        m4727d.m4711a((C17944a) jSONExternalSourceContactOBEntity2);
    }

    /* renamed from: a */
    public static void m28825a(List<JSONFBUserOrPage> list) {
        if (CollectionUtils.m26068b(list)) {
            for (JSONFBUserOrPage jSONFBUserOrPage : list) {
                if (StringUtils.m26045b((CharSequence) jSONFBUserOrPage.getPhone())) {
                    JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
                    jSONExternalSourceContact.setExternalSourceId(1011);
                    if (jSONFBUserOrPage != null) {
                        jSONExternalSourceContact.setIdentifier(jSONFBUserOrPage.getId());
                        Set<Phone> m28828a = m28828a(jSONFBUserOrPage);
                        if (CollectionUtils.m26068b(m28828a)) {
                            ArrayList arrayList = new ArrayList();
                            for (Phone phone : m28828a) {
                                arrayList.add(new JSONPhoneNumber(phone));
                            }
                            jSONExternalSourceContact.setPhoneNumbers(arrayList);
                        }
                        jSONExternalSourceContact.setName(jSONFBUserOrPage.getName());
                        jSONExternalSourceContact.setFacebookID(new JSONSocialNetworkID(jSONFBUserOrPage.getId(), true));
                        JSONFBLocation locationObject = jSONFBUserOrPage.getLocationObject();
                        if (StringUtils.m26045b((CharSequence) (locationObject != null ? StringUtils.m26029e(", ", locationObject.getStreet(), locationObject.getCity(), locationObject.getState(), locationObject.getCountry(), locationObject.getZip()) : ""))) {
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
                        jSONExternalSourceContact.setDescription(StringUtils.m26045b((CharSequence) jSONFBUserOrPage.getDescription()) ? jSONFBUserOrPage.getDescription() : jSONFBUserOrPage.getAbout());
                        if (StringUtils.m26045b((CharSequence) jSONFBUserOrPage.getWebsite())) {
                            jSONExternalSourceContact.setWebsites(Collections.singletonList(new JSONWebsite(jSONFBUserOrPage.getWebsite())));
                        }
                        HashSet hashSet = new HashSet();
                        if (StringUtils.m26045b((CharSequence) jSONFBUserOrPage.getCategory()) && !"Local business".equalsIgnoreCase(jSONFBUserOrPage.getCategory())) {
                            hashSet.add(new JSONCategory(jSONFBUserOrPage.getCategory(), ""));
                        }
                        if (CollectionUtils.m26068b(jSONFBUserOrPage.getCategoriesList())) {
                            for (JSONFBType jSONFBType : jSONFBUserOrPage.getCategoriesList()) {
                                if (StringUtils.m26045b((CharSequence) jSONFBType.getName()) && !"Local business".equalsIgnoreCase(jSONFBType.getName())) {
                                    hashSet.add(new JSONCategory(jSONFBType.getName(), ""));
                                }
                            }
                        }
                        if (CollectionUtils.m26068b(hashSet)) {
                            jSONExternalSourceContact.setCategories(new ArrayList(hashSet));
                        }
                    }
                    for (Phone phone2 : m28828a(jSONFBUserOrPage)) {
                        jSONExternalSourceContact.setKey(phone2.m26101a());
                        try {
                            m28829a(jSONExternalSourceContact);
                        } catch (JsonMappingException | IOException e) {
                        }
                    }
                }
            }
        }
    }

    public static List<JSONExternalSourceContact> getExternalSourcesNumbers() {
        ArrayList arrayList;
        List m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(JSONExternalSourceContactOBEntity.class).m4700e().m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = m4628c.iterator();
            while (true) {
                arrayList = arrayList2;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList2.add(Parser.m26915a(((JSONExternalSourceContactOBEntity) it2.next()).getJsonDoc(), JSONExternalSourceContact.class));
            }
        } else {
            arrayList = null;
        }
        return arrayList;
    }
}
