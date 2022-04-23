package com.mopub.mobileads;

import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    Document f34409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<f> a() {
        ArrayList arrayList = new ArrayList();
        Document document = this.f34409a;
        if (document == null) {
            return arrayList;
        }
        NodeList elementsByTagName = document.getElementsByTagName(Constants.AD);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new f(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final VastTracker b() {
        Document document = this.f34409a;
        if (document == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(document, "Error");
        if (TextUtils.isEmpty(firstMatchingStringData)) {
            return null;
        }
        return new VastTracker.Builder(firstMatchingStringData).build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<VastTracker> c() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f34409a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f34409a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String e() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f34409a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String f() {
        return XmlUtils.getFirstMatchingStringData(this.f34409a, "MoPubCloseIcon");
    }
}
