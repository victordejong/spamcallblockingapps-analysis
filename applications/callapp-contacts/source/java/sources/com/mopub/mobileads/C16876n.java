package com.mopub.mobileads;

import android.text.TextUtils;
import com.callapp.contacts.model.Constants;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.util.XmlUtils;
import java.util.ArrayList;
import java.util.List;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
/* renamed from: com.mopub.mobileads.n */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/n.class */
final class C16876n {

    /* renamed from: a */
    Document f59709a;

    /* renamed from: a */
    public final List<C16864f> m6321a() {
        ArrayList arrayList = new ArrayList();
        Document document = this.f59709a;
        if (document == null) {
            return arrayList;
        }
        NodeList elementsByTagName = document.getElementsByTagName(Constants.f26733AD);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            arrayList.add(new C16864f(elementsByTagName.item(i)));
        }
        return arrayList;
    }

    /* renamed from: b */
    public final VastTracker m6320b() {
        Document document = this.f59709a;
        if (document == null) {
            return null;
        }
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(document, "Error");
        if (!TextUtils.isEmpty(firstMatchingStringData)) {
            return new VastTracker.Builder(firstMatchingStringData).build();
        }
        return null;
    }

    /* renamed from: c */
    public final List<VastTracker> m6319c() {
        List<String> stringDataAsList = XmlUtils.getStringDataAsList(this.f59709a, "MP_TRACKING_URL");
        ArrayList arrayList = new ArrayList(stringDataAsList.size());
        for (String str : stringDataAsList) {
            arrayList.add(new VastTracker.Builder(str).build());
        }
        return arrayList;
    }

    /* renamed from: d */
    public final String m6318d() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f59709a, "MoPubCtaText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 15) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: e */
    public final String m6317e() {
        String firstMatchingStringData = XmlUtils.getFirstMatchingStringData(this.f59709a, "MoPubSkipText");
        if (firstMatchingStringData == null || firstMatchingStringData.length() > 8) {
            return null;
        }
        return firstMatchingStringData;
    }

    /* renamed from: f */
    public final String m6316f() {
        return XmlUtils.getFirstMatchingStringData(this.f59709a, "MoPubCloseIcon");
    }
}
