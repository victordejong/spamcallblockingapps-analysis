package com.callapp.contacts.util;

import android.util.Pair;
import com.callapp.common.api.ApiConstants;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.fragments.UserProfileHelper;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.http.HttpRequest;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.workers.SendSocialToGenomeWorker;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/UpdateUserProfileUtil.class */
public class UpdateUserProfileUtil {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder.class */
    public static class ProfileParamsBuilder {

        /* renamed from: a */
        public final ArrayList<Pair<String, String>> f27869a = new ArrayList<>();

        /* renamed from: b */
        public final ArrayList<Pair<String, Collection<String>>> f27870b = new ArrayList<>();

        /* renamed from: a */
        public final ProfileParamsBuilder m27349a(String str, String str2) {
            if (StringUtils.m26045b((CharSequence) str2)) {
                this.f27869a.add(new Pair<>(str, str2));
            }
            return this;
        }

        /* renamed from: a */
        public final void m27348a(String str, Collection<String> collection) {
            if (CollectionUtils.m26068b(collection)) {
                this.f27870b.add(new Pair<>(str, collection));
            }
        }
    }

    /* renamed from: a */
    public static HttpRequest m27363a() {
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "uup");
        httpRequest.m27002a("myp", Prefs.f26241aR.get());
        httpRequest.m27002a("tk", Prefs.f26245aV.get());
        httpRequest.m27002a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.m27002a("ispro", "1");
        return httpRequest;
    }

    /* renamed from: a */
    private static HttpRequest m27361a(HttpRequest httpRequest, RemoteAccountHelper remoteAccountHelper, List<Integer> list) {
        HttpRequest httpRequest2 = httpRequest;
        if (remoteAccountHelper.isLoggedIn()) {
            try {
                httpRequest2 = remoteAccountHelper.mo29106a(httpRequest);
            } catch (QuotaReachedException e) {
                CLog.m27609a(UpdateUserProfileUtil.class, e);
                list.add(Integer.valueOf(remoteAccountHelper.getApiConstantNetworkId()));
                httpRequest2 = httpRequest;
            } catch (Exception e2) {
                CLog.m27608a(UpdateUserProfileUtil.class, e2, "Error sending IDs");
                httpRequest2 = httpRequest;
            }
        }
        return httpRequest2;
    }

    /* renamed from: a */
    static /* synthetic */ void m27362a(HttpRequest httpRequest, Pair pair) {
        if (pair.first == null || !CollectionUtils.m26068b((Collection) pair.second)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (String str : (Collection) pair.second) {
            if (StringUtils.m26045b((CharSequence) str)) {
                sb.append(str);
                sb.append("#@#");
            }
        }
        String sb2 = sb.toString();
        if (!StringUtils.m26045b((CharSequence) sb2)) {
            return;
        }
        httpRequest.m27002a((String) pair.first, sb2);
    }

    /* renamed from: a */
    public static void m27360a(HttpRequest httpRequest, String str) {
        m27355b(httpRequest, new Pair("fbid", str));
    }

    /* renamed from: a */
    private static void m27359a(HttpRequest httpRequest, String str, String str2, String str3, String str4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("fn", str));
        arrayList.add(new Pair("ln", str2));
        arrayList.add(new Pair("email", str3));
        arrayList.add(new Pair("tl", str4));
        arrayList.add(new Pair("tk", Prefs.f26245aV.get()));
        m27353b(httpRequest, arrayList);
    }

    /* renamed from: a */
    public static void m27357a(int[] iArr) {
        if (iArr != null) {
            if (!HttpUtils.m26985a()) {
                SendSocialToGenomeWorker.f29639a.m26117a(iArr);
                return;
            }
            LinkedList<Integer> linkedList = new LinkedList();
            UserProfileHelper userProfileHelper = new UserProfileHelper();
            userProfileHelper.m30255a();
            HttpRequest m27363a = m27363a();
            int length = iArr.length;
            int i = 0;
            while (i < length) {
                RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(Integer.valueOf(iArr[i]).intValue());
                HttpRequest httpRequest = m27363a;
                if (remoteAccountHelper != null) {
                    httpRequest = m27361a(m27363a, remoteAccountHelper, linkedList);
                }
                i++;
                m27363a = httpRequest;
            }
            m27359a(m27363a, userProfileHelper.getFirstName(), userProfileHelper.getLastName(), userProfileHelper.getEmail(), userProfileHelper.getBio());
            m27363a.m27004a(10000);
            int size = linkedList.size();
            int[] iArr2 = new int[size];
            if (size <= 0) {
                return;
            }
            int i2 = 0;
            for (Integer num : linkedList) {
                iArr2[i2] = num.intValue();
                i2++;
            }
            SendSocialToGenomeWorker.f29639a.m26117a(iArr2);
        }
    }

    /* renamed from: b */
    public static void m27356b() {
        int[] iArr = new int[ApiConstants.f19116c.length];
        Integer[] numArr = ApiConstants.f19116c;
        int length = numArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            iArr[i2] = numArr[i].intValue();
            i++;
            i2++;
        }
        m27357a(iArr);
    }

    /* renamed from: b */
    private static void m27355b(HttpRequest httpRequest, Pair<String, String> pair) {
        if (pair.first == null || pair.second == null) {
            return;
        }
        httpRequest.m27002a((String) pair.first, (String) pair.second);
    }

    /* renamed from: b */
    public static void m27354b(HttpRequest httpRequest, String str) {
        m27355b(httpRequest, new Pair("twtscrname", str));
    }

    /* renamed from: b */
    public static void m27353b(HttpRequest httpRequest, List<Pair<String, String>> list) {
        for (Pair<String, String> pair : list) {
            m27355b(httpRequest, pair);
        }
    }

    /* renamed from: c */
    public static void m27352c(HttpRequest httpRequest, String str) {
        m27355b(httpRequest, new Pair("gpid", str));
    }

    /* renamed from: d */
    public static void m27351d(HttpRequest httpRequest, String str) {
        m27355b(httpRequest, new Pair("vkid", str));
    }
}
