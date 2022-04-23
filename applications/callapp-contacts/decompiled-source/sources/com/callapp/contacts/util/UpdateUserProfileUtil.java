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

        /* renamed from: a  reason: collision with root package name */
        public final ArrayList<Pair<String, String>> f15966a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<Pair<String, Collection<String>>> f15967b = new ArrayList<>();

        public final ProfileParamsBuilder a(String str, String str2) {
            if (StringUtils.b((CharSequence) str2)) {
                this.f15966a.add(new Pair<>(str, str2));
            }
            return this;
        }

        public final void a(String str, Collection<String> collection) {
            if (CollectionUtils.b(collection)) {
                this.f15967b.add(new Pair<>(str, collection));
            }
        }
    }

    public static HttpRequest a() {
        HttpRequest httpRequest = new HttpRequest(HttpUtils.getCallappServerPrefix() + "uup");
        httpRequest.a("myp", Prefs.aR.get());
        httpRequest.a("tk", Prefs.aV.get());
        httpRequest.a("cvc", String.valueOf(CallAppApplication.get().getVersionCode()));
        httpRequest.a("ispro", "1");
        return httpRequest;
    }

    private static HttpRequest a(HttpRequest httpRequest, RemoteAccountHelper remoteAccountHelper, List<Integer> list) {
        HttpRequest httpRequest2 = httpRequest;
        if (remoteAccountHelper.isLoggedIn()) {
            try {
                httpRequest2 = remoteAccountHelper.a(httpRequest);
            } catch (QuotaReachedException e) {
                CLog.a(UpdateUserProfileUtil.class, e);
                list.add(Integer.valueOf(remoteAccountHelper.getApiConstantNetworkId()));
                httpRequest2 = httpRequest;
            } catch (Exception e2) {
                CLog.a(UpdateUserProfileUtil.class, e2, "Error sending IDs");
                httpRequest2 = httpRequest;
            }
        }
        return httpRequest2;
    }

    static /* synthetic */ void a(HttpRequest httpRequest, Pair pair) {
        if (pair.first != null && CollectionUtils.b((Collection) pair.second)) {
            StringBuilder sb = new StringBuilder();
            for (String str : (Collection) pair.second) {
                if (StringUtils.b((CharSequence) str)) {
                    sb.append(str);
                    sb.append("#@#");
                }
            }
            String sb2 = sb.toString();
            if (StringUtils.b((CharSequence) sb2)) {
                httpRequest.a((String) pair.first, sb2);
            }
        }
    }

    public static void a(HttpRequest httpRequest, String str) {
        b(httpRequest, new Pair("fbid", str));
    }

    private static void a(HttpRequest httpRequest, String str, String str2, String str3, String str4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("fn", str));
        arrayList.add(new Pair("ln", str2));
        arrayList.add(new Pair("email", str3));
        arrayList.add(new Pair("tl", str4));
        arrayList.add(new Pair("tk", Prefs.aV.get()));
        b(httpRequest, arrayList);
    }

    public static void a(int[] iArr) {
        if (iArr == null) {
            return;
        }
        if (HttpUtils.a()) {
            LinkedList<Integer> linkedList = new LinkedList();
            UserProfileHelper userProfileHelper = new UserProfileHelper();
            userProfileHelper.a();
            HttpRequest a2 = a();
            int i = 0;
            for (int i2 : iArr) {
                RemoteAccountHelper remoteAccountHelper = Singletons.get().getRemoteAccountHelper(Integer.valueOf(i2).intValue());
                a2 = a2;
                if (remoteAccountHelper != null) {
                    a2 = a(a2, remoteAccountHelper, linkedList);
                }
            }
            a(a2, userProfileHelper.getFirstName(), userProfileHelper.getLastName(), userProfileHelper.getEmail(), userProfileHelper.getBio());
            a2.a(10000);
            int size = linkedList.size();
            int[] iArr2 = new int[size];
            if (size > 0) {
                for (Integer num : linkedList) {
                    iArr2[i] = num.intValue();
                    i++;
                }
                SendSocialToGenomeWorker.f17082a.a(iArr2);
                return;
            }
            return;
        }
        SendSocialToGenomeWorker.f17082a.a(iArr);
    }

    public static void b() {
        int[] iArr = new int[ApiConstants.f10379c.length];
        Integer[] numArr = ApiConstants.f10379c;
        int length = numArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            iArr[i2] = numArr[i].intValue();
            i++;
            i2++;
        }
        a(iArr);
    }

    private static void b(HttpRequest httpRequest, Pair<String, String> pair) {
        if (pair.first != null && pair.second != null) {
            httpRequest.a((String) pair.first, (String) pair.second);
        }
    }

    public static void b(HttpRequest httpRequest, String str) {
        b(httpRequest, new Pair("twtscrname", str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(HttpRequest httpRequest, List<Pair<String, String>> list) {
        for (Pair<String, String> pair : list) {
            b(httpRequest, pair);
        }
    }

    public static void c(HttpRequest httpRequest, String str) {
        b(httpRequest, new Pair("gpid", str));
    }

    public static void d(HttpRequest httpRequest, String str) {
        b(httpRequest, new Pair("vkid", str));
    }
}
