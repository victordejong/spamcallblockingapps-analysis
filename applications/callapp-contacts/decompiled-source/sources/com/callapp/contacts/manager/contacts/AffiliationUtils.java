package com.callapp.contacts.manager.contacts;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.RegexUtils;
import com.callapp.common.util.TldUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.mopub.common.Constants;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/AffiliationUtils.class */
public class AffiliationUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f15016a = {"facebook.com", "google.com", "twitter.com", "linkedin.com", "googleapis", "sync.me"};

    public static String a(ContactData contactData, Collection<String> collection) {
        int indexOf;
        boolean z;
        String fullName = contactData.getFullName();
        String str = null;
        String str2 = null;
        String lowerCase = StringUtils.b((CharSequence) fullName) ? PhoneNumberUtils.c(fullName).toLowerCase() : null;
        String str3 = "";
        Collection<JSONOrgData> organizations = contactData.getOrganizations();
        String str4 = str3;
        if (!organizations.isEmpty()) {
            Iterator<JSONOrgData> it2 = organizations.iterator();
            while (true) {
                str4 = str3;
                str = str2;
                if (!it2.hasNext()) {
                    break;
                }
                JSONOrgData next = it2.next();
                if (str2 == null) {
                    str2 = next.getFullOrgData();
                } else {
                    str2 = str2 + ", " + next.getFullOrgData();
                }
                str3 = str3 + PhoneNumberUtils.c(str2).toLowerCase();
            }
        }
        String str5 = str;
        if (!contactData.isBusiness()) {
            str5 = str;
            if (!collection.isEmpty()) {
                Iterator<String> it3 = collection.iterator();
                String str6 = str;
                while (true) {
                    str5 = str6;
                    if (!it3.hasNext()) {
                        break;
                    }
                    String host = Uri.parse(it3.next()).getHost();
                    if (StringUtils.b((CharSequence) host)) {
                        try {
                            String a2 = TldUtils.a(host);
                            if (!StringUtils.a((CharSequence) a2) && (indexOf = a2.indexOf(".")) > 0) {
                                String replace = StringUtils.a(a2.substring(0, indexOf), new char[0]).replace(VerificationLanguage.REGION_PREFIX, org.apache.commons.lang3.StringUtils.SPACE);
                                String lowerCase2 = RegexUtils.i(replace).toLowerCase();
                                if (str6 != null) {
                                    String[] split = lowerCase2.split(org.apache.commons.lang3.StringUtils.SPACE);
                                    int length = split.length;
                                    int i = 0;
                                    while (true) {
                                        if (i >= length) {
                                            z = true;
                                            break;
                                        }
                                        String str7 = split[i];
                                        if (str7.length() > 2) {
                                            if (!str4.contains(str7)) {
                                                if (StringUtils.b((CharSequence) lowerCase) && lowerCase.contains(str7)) {
                                                    z = false;
                                                    break;
                                                }
                                            } else {
                                                z = false;
                                                break;
                                            }
                                        }
                                        i++;
                                    }
                                    if (z) {
                                        str6 = str6 + ", " + replace;
                                        str4 = str4 + lowerCase2;
                                    }
                                } else if (lowerCase == null || !lowerCase.contains(lowerCase2)) {
                                    str4 = PhoneNumberUtils.c(replace).toLowerCase();
                                    str6 = replace;
                                }
                            }
                        } catch (IllegalArgumentException | IllegalStateException e) {
                            CLog.a(ContactUtils.class, e);
                        }
                    }
                }
            }
        }
        return str5;
    }

    public static Collection<String> a(ContactData contactData) {
        String scheme;
        HashSet hashSet = new HashSet(contactData.getWebsites());
        Set<JSONWebsite> b2 = b(contactData);
        if (b2 != null) {
            hashSet.addAll(b2);
        }
        Collection<JSONWebsite> emptyList = Collections.emptyList();
        if (!hashSet.isEmpty()) {
            Collection linkedHashSet = new LinkedHashSet();
            Iterator it2 = hashSet.iterator();
            while (true) {
                emptyList = linkedHashSet;
                if (!it2.hasNext()) {
                    break;
                }
                JSONWebsite jSONWebsite = (JSONWebsite) it2.next();
                String websiteUrl = jSONWebsite.getWebsiteUrl();
                if (StringUtils.b((CharSequence) websiteUrl) && ((scheme = Uri.parse(websiteUrl).getScheme()) == null || "http".equals(scheme) || Constants.HTTPS.equals(scheme))) {
                    String[] strArr = f15016a;
                    int length = strArr.length;
                    boolean z = false;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if (websiteUrl.contains(strArr[i])) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (!z) {
                        linkedHashSet.add(jSONWebsite);
                    }
                }
            }
        }
        if (emptyList.isEmpty()) {
            return Collections.emptySet();
        }
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        for (JSONWebsite jSONWebsite2 : emptyList) {
            String websiteUrl2 = jSONWebsite2.getWebsiteUrl();
            if (StringUtils.b((CharSequence) websiteUrl2) && !websiteUrl2.contains(JSONWebsite.YELP_SITE_INNER) && !websiteUrl2.contains(JSONWebsite.BINGLOCAL_SITE_INNER) && !websiteUrl2.contains(JSONWebsite.WHITEPAGES_SITE_INNER) && !websiteUrl2.contains(JSONWebsite.YOUTUBE_SITE_INNER) && !websiteUrl2.contains(JSONWebsite.GRAVATAR_SITE_INNER)) {
                String str = websiteUrl2;
                if (!websiteUrl2.startsWith("http://")) {
                    str = websiteUrl2;
                    if (!websiteUrl2.startsWith("https://")) {
                        str = "http://".concat(String.valueOf(websiteUrl2));
                    }
                }
                treeSet.add(str);
            }
        }
        return treeSet;
    }

    public static boolean a(final Context context, ContactData contactData) {
        Collection<String> a2 = a(contactData);
        boolean z = false;
        if (!a2.isEmpty()) {
            TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
            HashMap hashMap = new HashMap();
            TreeSet treeSet2 = a2;
            if (CollectionUtils.b(a2)) {
                treeSet2 = a2;
                if (a2.size() > 1) {
                    Iterator<String> it2 = a2.iterator();
                    while (true) {
                        String str = null;
                        if (!it2.hasNext()) {
                            break;
                        }
                        String next = it2.next();
                        if (StringUtils.b((CharSequence) next)) {
                            String str2 = next;
                            if (StringUtils.b((CharSequence) next)) {
                                str2 = next;
                                if (next.endsWith("/")) {
                                    str2 = next.substring(0, next.length() - 1);
                                }
                            }
                            if (str2.startsWith("http://www.")) {
                                str = "http://www.";
                            } else if (str2.startsWith("http://")) {
                                str = "http://";
                            }
                            if (str != null) {
                                String substring = str2.substring(str.length());
                                String str3 = (String) hashMap.get(substring);
                                if (str3 == null) {
                                    hashMap.put(substring, str);
                                } else if (!str3.equals(str) && !str3.contains(str)) {
                                    hashMap.put(substring, str);
                                }
                            } else {
                                hashMap.put(str2, "");
                            }
                        }
                    }
                    for (Map.Entry entry : hashMap.entrySet()) {
                        treeSet.add(((String) entry.getValue()) + ((String) entry.getKey()));
                    }
                    treeSet2 = treeSet;
                }
            }
            ArrayList arrayList = new ArrayList();
            int size = treeSet2.size();
            if (size > 1) {
                final String[] strArr = new String[size];
                int i = 0;
                for (String str4 : treeSet2) {
                    strArr[i] = str4;
                    arrayList.add(new AdapterText.ItemText(RegexUtils.b(str4), i));
                    i++;
                }
                final DialogList dialogList = new DialogList(Activities.a(2131886783, contactData.getFirstName()));
                AdapterText adapterText = new AdapterText(context, 2131558570, arrayList);
                adapterText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.contacts.AffiliationUtils.1
                    @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                    public final void onRowClicked(int i2) {
                        AndroidUtils.a((Activity) context);
                        Activities.c(context, strArr[i2]);
                        dialogList.dismiss();
                    }
                });
                dialogList.setAdapter(adapterText);
                PopupManager.get().a(context, dialogList);
            } else {
                String next2 = treeSet2.iterator().next();
                if (next2 != null) {
                    Activities.c(context, next2);
                }
            }
            z = true;
        }
        return z;
    }

    private static Set<JSONWebsite> b(ContactData contactData) {
        int indexOf;
        Map<JSONEmail, DataSource> emailsMap = contactData.getEmailsMap();
        HashSet hashSet = null;
        HashSet hashSet2 = null;
        if (!emailsMap.isEmpty()) {
            String[] stringArray = CallAppApplication.get().getResources().getStringArray(2130903048);
            Iterator<Map.Entry<JSONEmail, DataSource>> it2 = emailsMap.entrySet().iterator();
            while (true) {
                hashSet = hashSet2;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<JSONEmail, DataSource> next = it2.next();
                JSONEmail key = next.getKey();
                if (!(next.getValue() == DataSource.genome || key.getEmail() == null)) {
                    String lowerCase = key.getEmail().toLowerCase();
                    int length = stringArray.length;
                    boolean z = false;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        } else if (lowerCase.contains(stringArray[i])) {
                            z = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                    if (!z && (indexOf = lowerCase.indexOf("@")) != -1) {
                        HashSet hashSet3 = hashSet2;
                        if (hashSet2 == null) {
                            hashSet3 = new HashSet();
                        }
                        hashSet3.add(new JSONWebsite("http://www." + lowerCase.substring(indexOf + 1)));
                        hashSet2 = hashSet3;
                    }
                }
            }
        }
        return hashSet;
    }
}
